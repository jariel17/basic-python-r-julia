while True:

    print("Bienvenido al gestor de notas: ")
    print("Si deseas salir, escribe X en la cedula")

    cedula = input("Ingrese la cedula del estudiante:")
    if cedula.lower() == 'x':
        break

    nombre = input("Ingrese el nombre del estudiante")
    calificacion = input("Ingrese la calificacion del estudiante")

    nombre_archivo = f"{cedula}.txt"

    try:
        with open(nombre_archivo, 'w') as archivo:
            archivo.write(f"Cedula: {cedula}\n")
            archivo.write(f"Nombre: {nombre}\n")
            archivo.write(f"Calificacion: {calificacion}\n")

        print(f"Calificaciones guardadas en el archivo {nombre_archivo}")

    except IOError as e:
        print