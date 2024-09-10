# 04 – Escreva uma expressão para determinar se uma pessoa deve ou não pagar 
# imposto. Considere que pagam imposto pessoas cujo salário é maior que 
# R$ 1.200,00.

print("Programa que determina se uma pessoa deve pagar imposto quando salário ultrapassar R$ 1200,00.")

salario = float(input("Informe o salário: R$ "))

if (salario > 1200):
  print("Deve pagar imposto")