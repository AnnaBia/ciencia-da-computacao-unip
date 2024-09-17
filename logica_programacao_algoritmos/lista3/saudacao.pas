// Elaborar um programa que efetue a leitura do nome e do sexo de uma pessoa, 
// apresentando como saída uma das seguintes mensagens: "Ilmo. Sr ", para o sexo 
// informado como masculino, ou a mensagem "Ilma. Sra. ", para o sexo informado 
// como feminino. Apresente também junto da mensagem de saudação o nome 
// previamente informado.

Algoritmo "SAUDAÇÃO"
// Disciplina   : [Lógica de Programação e Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Lista 3 - Exercicío 3
// Autor(a)    : Ana Espejo
// Data atual  : 10/09/2024
Var
  nome, sexo: caractere

Inicio
  Escreval("Programa Saudação")
  Escreval("Apresenta nome e sexo.")
  Escreva("Informe o nome a ser impresso: ")
  leia(nome)

  Escreval("Digite a inicial do sexo abaixo: ")
  Escreval("F - Feminino")
  Escreval("M - masculino")
  leia(sexo)

  se (sexo = "F") ou (sexo = "f") entao
    Escreva("Ilma Sra. ", nome)
  senao
    se (sexo = "M") ou (sexo = "m") entao
      Escreva("Ilmo Sr. ", nome)
    senao
      Escreva("Valor para sexo inválido.")
    fimse
  fimse
Fimalgoritmo
