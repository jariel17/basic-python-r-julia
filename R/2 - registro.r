library(tibble)

agregar_usuario <- function(registros) {
  cat("\nA continuacion podrá agregar datos personales\n")
  nuevo_usuario <- data.frame(
    nombre = readline("Introduzca el nombre: "),
    apellido = readline("Introduzca el apellido: "),
    cedula = readline("Introduzca la cedula: "),
    correo_electronico = readline("Introduzca el correo electronico: "),
    telefono = readline("Introduzca el telefono: "),
    stringsAsFactors = FALSE
  )
  rbind(registros, nuevo_usuario)
}

listar_usuarios <- function(registros) {
  if (nrow(registros) > 0) {
    for (i in 1:nrow(registros)) {
      cat("---------------\n")
      print(registros[i,])
    }
  } else {
    cat("No hay registros guardados.\n")
  }
}

main <- function() {
  registros <- tibble()
  
  repeat {
    opcion <- tolower(readline(
      paste("\nPara agregar usuarios presione 'a'",
            "Para ver los usuarios registrados presione 'v'",
            "Para salir presione cualquier tecla: ", sep = "\n")))
    
    if (opcion == 'v') {
      listar_usuarios(registros)
    } else if (opcion == 'a') {
      registros <- agregar_usuario(registros)
    } else {
      break
    }
  }
}

main()