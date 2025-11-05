CREATE DATABASE locadora;
USE locadora;

-- Tables
CREATE TABLE veiculos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  placa VARCHAR(20) NOT NULL UNIQUE,
  marca VARCHAR(50),
  modelo VARCHAR(50),
  ano YEAR,
  tarifa_diaria DECIMAL(10,2) NOT NULL,
  status ENUM('disponivel','locado') NOT NULL DEFAULT 'disponivel'
);

CREATE TABLE clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  documento VARCHAR(40) NOT NULL UNIQUE,
  telefone VARCHAR(40)
);

CREATE TABLE locacoes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  veiculo_id INT NOT NULL,
  cliente_id INT NOT NULL,
  data_inicio DATETIME NOT NULL,
  data_fim_prevista DATETIME NOT NULL,
  data_fim_real DATETIME DEFAULT NULL,
  tarifa_diaria_no_momento DECIMAL(10,2) NOT NULL,
  status ENUM('ativa','finalizada','cancelada') NOT NULL DEFAULT 'ativa',
  valor_total DECIMAL(12,2) DEFAULT NULL,
  CONSTRAINT fk_loc_veiculo FOREIGN KEY (veiculo_id) REFERENCES veiculos(id),
  CONSTRAINT fk_loc_cliente FOREIGN KEY (cliente_id) REFERENCES clientes(id),
  CONSTRAINT chk_datas_locacao CHECK (data_fim_prevista >= data_inicio)
);

CREATE TABLE pagamentos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  locacao_id INT NOT NULL,
  valor DECIMAL(12,2) NOT NULL,
  data_pagamento DATETIME DEFAULT CURRENT_TIMESTAMP,
  metodo ENUM('dinheiro','cartao','pix','outro') DEFAULT 'outro',
  CONSTRAINT fk_pag_locacao FOREIGN KEY (locacao_id) REFERENCES locacoes(id) ON DELETE CASCADE
);

-- Views
CREATE VIEW vw_veiculos_disponiveis AS
SELECT v.id, v.placa, v.marca, v.modelo, v.ano, v.tarifa_diaria
FROM veiculos v
LEFT JOIN locacoes l ON v.id = l.veiculo_id AND l.status = 'ativa'
WHERE v.status = 'disponivel' AND l.id IS NULL;

CREATE VIEW vw_historico_locacoes AS
SELECT l.id AS locacao_id, c.nome AS cliente, v.placa, l.data_inicio, l.data_fim_prevista, l.data_fim_real, l.valor_total, l.status
FROM locacoes l
JOIN clientes c ON c.id = l.cliente_id
JOIN veiculos v ON v.id = l.veiculo_id;

-- SHOW TABLES;

-- Função: calcula valor por dias inteiros
DELIMITER $$
CREATE FUNCTION fn_calcula_valor(p_tarifa DECIMAL(10,2), p_inicio DATETIME, p_fim DATETIME)
RETURNS DECIMAL(12,2)
DETERMINISTIC
BEGIN
  DECLARE v_dias INT;
  SET v_dias = GREATEST(1, DATEDIFF(DATE(p_fim), DATE(p_inicio)) + 1);
  RETURN ROUND(v_dias * p_tarifa, 2);
END$$
DELIMITER ;

-- Trigger: após inserir locação, marca veículo como locado
DELIMITER $$
CREATE TRIGGER trg_locacao_insert AFTER INSERT ON locacoes
FOR EACH ROW
BEGIN
  UPDATE veiculos SET status = 'locado' WHERE id = NEW.veiculo_id;
END$$
DELIMITER ;

-- Trigger: após atualizar locação para finalizada, marca veículo como disponivel
DELIMITER $$
CREATE TRIGGER trg_locacao_update AFTER UPDATE ON locacoes
FOR EACH ROW
BEGIN
  IF OLD.status <> NEW.status AND NEW.status = 'finalizada' THEN
    UPDATE veiculos SET status = 'disponivel' WHERE id = NEW.veiculo_id;
  END IF;
END$$
DELIMITER ;

-- SHOW TRIGGERS FROM locadora;

