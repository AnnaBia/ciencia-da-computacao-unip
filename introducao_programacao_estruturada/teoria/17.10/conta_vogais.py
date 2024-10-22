# Exercicio 1: Contar vogais em uma string
# Escreva uma função que recebe uma string e retorna o número de vogais nela.

print(">>>> Programa conta vogais em uma palavra")
palavra = input("Informe a palavra: ")

def conta_vogais(string):
  vogais = 'aeiouAEIOUâãêéîíôóûú'
  contador = 0
  
  for caractere in string:
    if caractere in vogais:
      contador += 1
      
  return contador

total_vogais = conta_vogais(palavra)

print(f"Total de vogais na palavra '{palavra}' é: {total_vogais}")
