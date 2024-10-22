print(">>>> Programa apresenta posição da segunda palavra referente à primeira palavra")

primeira_palavra = input("Informe a 1ª palavra: ")
segunda_palavra = input("Informe a 2ª palavra: ")

if segunda_palavra in primeira_palavra:
  posicao = primeira_palavra.find(segunda_palavra)

  if posicao != -1:
    print(f"A posição da '{segunda_palavra}' na primeira palavra é: {posicao + 1}")
else:
  print(f"'{segunda_palavra}' não foi encontrada na '{primeira_palavra}'")
