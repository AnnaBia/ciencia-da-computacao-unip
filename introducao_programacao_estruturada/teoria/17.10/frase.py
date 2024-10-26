# Exercício 3: Inverter palavras em uma frase
# Escreva uma função que inverte as palavras de uma frase, mantendo a ordem das 
# palavras.

print(">>> Programa inverte palavras de uma frase")
frase = input("Informa a frase: ")

def inverter_palavras(frase):
  palavras = frase.split()
  palavras_invertidas = [palavra[::-1] for palavra in palavras]
  return " ".join(palavras_invertidas)

print(f"Nova frase: {inverter_palavras(frase)}")
