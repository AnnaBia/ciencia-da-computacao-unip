# 14 – Escreva um programa que pergunte a quantidade de km percorridos por um 
# carro alugado pelo usuário, assim como a quantidade de dias pelos quais o carro 
# foi alugado. Calcule o preço a pagar, sabendo que o carro custa R$ 60 por dia e 
# R$ 0,15 por km rodado.

print("Programa que calcula o preço a pagar de um aluguel de carro.")
print("Sendo R$ 60,00 por dia + R$ 0,15 por km rodado")
distancia_percorrida = float(input("\nInforme o total de km percorridos: "))
total_dias = float(input("Informe o total de dias: "))

valor_aluguel = (total_dias * 60) + (distancia_percorrida * 0.15)

print(f"Valor do aluguel: R$ {valor_aluguel:.2f}")
