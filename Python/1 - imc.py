try:
    peso = (input("Introduzca su peso en kilogramos: "))
    peso = float(peso)

    altura = float(input("Introduzca su altura en metros: "))
    altura = float(altura)

    imc = peso / altura**2
    
    print("Su indice de masa corporal es: ", f"{imc:.2f}")
    indicador = ""

    if imc < 18.5:
        indicador = "BAJO PESO"
    elif imc <= 24.9:
        indicador = "PESO NORMAL"
    elif imc <= 29.9:
        indicador = "SOBREPESO"
    elif imc <= 34.9:
        indicador = "OBESIDAD TIPO 1"
    elif imc <= 39.9:
        indicador = "OBESIDAD TIPO 2"
    elif imc >= 40:
        indicador = "OBESIDAD TIPO 3"

    print("Este indice indica: ", indicador)

except ValueError:
    print("Error: El peso y la altura deben ser valores numericos")
except ZeroDivisionError:
    print("Error: La division entre cero no es permitida")