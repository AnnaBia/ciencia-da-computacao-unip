// Elaborar um programa que efetue o cálculo e no final apresente o somatório do
// número de grãos de trigo que se pode obter num tabuleiro de xadrez, obedecendo
// a seguinte regra: colocar um grão de trigo no primeiro quadrado e, nos quadrados 
// seguintes o dobro do quadrado anterior. Ou seja, no primeiro quadrado coloca-se 1
// grão, no segundo coloca-se 2 grãos (neste momento tem-se 3 grãos), no terceiro
// quadrado coloca-se 4 grãos (tendo neste momento 7 grãos), no quarto quadrado 
// coloca-se 8 grãos (tendo-se então 15 grãos) até atingir o sexagésimo quarto 
// quadrado.

Algoritmo "GRÃOS"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 4 - Exercício 5
// Autor(a)    : Ana Espejo
// Data atual  : 26/10/2024
Var
  totalGraos, graos, contador: inteiro

Inicio
  escreval("Programa calcula total de grãos em um tabuleiro de xadrez")
  totalGraos <- 0;
  graos <- 1;

  para contador de 1 ate 64 faca:
    totalGraos <- totalGraos + graos
    graos <- graos * 2
  fimpara

  escreva("A soma do número de grãos é: ", totalGraos)
Fimalgoritmo
