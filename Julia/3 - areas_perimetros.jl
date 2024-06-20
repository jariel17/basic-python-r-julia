include("matematicas/Circulo.jl")
include("matematicas/Rectangulo.jl")
include("matematicas/Triangulo.jl")

using .Circulo
using .Rectangulo
using .Triangulo
using Printf

while true
    println(
"""
-----------------------------------------------
Bienvenido, con que figura deseas trabajar?\n
1. Circulo
2. Rectangulo
3. Triangulo
9. SALIR"""
)

    figura = parse(Int8, readline())
    
    if figura != 9

        println(
"""Que deseas calcular?
a. Area
b. Perimetro"""
)

        calculo = readline()
        
        if calculo != "a" && calculo != "b"
            println("Este calculo no esta definido.")
            break
        elseif figura == 1
            print("Indica el radio del circulo: ")
            radio = parse(Float32, readline())
            if calculo == "a"
                area = Circulo.area(radio)
                @printf("El area del circulo es: %.2f\n", area)
            elseif calculo == "b"
                perimetro = Circulo.perimetro(radio)
                @printf("El perimetro del circulo es: %.2f\n", perimetro)
            end
        elseif figura == 2
            print("Indica la longitud de los lados del rectangulo: ")
            lado = parse(Float32, readline())
            print("Indica el ancho del rectangulo: ")
            ancho = parse(Float32, readline())
            if calculo == "a"
                area = Rectangulo.area(lado, ancho)
                @printf("El area del rectangulo es: %.2f\n", area)
            elseif calculo == "b"
                perimetro = Rectangulo.perimetro(lado, ancho)
                @printf("El perimetro del rectangulo es: %.2f\n", perimetro)
            end
        elseif figura == 3 && calculo == "a"
            print("Indica la base del triangulo: ")
            base = parse(Float32, readline())
            print("Indica la altura del triangulo: ")
            altura = parse(Float32, readline())
            area = Triangulo.area(base, altura)
            @printf("El area del triangulo es: %.2f\n", area)
        elseif figura == 3 && calculo == "b"
            println("Ingresa los valores de cada lado del triangulo, separados por un espacio en blanco: ")
            input_string = readline()
            values = split(input_string)
            lado1, lado2, lado3 = map(x -> parse(Float32, x), values)
            perimetro = Triangulo.perimetro(lado1, lado2, lado3)
            @printf("El perimetro del triangulo es: %.2f\n", perimetro)
        elseif figura < 1 || figura > 3
            print("Esta figura no esta definida aun.")
        end
    else 
        println("Hasta luego.")
        break
    end
end