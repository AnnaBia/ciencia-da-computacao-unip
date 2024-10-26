# Exercício 4: Substituir vogais por asteriscos
# Escreva uma função que substitui todas as vogais de uma string por asteriscos.

print(">>>> Programa substitui vogais por asteriscos")
palavra = input("Informe a palavra: ")

def substituir_vogais(palavra):
  vogais = 'aeiouAEIOUâãêéîíôóûú'

  for vogal in vogais:
    palavra = palavra.replace(vogal, '*')
  return palavra

print(f"Nova palavra: {substituir_vogais(palavra)}")