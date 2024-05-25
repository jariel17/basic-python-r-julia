println("A continuacion podra agregar datos personales")
registros = []
while true
    println("Introduzca el nombre: ")
    nombre = readline()
    println("Introduzca el apellido: ")
    apellido = readline()
    println("Introduzca la cedula: ")
    cedula = readline()
    println("Introduzca el correo electronico: ")
    correo = readline()
    println("Introduzca el telefono: ")
    telefono = readline()

    registro = Dict(
        "nombre" => nombre,
        "apellido" => apellido,
        "cedula" => cedula,
        "correo" => correo,
        "telefono" => telefono
    )
    push!(registros, registro)

    println("Si desea salir, presione s, para continuar presione cualquier tecla: ")
    salir = readline()

    if salir == "s" || salir == "S"
        print("Saliendo del programa.\n")
        break
    end
end

for registro in registros
    print("------------------\n")
    for (clave, valor) in registro
        println("$clave = $valor")
    end
end