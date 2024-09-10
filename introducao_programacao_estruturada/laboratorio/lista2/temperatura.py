# 13 – Escreva um programa que converta uma temperatura digitada em ºC em ºF. A 
# formula para a conversão é: F = ((9 x C)/5) + 32

print("Programa que converte a temperatura em °C para °F.")

celsius = float(input("\nInforme a temperatura em °C: "))

fahrenheit = ((9 * celsius)/5) + 32

print(f"{celsius}°C é igual a {fahrenheit}°F")
