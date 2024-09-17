Algoritmo "FUNCIONARIOS"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Marcelo Akira
// Descrição   : Atividade para entregar
// Autor(a)    : Ana Espejo
// Data atual  : 17/09/2024
Tipo
  TFuncionario = registro
  	nome: caractere
    endereco: caractere
    cpf: caractere
    rg: caractere
    filiacao: caractere
    dependentes: caractere
    cargo: caractere
    setor: caractere
    idade: inteiro
    observacao: caractere
  fimregistro

Var
  funcionarios: vetor[1..100] de TFuncionario
  opcao, consulta: caractere
  contador, i, numero_funcionarios: inteiro
  encontrado: logico
  funcionario: TFuncionario
  
Inicio
  numero_funcionarios <- 0;
  escreval("Programa Quadro de Funcionários")
  escreval("Permite cadastro, consulta, exclusão e edição.")

  repita
    escreval("================================================================")
    escreval("Menu")
    escreval("1 - Cadastrar Funcionário")
    escreval("2 - Consultar Funcionário")
    escreval("3 - Deletar Funcionário")
    escreval("4 - Editar Funcionário")
    escreval("Digite o número da opção ou 'sair' para encerrar a aplicação:")
    leia(opcao)
    escreval("================================================================")

    escolha opcao
      caso "1"
        escreval(">> Cadastrar Funcionário")
        numero_funcionarios <- numero_funcionarios + 1;
        
        escreva("Nome: ")
        leia(funcionarios[numero_funcionarios].nome)

        escreva("Endereço: ")
        leia(funcionarios[numero_funcionarios].endereco)

        escreva("CPF: ")
        leia(funcionarios[numero_funcionarios].cpf)

        escreva("RG: ")
        leia(funcionarios[numero_funcionarios].rg)

        escreva("Filiação: ")
        leia(funcionarios[numero_funcionarios].filiacao)

        escreva("Dependentes: ")
        leia(funcionarios[numero_funcionarios].dependentes)

        escreva("Cargo: ")
        leia(funcionarios[numero_funcionarios].cargo)

        escreva("Setor: ")
        leia(funcionarios[numero_funcionarios].setor)

        escreva("Idade: ")
        leia(funcionarios[numero_funcionarios].idade)

        escreva("Observação: ")
        leia(funcionarios[numero_funcionarios].observacao)

        escreval("Cadastro concluído!")

      caso "2"
        escreval(">> Consultar Funcionário")
        escreval("Informe nome, cpf, cargo ou setor: ")
        leia(consulta)

        encontrado <- falso
        
        se (numero_funcionarios = 0) entao
          escreval("Nenhum funcionário cadastrado.")
        senao
          para contador de 1 ate numero_funcionarios faca
            se(consulta = funcionarios[contador].nome) ou (consulta = funcionarios[contador].cpf) ou (consulta = funcionarios[contador].cargo) ou (consulta = funcionarios[contador].setor) entao
              encontrado <- verdadeiro

              escreval("")
              escreval("Dados ", funcionarios[contador].nome)
              escreval("Endereço: ", funcionarios[contador].endereco)
              escreval("CPF: ", funcionarios[contador].cpf)
              escreval("RG: ", funcionarios[contador].rg)
              escreval("Filiação: ", funcionarios[contador].filiacao)
              escreval("Dependentes: ", funcionarios[contador].dependentes)
              escreval("Cargo: ", funcionarios[contador].cargo)
              escreval("Setor: ", funcionarios[contador].setor)
              escreval("Idade: ", funcionarios[contador].idade)
              escreval("Observação: ", funcionarios[contador].observacao)
            fimse
          fimpara

        	se (encontrado = falso) entao
            escreval("Funcionário não encontrado.")
        	fimse
    		fimse

      caso "3"
    		escreval(">> Excluir Funcionário")
    		escreval("Informe nome ou cpf para concluir a exclusão: ")
    		leia(consulta)

    		encontrado <- falso

    		se (numero_funcionarios = 0) entao
        	escreval("Nenhum funcionário cadastrado.")
    		senao
        	para contador de 1 ate numero_funcionarios faca
          	se(consulta = funcionarios[contador].nome) ou (consulta = funcionarios[contador].cpf) entao
              encontrado <- verdadeiro
              
							para i de contador ate numero_funcionarios - 1 faca
              	funcionarios[i] <- funcionarios[i + 1]
              fimpara

              numero_funcionarios <- numero_funcionarios - 1
              escreval("Funcionário excluído com sucesso!")
              interrompa
            fimse
        	fimpara

	        se (encontrado = falso) entao
            escreval("Funcionário não encontrado.")
  	      fimse
    		fimse

			caso "4"
				escreval(">> Editar Funcionário")
				escreval("Informe nome ou cpf para iniciar a edição: ")
				leia(consulta)

				encontrado <- falso

				se (numero_funcionarios = 0) entao
					escreval("Nenhum funcionário cadastrado.")
				senao
				
					para contador de 1 ate numero_funcionarios faca
						se(consulta = funcionarios[contador].nome) ou (consulta = funcionarios[contador].cpf) entao
							encontrado <- verdadeiro

							escreval("")
							escreval("Pressione Enter para manter o valor atual.")
							escreval("")

							escreval("Nome atual: ", funcionarios[contador].nome)
							escreva("Novo nome: ")
							leia(funcionario.nome)
							se (funcionario.nome <> "") entao
								funcionarios[contador].nome <- funcionario.nome
							fimse

							escreval("")
							escreval("Endereço atual: ", funcionarios[contador].endereco)
							escreva("Novo endereço: ")
							leia(funcionario.endereco)
							se (funcionario.endereco <> "") entao
								funcionarios[contador].endereco <- funcionario.endereco
							fimse

							escreval("")
							escreval("CPF atual: ", funcionarios[contador].cpf)
							escreva("Novo CPF: ")
							leia(funcionario.cpf)
							se (funcionario.cpf <> "") entao
								funcionarios[contador].cpf <- funcionario.cpf
							fimse

							escreval("")
							escreval("RG atual: ", funcionarios[contador].rg)
							escreva("Novo RG: ")
							leia(funcionario.rg)
							se (funcionario.rg <> "") entao
								funcionarios[contador].rg <- funcionario.rg
							fimse

							escreval("")
							escreval("Filiação atual: ", funcionarios[contador].filiacao)
							escreva("Nova filiação: ")
							leia(funcionario.filiacao)
							se (funcionario.filiacao <> "") entao
								funcionarios[contador].filiacao <- funcionario.filiacao
							fimse

							escreval("")
							escreval("Dependentes atuais: ", funcionarios[contador].dependentes)
							escreva("Novos dependentes: ")
							leia(funcionario.dependentes)
							se (funcionario.dependentes <> "") entao
								funcionarios[contador].dependentes <- funcionario.dependentes
							fimse

							escreval("")
							escreval("Cargo atual: ", funcionarios[contador].cargo)
							escreva("Novo cargo: ")
							leia(funcionario.cargo)
							se (funcionario.cargo <> "") entao
								funcionarios[contador].cargo <- funcionario.cargo
							fimse

							escreval("")
							escreval("Setor atual: ", funcionarios[contador].setor)
							escreva("Novo setor: ")
							leia(funcionario.setor)
							se (funcionario.setor <> "") entao
								funcionarios[contador].setor <- funcionario.setor
							fimse

							escreval("")
							escreval("Idade atual: ", funcionarios[contador].idade)
							escreva("Nova idade: ")
							leia(funcionario.idade)
							se (funcionario.idade <> 0) entao
								funcionarios[contador].idade <- funcionario.idade
							fimse

							escreval("")
							escreval("Observação atual: ", funcionarios[contador].observacao)
							escreva("Nova observação: ")
							leia(funcionario.observacao)
							se (funcionario.observacao <> "") entao
								funcionarios[contador].observacao <- funcionario.observacao
							fimse

							escreval("Edição concluída com sucesso!")
							interrompa
						fimse
					fimpara

					se (encontrado = falso) entao
						escreval("Funcionário não encontrado.")
					fimse
				fimse

      outrocaso
        escreval("Opção inválida!")
    fimescolha
  ate(opcao = "sair") ou (opcao = "SAIR")
    escreva("Você saiu da aplicação.")
Fimalgoritmo
