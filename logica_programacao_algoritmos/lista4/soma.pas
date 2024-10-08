// Elaborar um programa que efetue a leitura de 15 valores numéricos inteiros e 
// no final apresente o total do somatório desses números.

Algoritmo "SOMA 15"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 4 - Exercício 2
// Autor(a)    : Ana Espejo
// Data atual  : 08/10/2024
Var
  numero, contador, soma: inteiro

Inicio
  escreval("Programa soma 15 números")
  para contador de 1 ate 15 faca
    escreva("Informe o ", contador, "° número: ")
    leia(numero)

    soma <- soma + numero;
  fimpara
  escreva("A soma dos números digitados é: ", soma)
Fimalgoritmo
