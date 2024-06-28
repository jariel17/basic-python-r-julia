rectangulo <- new.env()

rectangulo$area <- function(lado, ancho) {
  return(lado * ancho)
}

rectangulo$perimetro <- function(lado, ancho) {
  return(2 * (lado + ancho))
}