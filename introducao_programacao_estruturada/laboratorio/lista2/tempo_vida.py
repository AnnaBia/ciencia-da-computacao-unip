# 15 – Escreva um programa para calcular a redução do tempo de vida de um fumante.
# Pergunte a quantidade de cigarros fumados por dia e quantos anos ela já fumou. 
# Considere que um fumante perde 10 minutos de vida a cada cigarro e calcule 
# quantos dias de vida um fumante perderá. Exiba o total em dias. 

print("Programa que calcula o tempo de vida de um fumante.\n")

qtdd_cigarros = int(input("Quantos cigarros a pessoa fuma por dia? "))
qtdd_anos = int(input("Há quantos anos essa pessoa fuma? "))

perda_por_cigarro = qtdd_cigarros * 10

cigarros_por_ano = qtdd_cigarros * 365
total_cigarros = cigarros_por_ano * qtdd_anos

perda_total_minutos = total_cigarros * perda_por_cigarro
perda_total_dias = perda_total_minutos / (60 * 24)

print(f"Total de dias de vida que essa pessoa perdeu: {perda_total_dias:.2f} dias")
