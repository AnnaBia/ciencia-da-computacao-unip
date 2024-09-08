// Efetuar a leitura de três valores (variáveis A, B e C) e apresentar os 
// valores dispostos em ordem crescente.

Algoritmo "ORDEM CRESCENTE"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 2 - Exercicío 4
// Autor(a)    : Ana Espejo
// Data atual  : 08/09/2024
Var
  a, b, c: inteiro

Inicio
  Escreval("Programa Ordem Crescente")
  Escreva("Informe o 1º valor: ")
  leia(a)

  Escreva("Informe o 2º valor: ")
  leia(b)

  Escreva("Informe o 3º valor: ")
  leia(c)

  se(a > b) e (b > c) entao
    Escreva("Em ordem crescente: ", c, ", ", b, ", ", a)
  fimse
  se(a > c) e (c > b) entao
    Escreva("Em ordem crescente: ", b, ", ", c, ", ", a)
  fimse
  se(b > a) e (a > c) entao
    Escreva("Em ordem crescente: ", c, ", ", a, ", ", b)
  fimse
  se(b > c) e (c > a) entao
    Escreva("Em ordem crescente: ", a, ", ", c, ", ", b)
  fimse
  se(c > a) e (a > b) entao
    Escreva("Em ordem crescente: ", b, ", ", a, ", ", c)
  fimse
  se(c > b) e (b > a) entao
    Escreva("Em ordem crescente: ", a, ", ", b, ", ", c)
  fimse
Fimalgoritmo
