registros = []
while True:
    registro = {}
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

    salir = input("Si desea salir presione y ")

    if salir == 'y' or salir == 'Y':
        break

for datos in registros:
    print(datos)

#print(registros)