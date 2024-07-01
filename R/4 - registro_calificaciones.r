obtener_calificaciones <- function() {
  repeat {
    prompt <- "Ingrese el numero de calificaciones que desea registrar: "
    num_calificaciones <- as.integer(readline(prompt))
    if (!is.na(num_calificaciones) && num_calificaciones > 0) {
      return(num_calificaciones)
    } else {
      cat("Error: El numero de calificaciones debe ser mayor a cero.",
          "Intente de nuevo.\n")
    }
  }
}

obtener_datos_estudiantes <- function(num_estudiantes, num_calificaciones) {
  estudiantes <- list()
  for (i in 1:num_estudiantes) {
    repeat {
      prompt <- sprintf("Ingrese la cedula del estudiante %d: ", i)
      cedula <- trimws(readline(prompt))
      if (nchar(cedula) > 0) {
        calificaciones <- numeric(num_calificaciones)
        for (j in 1:num_calificaciones) {
          repeat {
            prompt <- sprintf(paste("Ingrese la calificacion %d para",
                                    "el estudiante con cedula %s: "), j, cedula)
            calificacion <- as.numeric(readline(prompt))
            if (
                !is.na(calificacion) &&
                  calificacion >= 0 &&
                  calificacion <= 100) {
              calificaciones[j] <- calificacion
              break
            } else {
              cat("Error: La calificacion debe estar entre 0 y 100.",
                  "Intente de nuevo.\n")
            }
          }
        }
        estudiantes[[length(estudiantes) + 1]] <-
          list(cedula = cedula, calificaciones = calificaciones)
        break
      } else {
        cat("Error: La cedula no puede estar vacía. Intente de nuevo.\n")
      }
    }
  }
  return(estudiantes)
}

guardar_calificaciones <- function(estudiantes) {
  for (estudiante in estudiantes) {
    filename <- paste0(estudiante$cedula, ".txt")
    tryCatch({
      writeLines(as.character(estudiante$calificaciones), con = filename)
      cat(sprintf(paste("Calificaciones del estudiante con cedula %s",
                        "guardadas en %s.\n"),
                  estudiante$cedula, filename))
    }, error = function(e) {
      cat(sprintf("Error al escribir el archivo %s: %s\n",
                  filename, e$message))
    })
  }
}

# Main program
repeat {
  prompt <- "Ingrese el numero de estudiantes: "
  num_estudiantes <- as.integer(readline(prompt))
  if (!is.na(num_estudiantes) && num_estudiantes > 0) {
    break
  } else {
    cat("Error: El numero de estudiantes debe ser mayor a cero.",
        "Intente de nuevo.\n")
  }
}

num_calificaciones <- obtener_calificaciones()
estudiantes <- obtener_datos_estudiantes(num_estudiantes, num_calificaciones)
guardar_calificaciones(estudiantes)