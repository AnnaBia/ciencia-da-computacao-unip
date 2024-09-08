print("\nPrograma que verifica se o aluno foi aprovado.\n")

media_semestral = float(input("Informe a média do aluno: "))

if (media_semestral <= 10 and media_semestral >= 7):
  print("Aluno aprovado :)")
elif (media_semestral < 7 and media_semestral >= 5):
  print("Aluno necessita fazer exame :|")
elif (media_semestral < 5 and media_semestral >= 0):
  print("Aluno reprovado :(")
else:
  print("Nota inválida -.-")
