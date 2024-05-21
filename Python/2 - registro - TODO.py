
salir = ""
registros = {}
while True:
    print("A continuacion podrá agregar datos personales")
    nombre = input("Introduzca el nombre: ")
    apellido = input("Introduzca el apellido: ")
    cedula = input("Introduzca la cedula: ")
    correo = input("Introduzca el correo electronico: ")
    telefono = input("Introduzca el telefono: ")

    registros.append(
        {"nombre": nombre, 
         "apellido": apellido, 
         "cedula":cedula, 
         "correo electrónico":correo, 
         "teléfono":telefono})
    
    salir = input("Si desea salir presione y")

    if salir == 'y' or salir == 'Y':
        break

for datos in registros:
    print(datos)

#print(registros)