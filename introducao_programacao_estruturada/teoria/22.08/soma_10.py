# Um programa que calcule a soma de 10 números

print("\nPrograma que calcula a soma de 10 números inteiros.\n")

contador: int = 1
soma: int = 0

while True:
  numero = int(input(f"Informe o {contador}° número: "))
  
  if (contador == 10):
    soma += numero
    print(f"Soma dos números digitados: {soma}")
    break
  
  soma += numero
  
  print(soma)
  contador += 1
  