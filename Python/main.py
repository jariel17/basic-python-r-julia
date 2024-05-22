
figuras = {'1':'Circulo', '2':'Rectangulo', '3':'Triangulo'}

while True:
    print(
'''Bienvenido, con que figura deseas trabajar?\n
1. Circulo
2. Rectangulo
3. Triangulo\n''')
    
    figura = int(input())

    print(
'''\nQue deseas calcular?
a. Area
b. Perimetro''')
    
    calculo = input()

    if figura == 1 and calculo == 'a':
        print("area del circulo")
    elif figura == 1 and calculo == 'b':
        print("perimetro del circulo")
    elif figura == 2 and calculo == 'a':
        print("area del rectangulo") 
    elif figura == 2 and calculo == 'b':
        print("perimetro del rectangulo")
    elif figura == 3 and calculo == 'a':
        print("area del triangulo")
    elif figura == 3 and calculo == 'b':
        print("perimetro del triangulo")
    elif figura < 1 or figura > 3:
        print("Esta figura no esta definida aun")
    elif calculo!= 'a' or calculo != 'b':
        print("Este calculo no esta definido")

    break