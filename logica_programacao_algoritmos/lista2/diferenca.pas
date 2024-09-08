// Ler dois valores numéricos e apresentar a diferença do maior pelo menor.

Algoritmo "DIFERENCA"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 2 - Exercicío 1
// Autor(a)    : Ana Espejo
// Data atual  : 08/09/2024
Var
  diferenca, valor1, valor2: inteiro

Inicio
  Escreval("Calcula Diferença do Maior pelo Menor")
  Escreva("Informe o valor do primeiro número: ")
  leia(valor1)

  Escreva("Informe o valor do segundo número: ")
  leia(valor2)

  se(valor1 > valor2) entao
    diferenca <- valor1 - valor2;
  senao
    diferenca <- valor2 - valor1;
  fimse

  escreva("A diferença do maior pelo menor é: ", diferenca)
Fimalgoritmo
