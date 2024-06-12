function agregar_usuario()
    println("\nA continuacion podrá agregar datos personales")
    print("Introduzca el nombre: ")
    nombre = readline() 
    print("Introduzca el apellido: ")
    apellido = readline()
    print("Introduzca la cedula: ")
    cedula = readline()
    print("Introduzca el correo electronico: ")
    correo = readline()
    print("Introduzca el telefono: ")
    telefono = readline()

    registro = Dict(
        "nombre" => nombre,
        "apellido" => apellido,
        "cedula" => cedula,
        "correo" => correo,
        "telefono" => telefono)

    push!(registros, registro)
end

function listar_usuarios()
    if length(registros) != 0
        for registro in registros
            println("-------------")
            for (clave, valor) in pairs(registro)
                println("$clave = $valor")
            end
        end
    else
        print("No hay registros guardados")
    end
end

registros = Any[]

while true
    println("\nPara agregar usuarios, presione 'a'")
    println("Para ver los usuarios registrados, presione 'v'")
    println("Para salir, presione cualquier tecla: ")

    opcion = lowercase(readline())
    if opcion == "v"
        listar_usuarios()
    elseif opcion == "a"
        agregar_usuario()
    else    
        break
    end
end
