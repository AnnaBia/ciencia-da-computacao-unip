# 10 – Faça um programa que calcule o aumento de um salário. Ele deve solicitar 
# o valor do salário e a porcentagem do aumento. Exiba o valor do aumento e do 
# novo salário. 

print("Programa que calcula o aumento de um salário.\n")

salario = float(input("Informe o salário: R$ "))
aumento = float(input("Informe o percentual de aumento(%): "))

novo_salario = salario + (salario * (aumento / 100))

print(f"Salário c/ aumento: R$ {novo_salario:.2f}")
