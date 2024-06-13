include("matematicas/circulo.jl")
include("matematicas/rectangulo.jl")
include("matematicas/triangulo.jl")

using .circulo
using .rectangulo
using .triangulo

# while true
print(
"""Bienvenido, con que figura deseas trabajar?\n
1. Circulo
2. Rectangulo
3. Triangulo\n""")

figura = parse(Int8, readline())
    
println(
"""\nQue deseas calcular?
a. Area
b. Perimetro""")

calculo = readline()

if figura == 1
    println("Indica cual es el radio del circulo: ")
    radio = parse(Float16, readline())
    if calculo == "a"
        print("El area del circulo es: ", round(circulo.area(radio), digits=2))
    elseif calculo == "b"
        print("El perimetro del circulo es: ", round(circulo.perimetro(radio), digits=2))
    end
elseif figura == 2 && calculo == "a"
    print("El area del rectangulo esta por definir aun")

end
