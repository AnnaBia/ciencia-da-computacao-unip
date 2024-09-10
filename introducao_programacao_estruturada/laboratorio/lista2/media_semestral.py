# 06 – Escreva uma expressão que será utilizada para decidir se um aluno foi ou 
# não aprovado. Para ser aprovado, todas as médias do aluno devem ser maiores 
# que 7. Considere que o aluno cursa apenas três matérias, e que a nota de cada 
# uma está armazenada nas seguintes variáveis: materia1, materia2, materia3.

print("Programa que calcula a média semestral e determina se o aluno foi aprovado.")

materia1 = float(input("Informe a 1ª nota: "))
materia2 = float(input("Informe a 2ª nota: "))
materia3 = float(input("Informe a 3ª nota: "))

media_semestral  = ((materia1 + materia2 + materia3) / 3)

if (media_semestral >= 7 and media_semestral <= 10):
  print(f"Média semestral: {media_semestral:.2f}")
  print("Aluno aprovado!")
elif (media_semestral < 7 and media_semestral <= 0):
  print("Aluno reprovado!")
else:
  print("Notas inválida!")
