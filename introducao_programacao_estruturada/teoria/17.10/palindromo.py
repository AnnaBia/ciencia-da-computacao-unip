# Exercício 2: Verificar se uma string é palíndromo
# Escreva uma função que verifica se uma string é um palíndromo (ou seja, lê-se 
# da mesma forma de trás para frente, ignorando espaços e diferenças de 
# maiúsculas e minúsculas).

print(">>>> Programa verifica se uma string é palíndromo")
palavra = input("Informe a palavra: ")

def palindromo(palavra):
  palavra_sem_caractere = palavra.replace(" ", "").lower()
  
  if palavra_sem_caractere != palavra_sem_caractere[::-1]:
    return print(f"'{palavra}' não é palíndromo.")
  return print(f"'{palavra}' é palíndromo!")

palindromo(palavra)
