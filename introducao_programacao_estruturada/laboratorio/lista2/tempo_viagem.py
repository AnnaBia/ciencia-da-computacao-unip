# 12 – Escreva um programa que calcule o tempo de uma viagem de carro. Pergunte 
# a distância a percorrer e a velocidade média esperada para a viagem.

print("Programa que calcula o tempo de viagem de um carro.")

distancia = int(input("\nInforma a distância a percorrer (km): "))
velocidade_medida = int(input("Informe a velocidade média esperada (km/h)): "))

tempo_viagem = distancia / velocidade_medida

print(f"\nTempo estimado de viagem: {tempo_viagem:.2f} h(s)") 
