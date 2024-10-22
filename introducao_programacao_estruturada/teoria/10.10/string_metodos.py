print(">>>> De string para list")
print("\nString: Alô mundo!")
lista = list("Alô mundo!")
lista[0] = "A"
print("Em lista: ", lista)

print("\n>>>> De list para string")
string = " ".join(lista)
print("\nLista: ", lista)
print("Em string: ", string)

print("\n>>>> Verifica uma string em outra")
nome = "João da Silva"
print("\nNome completo: ", nome)
print("É 'João' ?: ", nome.startswith("João"))
print("Ou 'joao' ?: ", nome.startswith("joao"))

print("\n>>>> Altera string para maiúsculas e minúsculas")
frase = "O rato roeu a ropa do rei de Roma."
print("\nFrase original: ", frase)

frase = frase.lower()
print("Minúsculo: ", frase)

frase = frase.upper()
print("Maiúsculo: ", frase)

print("\n>>>> Pesquisa string")
nome = "Maria Amélia Souza"
print("\nNome completo: ", nome)
print("Tem 'Amélia' ?: ", "Amélia" in nome)
print("Tem 'Sousa' ?: ", "Sousa" in nome)

print("\n>>>> Conta string")
frase = "Um tigre, dois tigres, três tigres."
print("\nFrase: ", frase)
print("Quantos 'tigre' ?: ", frase.count("tigre"))
print("Quantos 'tigres' ?: ", frase.count("tigres"))
print("Quantos 't' ?: ", frase.count("t"))
print("Quantos 'z' ?: ", frase.count("z"))