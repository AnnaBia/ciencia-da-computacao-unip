// Ler quatro valores referentes a quatro notas escolares de um aluno e imprimir
// una mensagem dizendo que o aluno foi aprovado, se o valor da média escolar 
// for maior ou igual a 7. Se o valor da média for menor que 7, solicitar a nota 
// de exame, somar com o valor da média e obter nova média. Se a nova média for 
// maior ou igual a 5, apresentar uma mensagem dizendo que o aluno foi aprovado 
// em exame. Se o aluno não foi aprovado, indicar uma mensagem informando esta 
// condição. Apresentar com as mensagens o valor da média do aluno, para 
// qualquer condição.

Algoritmo "STATUS ESCOLAR"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 2 - Exercicío 3
// Autor(a)    : Ana Espejo
// Data atual  : 08/09/2024
Var
  media, media_exame, nota1, nota2, nota3, nota4, exame: real

Inicio
  Escreval("Status Escolar do Aluno")
  Escreval("Calcula média e verifica se aluno foi aprovado.")
  Escreva("Informe a 1ª nota: ")
  leia(nota1)

  Escreva("Informe a 2ª nota: ")
  leia(nota2)

  Escreva("Informe a 3ª nota: ")
  leia(nota3)

  Escreva("Informe a 4ª nota: ")
  leia(nota4)

  media <- ((nota1 + nota2 + nota3 + nota4) / 4);

  se (media >= 7) e (media <= 10) entao
    Escreval("Média: ", media:1:2)
    Escreva("Aluno aprovado!")
  senao
    se(media < 5) e (media >= 0) entao
      Escreval("Média: ", media:1:2)
      Escreva("Aluno reprovado!") 
    senao
      se(media < 7) e (media >= 5) entao
        Escreval("Média: ", media:1:2)
        Escreval("Aluno retido para exame!")
        Escreva("Informe a nota de exame: ")
        leia(exame)

        media_exame <- ((media + exame) / 2);

        se(media_exame >= 5) entao
          Escreval("Média com exame: ", media_exame:1:2)
          Escreva("Aluno aprovado com exame!")
        senao
          Escreval("Média com exame: ", media_exame:1:2)
          Escreva("Aluno reprovado com exame!")
        fimse
      senao
        Escreva("Você informou algum valor inválido")
      fimse
    fimse
  fimse
Fimalgoritmo
