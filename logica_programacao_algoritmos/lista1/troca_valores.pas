// Ler dois valores para as variáveis A e B, efetuar a troca dos valores de
// forma que a variável A passe a possuir o valor da variável B e que a 
// variável B passe a possuir o valor da variável A. Apresentar os valores 
// trocados.

Algoritmo"VALORES TROCADOS"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 1 - Exercicío 4
// Autor(a)    : Ana Espejo
// Data atual  : 08/09/2024
Var 
a, b, troca: real

Inicio
  Escreval("Troca valores")
  Escreva("Informe o valor para A: ")
  leia(a)

  Escreva("Informe o valor para B: ")
  leia(b)

  troca <- a;
  a <- b;
  b <- troca;

  Escreval("Valores trocados!")
  Escreval("Valor de A: ", a)
  Escreval("Valor de B: ", b)
Fimalgoritmo
