# Digite um programa para ler valores e somar até digitar 0

print("\nPrograma para ler e somar números.\n")

soma: int = 0

while True:
  numero = int(input("Informe um número inteiro ou digite 0 para sair:"))
  
  if numero == 0:
    break
  
  soma += numero
  print(f"Soma: {soma}")
  