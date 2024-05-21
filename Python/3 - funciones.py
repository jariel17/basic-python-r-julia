def agregar_usuario():
    print("A continuacion podrá agregar datos personales")
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

def listar_usuarios():
    for datos in registros:
        print(datos)


registros = []
while True:
    agregar_usuario()
    opcion = input(
        '''Para agregar mas usuarios presione 'a',
        para ver los usuarios registrados presione v, 
        para salir presione cualquier tecla.''').lower()
    if opcion == 'v':
        listar_usuarios()
    elif opcion == 'a':
        agregar_usuario()
    else:
        break
