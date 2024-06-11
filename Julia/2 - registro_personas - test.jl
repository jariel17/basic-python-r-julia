function agregar_usuario()
    print("\nA continuacion podrá agregar datos personales")
    nombre = input("Introduzca el nombre: ")
    apellido = input("Introduzca el apellido: ")
    cedula = input("Introduzca la cedula: ")
    correo = input("Introduzca el correo electronico: ")
    telefono = input("Introduzca el telefono: ")

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
            print("-------------")
            for (clave, valor) in pares(registro)
                print("$clave = $valor")
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
    
    if opcion == 'v'
        listar_usuarios()
    elseif opcion == 'a'
        agregar_usuario()
    else
        break
    end
end
