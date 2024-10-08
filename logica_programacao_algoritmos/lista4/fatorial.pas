// Elaborar um programa que efetue de um número qualquer e apresente o
// fatorial desse número.

Algoritmo "FATORIAL"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 4 - Exercício 1
// Autor(a)    : Ana Espejo
// Data atual  : 08/10/2024
Var
  numero, contador, fatorial: inteiro

Inicio
  escreval("Programa calcula fatorial")
  escreva("Informe o número: ")
  leia(numero)

  fatorial <- 1;

  se (numero = 0) entao
    escreva("O fatorial de 0 é 1")
  senao
    se (numero > 0) entao
      para contador de 1 ate numero faca
        fatorial <- fatorial * contador;
      fimpara
      escreva("O fatorial de ", numero, " é ", fatorial)
    senao
      escreva("#NÚM!")
    fimse
  fimse
Fimalgoritmo
