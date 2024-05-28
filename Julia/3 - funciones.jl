function agregar_usuario()
    println("\nA continuacion podra agregar datos personales")
    println("Introduzca el nombre: ")
    nombre =  readline()
    println("Introduzca el apellido: ")
    apellido = readline()
    println("Introduzca la cedula: ")
    cedula = readline()
    println("Introduzca el correo: ")
    correo = readline()
    println("Introduzca el telefono: ")
    telefono = readline()

    registro = Dict(
        "nombre" => nombre,
        "apellido" => apellido,
        "cedula" => cedula,
        "correo electronico" => correo,
        "telefono" => telefono
    )
    push!(registros, registro)
end

function listar_usuarios()
    if length(registros) != 0
        for registro in registros
            println("---------------")
            for (clave, valor) in registro
                print(f"{clave} = {valor}")
            end
        end 
    end
end

