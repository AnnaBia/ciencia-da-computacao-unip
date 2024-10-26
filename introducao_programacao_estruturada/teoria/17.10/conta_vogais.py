# Exercicio 1: Contar vogais em uma string
# Escreva uma função que recebe uma string e retorna o número de vogais nela.

print(">>>> Programa conta vogais em uma palavra")
palavra = input("Informe a palavra: ")

def conta_vogais(palavra):
  vogais = 'aeiouAEIOUâãêéîíôóûú'
  contador = 0
  
  for caractere in palavra:
    if caractere in vogais:
      contador += 1
      
  return contador

print(f"{conta_vogais(palavra)} vogais")
