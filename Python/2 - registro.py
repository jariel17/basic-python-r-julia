print("A continuacion podrá agregar datos personales")
registros = []
while True:
    registro = {}
    nombre = input("Introduzca el nombre: ")
    apellido = input("Introduzca el apellido: ")
    cedula = input("Introduzca la cedula: ")
    correo = input("Introduzca el correo electronico: ")
    telefono = input("Introduzca el telefono: ")

    registro = {
        "nombre": nombre, 
         "apellido": apellido, 
         "cedula":cedula, 
         "correo electrónico":correo, 
         "teléfono":telefono}
    
    registros.append(registro)

    salir = input("Si desea salir presione s, para continuar presione cualquier tecla: ")

    if salir == 's' or salir == 'S':
        print("Saliendo del programa.")
        break

for registro in registros:
    print("------------------")
    for clave, valor in registro.items():
        print(f"{clave} = {valor}")
