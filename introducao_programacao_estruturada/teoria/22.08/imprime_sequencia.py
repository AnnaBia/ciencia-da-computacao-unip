# Programa no qual o usuário informa o último número a ser impresso. O programa
# imprime do número 1 até o próximo informado

print("\nPrograma que imprime sequência de números inteiros.\n")

valor_inicial: int = 1

fim = (int(input("Informe o último número a ser impresso: ")))

while valor_inicial <= fim:
  print(valor_inicial)
  valor_inicial += 1
  