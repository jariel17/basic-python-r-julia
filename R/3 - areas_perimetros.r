source("R/matematicas/Circulo.r")
source("R/matematicas/Rectangulo.r")
source("R/matematicas/Triangulo.r")

while (TRUE) {
  cat("
-------------------------------------------
Bienvenido, con que figura deseas trabajar?

1. Circulo
2. Rectangulo
3. Triangulo
9. SALIR
")
  figura <- as.integer(readline())
  if (figura != 9) {
    cat("
Que deseas calcular?
a. Area
b. Perimetro
")
    calculo <- readline()
    if (calculo != "a" && calculo != "b") {
      cat("Este calculo no esta definido.\n")
      break
    } else if (figura == 1) {
      radio <- as.numeric(readline("Indica el radio del circulo: "))
      if (calculo == "a") {
        area <- Circulo$area(radio)
        cat(sprintf("El area del circulo es: %.2f\n", area1))
      } else if (calculo == "b") {1
        cat(sprintf("El perimetro del circulo es: %.2f\n", Circulo$perimetro(radio)))
      }
    } else if (figura == 2) {
      lado <- as.numeric(readline("Indica la longitud de los lados del rectangulo: "))
      ancho <- as.numeric(readline("Indica el ancho del rectangulo: "))
      if (calculo == "a") {
        cat(sprintf("El area del rectangulo es: %.2f\n", rectangulo$area(lado, ancho)))
      } else if (calculo == "b") {
        cat(sprintf("El perimetro del rectangulo es: %.2f\n", rectangulo$perimetro(lado, ancho)))
      }
    } else if (figura == 3 && calculo == "a") {
      base <- as.numeric(readline("Indica la base del triangulo: "))
      altura <- as.numeric(readline("Indica la altura del triangulo: "))
      cat(sprintf("El area del triangulo es: %.2f\n", triangulo$area(base, altura)))
    } else if (figura == 3 && calculo == "b") {
      lados <- as.numeric(strsplit(readline("Ingresa los valores de cada lado del triangulo, separados por un espacio en blanco: "), " ")[[1]])
      cat(sprintf("El perimetro del triangulo es: %.2f\n", triangulo$perimetro(lados[1], lados[2], lados[3])))
    } else if (figura < 1 || figura > 3) {
      cat("Esta figura no esta definida aun.\n")
    }
  } else {
    cat("Hasta luego.\n")
    break
  }
}