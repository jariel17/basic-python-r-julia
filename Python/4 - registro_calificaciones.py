def obtener_calificaciones():
    while True:
        try:
            num_calificaciones = int(input("Ingrese el numero de calificaciones que desea registrar: "))
            if num_calificaciones <= 0:
                raise ValueError("El numero de calificaciones debe ser mayor a cero.")
            return num_calificaciones
        except ValueError as e:
            print(f"Error: {e}. Intente de nuevo.")

def obtener_datos_estudiantes(num_estudiantes, num_calificaciones):
    estudiantes = []
    for i in range(num_estudiantes):
        while True:
            try:
                cedula = input(f"Ingrese la cedula del estudiante {i + 1}: ").strip()
                if not cedula:
                    raise ValueError("La cedula no puede estar vacía.")
                calificaciones = []
                for j in range(num_calificaciones):
                    while True:
                        try:
                            calificacion = float(input(f"Ingrese la calificacion {j + 1} para el estudiante con cedula {cedula}: "))
                            if calificacion < 0 or calificacion > 100:
                                raise ValueError("La calificacion debe estar entre 0 y 100.")
                            calificaciones.append(calificacion)
                            break
                        except ValueError as e:
                            print(f"Error: {e} Intente de nuevo.")
                estudiantes.append((cedula, calificaciones))
                break
            except ValueError as e:
                print(f"Error: {e}. Intente de nuevo.")
    return estudiantes

def guardar_calificaciones(estudiantes):
    for cedula, calificaciones in estudiantes:
        filename = f"{cedula}.txt"
        try:
            with open(filename, 'w') as file:
                for calificacion in calificaciones:
                    file.write(f"{calificacion}\n")
            print(f"Calificaciones del estudiante con cedula {cedula} guardadas en {filename}.")
        except IOError as e:
            print(f"Error al escribir el archivo {filename}: {e}")

while True:
    try:
        num_estudiantes = int(input("Ingrese el nmero de estudiantes: "))
        if num_estudiantes <= 0:
            raise ValueError("El numero de estudiantes debe ser mayor a cero.")
        break
    except ValueError as e:
        print(f"Error: {e}. Intente de nuevo.")

num_calificaciones = obtener_calificaciones()
estudiantes = obtener_datos_estudiantes(num_estudiantes, num_calificaciones)
guardar_calificaciones(estudiantes)