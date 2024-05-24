try
        
    println("Introduzca su peso en kilogramos: ")
    peso = parse(Float16, readline())

    println("Introduzca su altura en metros: ")
    altura = parse(Float16, readline())

    imc = peso / altura ^ 2

    println("Su indice de masa corporal es: $imc")
    indicador = ""

    if imc < 18.5
        indicador = "BAJO PESO"
    elseif imc <= 24.91
        indicador = "PESO NORMAL"
    elseif imc <= 29.9
        indicador = "SOBREPESO"
    elseif imc <= 34.9
        indicador = "OBESIDAD TIPO 1"
    elseif imc <= 39.9
        indicador = "OBESIDAD TIPO 2"
    elseif imc >= 40
        indicador = "OBESIDAD TIPO 3"
    end

    print("Este indice indica: ", indicador)

catch e
    if isa(e, ArgumentError)
        println("Error: El peso y la altura deben ser valores numericos")
    elseif isa(e, DivideError)
        print("Error: La division entre cero no esta permitida")
    else
        rethrow(e)
    end
end