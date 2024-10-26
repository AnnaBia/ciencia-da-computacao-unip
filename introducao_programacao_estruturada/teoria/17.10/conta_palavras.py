# Exercício 5: Contar palavras em uma string
# Escreva uma função que conta o número de palavras em uma string. Considere que 
# palavras são separadas por espaços. 

print(">>>> Programa conta palavras em uma string")
frase = input("Informe a frase: ")

def conta_palavras(frase):
  palavras = frase.split()
  return len(palavras)

print(f"{conta_palavras(frase)} palavras")