-- Procedure: criar locação (checa disponibilidade)
DELIMITER $$
CREATE PROCEDURE sp_criar_locacao (
  IN p_veiculo_id INT,
  IN p_cliente_id INT,
  IN p_inicio DATETIME,
  IN p_fim_previsto DATETIME,
  OUT p_locacao_id INT
)
BEGIN
  DECLARE v_status VARCHAR(20);
  DECLARE v_conflitos INT DEFAULT 0;
  DECLARE v_tarifa DECIMAL(10,2);

  SELECT status INTO v_status FROM veiculos WHERE id = p_veiculo_id;
  IF v_status IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Veiculo nao encontrado';
  END IF;
  IF v_status <> 'disponivel' THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Veiculo nao disponivel';
  END IF;

  SELECT COUNT(*) INTO v_conflitos
  FROM locacoes
  WHERE veiculo_id = p_veiculo_id
    AND status = 'ativa'
    AND NOT (p_fim_previsto < data_inicio OR p_inicio > data_fim_prevista);

  IF v_conflitos > 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Conflito: veiculo com locacao ativa';
  END IF;

  SELECT tarifa_diaria INTO v_tarifa FROM veiculos WHERE id = p_veiculo_id;

  INSERT INTO locacoes (veiculo_id, cliente_id, data_inicio, data_fim_prevista, tarifa_diaria_no_momento, status)
  VALUES (p_veiculo_id, p_cliente_id, p_inicio, p_fim_previsto, v_tarifa, 'ativa');

  SET p_locacao_id = LAST_INSERT_ID();
END$$
DELIMITER ;

-- Procedure: finalizar locação (calcula total)
DELIMITER $$
CREATE PROCEDURE sp_finalizar_locacao (
  IN p_locacao_id INT,
  IN p_data_fim_real DATETIME,
  IN p_cobrancas_extra DECIMAL(10,2)
)
BEGIN
  DECLARE v_tarifa DECIMAL(10,2);
  DECLARE v_inicio DATETIME;
  DECLARE v_previsto DATETIME;
  DECLARE v_status ENUM('ativa','finalizada','cancelada');
  DECLARE v_total DECIMAL(12,2);
  DECLARE v_dias INT;
  DECLARE v_dias_atraso INT DEFAULT 0;
  DECLARE v_multa DECIMAL(12,2) DEFAULT 0.00;

  SELECT tarifa_diaria_no_momento, data_inicio, data_fim_prevista, status
    INTO v_tarifa, v_inicio, v_previsto, v_status
  FROM locacoes WHERE id = p_locacao_id;

  IF v_status IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Locacao nao encontrada';
  END IF;
  IF v_status <> 'ativa' THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Locacao nao esta ativa';
  END IF;

  SET v_dias = GREATEST(1, DATEDIFF(DATE(p_data_fim_real), DATE(v_inicio)) + 1);
  SET v_total = ROUND(v_dias * v_tarifa, 2);

  IF p_data_fim_real > v_previsto THEN
    SET v_dias_atraso = DATEDIFF(DATE(p_data_fim_real), DATE(v_previsto));
    SET v_multa = ROUND(v_dias_atraso * (v_tarifa * 0.20), 2);
  END IF;

  SET v_total = v_total + IFNULL(p_cobrancas_extra,0) + v_multa;

  UPDATE locacoes
  SET data_fim_real = p_data_fim_real,
      valor_total = v_total,
      status = 'finalizada'
  WHERE id = p_locacao_id;
END$$
DELIMITER ;

-- Dados de exemplo
INSERT INTO veiculos (placa, marca, modelo, ano, tarifa_diaria) VALUES
('ABC1234','Toyota','Corolla',2019,150.00),
('DEF5678','VW','Gol',2018,100.00);

INSERT INTO clientes (nome, documento, telefone) VALUES
('Joao Silva','11111111111','+55 11 99999-0001'),
('Maria Souza','22222222222','+55 11 99999-0002');

-- SELECT * FROM vw_veiculos_disponiveis;
-- SELECT * FROM vw_historico_locacoes;

-- Exemplo de uso
-- CALL sp_criar_locacao(1, 1, '2025-11-10 09:00:00', '2025-11-12 18:00:00', @loc_id);

-- SELECT @loc_id;
-- CALL sp_finalizar_locacao(@loc_id, '2025-11-12 17:00:00', 0.00);

-- SELECT * FROM vw_veiculos_disponiveis;
-- SELECT * FROM vw_historico_locacoes;