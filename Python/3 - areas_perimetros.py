from matematicas import circulo, rectangulo, triangulo

while True:
    print(
'''
-------------------------------------------
Bienvenido, con que figura deseas trabajar?\n
1. Circulo
2. Rectangulo
3. Triangulo
9. SALIR '''
)
    
    figura = int(input())

    if figura != 9:

        print(
'''Que deseas calcular?
a. Area
b. Perimetro''')
    
        calculo = input()
        if calculo != "a" and calculo != "b":
                print("Este calculo no esta definido.")
                break
        elif figura == 1 :
            radio = float(input('Indica el radio del circulo: '))
            if calculo == "a":
                print("El area del circulo es: {:.2f}".format(circulo.area(radio))) 
            elif calculo is "b":
                print("El perimetro del circulo es: {:.2f}".format(circulo.perimetro(radio)))
        elif figura == 2:
            lado = float(input('Indica la longitud de los lados del rectangulo: '))
            ancho = float(input('Indica el ancho del rectangulo: '))
            if calculo == "a":
                print("El area del rectangulo es: {:.2f}".format(rectangulo.area(lado, ancho)))
            elif calculo == "b":
                print("El perimetro del rectangulo es: {:.2f}".format(rectangulo.perimetro(lado, ancho)))
        elif figura == 3 and calculo == "a":
            base = float(input("Indica la base del triangulo: "))
            altura = float(input("Indica la altura del triangulo: "))
            print("El area del triangulo es: {:.2f}".format(triangulo.area(base, altura)))
        elif figura == 3 and calculo == "b":
            lado1, lado2, lado3 = map(float, input("Ingresa los valores de cada lado del triangulo, separados por un espacio en blanco: ").split())
            print("El perimetro del triangulo es: {:.2f}".format(triangulo.perimetro(lado1, lado2, lado3)))
        elif figura < 1 or figura > 3:
            print("Esta figura no esta definida aun.")

    else:
        print("Hasta luego.")
        break
