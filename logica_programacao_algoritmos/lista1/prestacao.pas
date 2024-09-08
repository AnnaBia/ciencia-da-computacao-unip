// Efetuar o cálculo e a apresentação do valor de uma prestação em atraso
// utilizando a fómula: PRESTACAO <- (VALOR * (TAXA / 100) * TEMPO).

Algoritmo "PRESTACAO"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 1 - Exercicío 3
// Autor(a)    : Ana Espejo
// Data atual  : 08/09/2024
Var
prestacao, valor, taxa, temp: real

Inicio
  Escreval("Calcula Prestação em Atraso")
  Escreva("Informe o valor da prestação: R$ ")
  leia(valor)

  Escreva("Informe a taxa de juros: ")
  leia(taxa)

  Escreva("Informe o número de meses em atraso: ")
  leia(temp)

  prestacao <- (valor + (valor * (taxa / 100) * 100));

  Escreva("Valor da prestação em atraso: R$ ", prestacao:1:2)
Fimalgoritmo

