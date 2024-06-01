def agregar_usuario():
    print("\nA continuacion podrá agregar datos personales")
    nombre = input("Introduzca el nombre: ")
    apellido = input("Introduzca el apellido: ")
    cedula = input("Introduzca la cedula: ")
    correo = input("Introduzca el correo electronico: ")
    telefono = input("Introduzca el telefono: ")
    
    registro = {
        "nombre": nombre, 
         "apellido": apellido, 
         "cedula":cedula, 
         "correo electronico":correo, 
         "telefono":telefono}
    
    registros.append(registro)

def listar_usuarios():
    if len(registros) != 0:
        for registro in registros:
            print("---------------")
            for clave, valor in registro.items():
                print(f"{clave} = {valor}")
    else:
        print("No hay regitros guardados.")

registros = []

while True:
    opcion = input(
'''\nPara agregar usuarios presione 'a'
Para ver los usuarios registrados presione 'v' 
Para salir presione cualquier tecla: ''').lower()
    
    if opcion == 'v':
        listar_usuarios()
    elif opcion == 'a':
        agregar_usuario()
    else:
        break
