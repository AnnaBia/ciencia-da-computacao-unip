// Ler 8 elementos em um vetor A. Construir um vetor B de mesma dimensão com os 
// elementos do vetor A multiplicados por 3. Apresentar o vetor B.

Algoritmo "MULTIPLICA ELEMENTO POR 3"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 5 - Exercício 1
// Autor(a)    : Ana Espejo
// Data atual  : 26/10/2024
Var
  A: vetor[1..8] de inteiro
  B: vetor[1..8] de inteiro
  contador: inteiro

Inicio
  escreval("Programa multiplica elementos por 3")
  escreval("")
  escreval("Vetor A: ")
  para contador de 1 ate 8 passo 1 faca
    escreva("Informe o elemento ", contador, ": ")
    leia(A[contador])
  fimpara

  para contador de 1 ate 8 passo 1 faca
    B[contador] <- A[contador] * 3;
  fimpara

  escreval("")
  escreval("Vetor B: ")

  para contador de 1 até 8 passo 1 faca
    escreva(B[contador], " ")
  fimpara
Fimalgoritmo
