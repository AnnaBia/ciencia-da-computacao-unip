// Elaborar um programa que efetue a leitura de um valor que esteja entre a faixa 
// de 1 a 9. Após a leitura do valor fornecido, pelo usuário, o programa deverá 
// indicar uma de duas a mensagem: "O valor está na faixa permitida", caso o 
// usuário forneça o valor nesta feixa, ou a mensagem: "O valor está fora da faixa 
// permitida", caso o usuário forneça valores menores que 1 ou maiores que 9.

Algoritmo "FAIXA PERMITIDA"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 3 - Exercício 1
// Autor(a)    : Ana Espejo
// Data atual  : 10/09/2024
Var
  valor: inteiro

Inicio
  Escreval("Programa Valor Válido")
  Escreval("Valida números na faixa permitida de 1 a 9.")
  Escreva("Informe o valor: ")
  leia(valor)

  se (valor >= 1) e (valor <= 9) entao
    Escreva("O valor está na faixa permitida!")
  senao
    Escreva("O valor está fora da faixa permitida!")
  fimse
Fimalgoritmo
