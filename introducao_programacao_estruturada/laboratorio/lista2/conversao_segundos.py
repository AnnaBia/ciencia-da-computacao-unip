# 09 – Escreva um programa que leia a quantidade de dias, horas, minutos e 
# segundos do usuário. Calcule o total em segundos.

print("Programa que calcula o tempo em segundos.\n")

dias = int(input("Informe o número de dias: "))
horas = int(input("Informe o número de horas: "))
minutos = int(input("Informe o número de minutos: "))
segundos = int(input("Informe o número de segundos: "))

total_segundos = (dias * 24 * 60 * 60) + (horas * 60 * 60) + (minutos * 60) + segundos

print(f"\nTotal em segundos: {total_segundos}")
