tryCatch({

  peso <- as.numeric(readline(prompt = "Introduzca su peso en kilogramos: "))
  altura <- as.numeric(readline(prompt = "Introduzca su altura en metros: "))
  # c crea una lista
  if (any(is.na(c(peso, altura)))) {
    stop("Error de valores: El peso y la altura deben ser valores numericos")
  }
  if (as.numeric(altura) == 0) {
    stop("Error matematico: La division entre cero no es permitida")
  }
  imc <- peso / altura^2

  imc_2 <- sprintf("%.2f", imc)

  cat("Su indice de masa corporal es: ", imc_2, "\n")

  indicador <- if (imc < 18.5) {
    "BAJO PESO"
  } else if (imc <= 24.9) {
    "PESO NORMAL"
  } else if (imc <= 29.9) {
    "SOBREPESO"
  } else if (imc <= 34.9) {
    "OBESIDAD TIPO 1"
  } else if (imc <= 39.9) {
    "OBESIDAD TIPO 2"
  } else {
    "OBESIDAD TIPO 3"
  }

  cat("Este indice indica: ", indicador, "\n")
  },
  error = function(e) {
    # grepl verifica si el mensaje de error contiene la cadena "Error de valores"
    if (grepl("Error de valores", e$message)) {
      cat("Error: El peso y la altura deben ser valores numericos.\n")
    } else if (grepl("Error matematico", e$message)) {
      cat("Error: La division entre cero no esta permitida. \n") 
      } else {
        cat("Un error inesperado ha ocurrido: ", e$message, "\n")
      }
    }
)