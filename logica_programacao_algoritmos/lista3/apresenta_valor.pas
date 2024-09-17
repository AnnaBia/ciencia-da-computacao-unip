// Elaborar um programa que efetue a leitura de um determinado valor inteiro, e 
// efetue a sua apresentação, caso o valor não seja maior que três.

Algoritmo "APRESENTA VALOR"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 3 - Exercício 2
// Autor(a)    : Ana Espejo
// Data atual  : 10/09/2024
Var
  valor: inteiro

Inicio
  Escreval("Programa Apresenta Valor")
  Escreval("Retorna números inteiros até 3.")

  Escreva("Informe o número: ")
  leia(valor)

  se(valor <= 3) entao
    Escreva("Valor menor que 3! Valor: ", valor)
  fimse
Fimalgoritmo
