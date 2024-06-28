triangulo <- new.env()

triangulo$area <- function(base, altura) {
  return((base * altura) / 2)
}

triangulo$perimetro <- function(lado1, lado2, lado3) {
  return(lado1 + lado2 + lado3)
}