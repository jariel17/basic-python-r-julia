circulo <- new.env()

circulo$area <- function(radio) {
  return(pi * radio^2)
}

circulo$perimetro <- function(radio) {
  return(2 * pi * radio)
}