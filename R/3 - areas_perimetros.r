source("R/matematicas/circulo.r")
source("R/matematicas/rectangulo.r")
source("R/matematicas/triangulo.r")

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
        area <- circulo$area(radio)
        cat(sprintf("El area del circulo es: %.2f\n", area))
      } else if (calculo == "b") {
        perimetro <- circulo$perimetro(radio)
        cat(sprintf("El perimetro del circulo es: %.2f\n", perimetro))
      }
    } else if (figura == 2) {
      lado <- as.numeric(readline("Indica la longitud de los lados del rectangulo: "))
      ancho <- as.numeric(readline("Indica el ancho del rectangulo: "))
      if (calculo == "a") {
        area <- rectangulo$area(lado, ancho)
        cat(sprintf("El area del rectangulo es: %.2f\n", area))
      } else if (calculo == "b") {
        perimetro <- rectangulo$perimetro(lado, ancho)
        cat(sprintf("El perimetro del rectangulo es: %.2f\n", perimetro))
      }
    } else if (figura == 3 && calculo == "a") {
      base <- as.numeric(readline("Indica la base del triangulo: "))
      altura <- as.numeric(readline("Indica la altura del triangulo: "))
      area <- triangulo$area(base, altura)
      cat(sprintf("El area del triangulo es: %.2f\n", area))
    } else if (figura == 3 && calculo == "b") {
      lados <- as.numeric(strsplit(readline("Ingresa los valores de cada lado del triangulo, separados por un espacio en blanco: "), " ")[[1]])
      perimetro <- triangulo$perimetro(lados[1], lados[2], lados[3])
      cat(sprintf("El perimetro del triangulo es: %.2f\n", perimetro))
    } else if (figura < 1 || figura > 3) {
      cat("Esta figura no esta definida aun.\n")
    }
  } else {
    cat("Hasta luego.\n")
    break
  }
}