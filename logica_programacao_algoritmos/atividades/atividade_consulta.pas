Algoritmo "Consulta"
// Disciplina   : [Lógica Programação Algoritmos]
// Professor   : Marcelo Akira
// Descrição   : Programa cadastra e consulta até 5 palavras.
// Autor(a)    : Ana Espejo
// Data atual  : 06/11/2024
Var
  i, j: inteiro
  x: caracter
  y: vetor[1..5] de caracter
  encontrado: logico

Inicio
  escreval("Programa cadastra e consulta até 5 palavras.")
  escreval("=========================================")
  
  para i de 1 ate 5 passo 1 faca
    escreval("Cadastre a ", i, "ª palavra: ")
    leia(y[i])
  fimPara

  para j de 1 ate 5 passo 1 faca
    escreval("Digite a palavra a consultar: ")
    leia(x)
    
    encontrado <- falso
    para i de 1 ate 5 passo 1 faca
      se x = y[i] entao
      encontrado <- verdadeiro
      interrompa
      fimse
    fimpara
    
    se encontrado entao
      escreval("Palavra encontrada !")
    senao
      escreval("Não encontrado !")
    fimse
  fimpara
Fimalgoritmo
