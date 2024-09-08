// Elaborar um programa que efetue a leitura de um número inteiro e apresente
// uma mensagem informando se o número é par ou ímpar.

Algoritmo "PAR OU IMPAR"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 2 - Exercicío 5
// Autor(a)    : Ana Espejo
// Data atual  : 08/09/2024
Var
  resto, numero: inteiro

Inicio
  Escreval("Programa Par/Impar")
  Escreva("Informe o número: ")
  leia(numero)

  resto <- (numero % 2);

  se(resto <> 0) entao
    Escreva("O número é ímpar!")
  senao
    Escreva("O número é par!")
  fimse
Fimalgoritmo
