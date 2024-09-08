// Efetuar o cálculo da quantidade de litros de combustível gastos em uma viagem,
// utilizando-se um automóvel que faz 12km por litro. Para obter o cálculo, o usuário
// deverá fornecer o tempo gasto na viagem e a velocidade média durante a mesma.
// Desta forma, será possível obter a distância percorrida com a fórmula 
// DISTANCIA <- TEMPO * VELOCIDADE. Tendo o valor da distância, basta calcular a 
// quantidade de litros de combustível utilizada na viagem com a fórmula:
// LITROS_USADOS <- DISTANCIA/12. O programa deverá apresentar os valores da 
// velocidade, tempo gasto na viagem à distância percorrida e a quanyidade litros
// utilizada na viagem.

Algoritmo "COMBUSTIVEL"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 1 - Exercicío 2
// Autor(a)    : Ana Espejo
// Data atual  : 08/09/2024
Var
distancia, temp, velocidade, litros: real

Inicio
   Escreval("Calcula Combustível")
   Escreval("Consumo médio: 12km/l")
   Escreva("Informe o tempo gasto em horas: ")
   leia(temp)

   escreva("Informe a velocidade média: ")
   leia(velocidade)

   distancia <- temp * velocidade;
   litros <- distancia / 12;

   Escreval("Distância percorrida: ",distancia:0:2, " km")
   Escreval("Tempo gasto: ",temp:0:0, " h(s)")
   Escreval("Velocidade média: ",velocidade:0:0, " Km/h")
   Escreval("Combustível utilizado na viagem: ",litros:1:2, " l")
Fimalgoritmo