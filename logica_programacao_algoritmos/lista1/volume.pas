// Calcular e apresentar o valor do volume de uma lata de óleo, utilizando a 
// fórmula: VOLUME <- (3.14 * R² * ALTURA).

Algoritmo "VOLUME"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 1 - Exercicío 1
// Autor(a)    : Ana Espejo
// Data atual  : 07/09/2024
Var
volume, raio, altura: real

Inicio
   Escreval("Calcula Volume")
   Escreva("Informe a altura do recipiente: ")
   leia(altura)

   Escreva("Informe o tamanho do raio: ")
   leia(raio)

   volume <- (3.14 * (raio * raio) * altura);

   Escreva("Volume do recipiente: ", volume:1:2)
Fimalgoritmo
