# 11 – Faça um programa solicite o preço de uma mercadoria e o percentual de 
# desconto. Exiba o valor do desconto e o preço a pagar.

print("Programa que calcula o desconto de uma mercadoria.\n")

preco_original = float(input("Informe o preço da mercadoria: R$ "))
percentual_desconto = float(input("Informe o percentual de desconto(%): "))

desconto = float(preco_original * (percentual_desconto / 100))
preco_final = preco_original - desconto

print(f"\nValor do desconto: R$ {desconto:.2f}")
print(f"Valor da mercadoria com desconto: R$ {preco_final:.2f}")
