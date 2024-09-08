// Efetuar a leitura de um valor inteiro positivo ou negativo e apresentar o 
// número lido como sendo um valor positivo, ou seja, o programa deverá 
// apresentar o módulo de um número fornecido. Lembre-se de verificar se o
// número fornecido é menor que zero, sendo multiplique por -1.

Algoritmo "VALOR POSITIVO"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 2 - Exercicío 2
// Autor(a)    : Ana Espejo
// Data atual  : 08/09/2024
Var
  modulo, valor: inteiro

Inicio
  Escreval("Programa Módulo")
  Escreval("Retorna número positivo")
  Escreva("Informe o valor: ")
  leia(valor)

  se(valor < 0) entao
    valor <- (valor * (-1));
    Escreval("Você informou um número negativo!")
    Escreva("Valor convertido: ", valor)
  senao
    Escreva("Você informou um número positivo: ", valor)
  fimse
Fimalgoritmo