function obtener_calificaciones()
    while true
        try
            println("Ingrese el numero de calificaciones que desea registrar: ")
            num_calificaciones = parse(Int16, readline())
            if num_calificaciones <= 0
                throw(ArgumentError("El numero de calificaciones debe ser mayor a cero."))
            end
            return num_calificaciones
        catch e
            println("Error: $e. Intente de nuevo.")
        end
    end
end

function obtener_datos_estudiantes(num_estudiantes, num_calificaciones)
    estudiantes = []

    for i in 1:num_estudiantes
        while true
            try
                println("Ingrese la cedula del estudiante $i: ")
                cedula = strip(readline())
                if isempty(cedula)
                    throw(ArgumentError("La cedula no puede estar vacía."))
                end

                calificaciones = []
                for j in 1:num_calificaciones
                    while true
                        try
                            println("Ingrese la calificacion $j para el estudiante con cedula $cedula: ")
                            calificacion = parse(Float64, readline())
                            if calificacion < 0 || calificacion > 100
                                throw(ArgumentError("La calificacion debe estar entre 0 y 100."))
                            end
                            push!(calificaciones, calificacion)
                            break
                        catch e
                            println("Error: $e Intente de nuevo.")
                        end
                    end
                end

                push!(estudiantes, (cedula, calificaciones))
                break
            catch e
                println("Error: $e. Intente de nuevo.")
            end
        end
    end

    return estudiantes
end

function guardar_calificaciones(estudiantes)
    for (cedula, calificaciones) in estudiantes
        filename = "$cedula.txt"
        try
            open(filename, "w") do file
                for calificacion in calificaciones
                    write(file, "$calificacion\n")
                end
            end
            println("Calificaciones del estudiante con cedula $cedula guardadas en $filename.")
        catch e
            println("Error al escribir el archivo $filename: $e")
        end
    end
end

function obtener_cantidad_estudiantes()
    while true
        try
            println("Ingrese el numero de estudiantes: ")
            num_estudiantes = parse(Int, readline())
            if num_estudiantes <= 0
                throw(ArgumentError("El numero de estudiantes debe ser mayor a cero."))
            end
            return num_estudiantes
        catch e
            println("Error: $e. Intente de nuevo.")
        end
    end
end

num_estudiantes = obtener_cantidad_estudiantes()
num_calificaciones = obtener_calificaciones()
estudiantes = obtener_datos_estudiantes(num_estudiantes, num_calificaciones)
guardar_calificaciones(estudiantes)