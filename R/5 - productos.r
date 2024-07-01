library(jsonlite)

products_file <- "./data/products.json"

# Read JSON file
data <- read_json(products_file, simplifyVector = TRUE)

listar_productos <- function() {
  if (length(data) != 0) {
    for (product in 1:nrow(data)) {
      cat("-------------\n")
      for (col in names(data)) {
        cat(sprintf("%s: %s\n", col, data[product, col]))
      }
    }
  } else {
    cat("No hay registros\n")
  }
}

filtrar_categoria <- function(categoria) {
  filtered <- data[data$category == categoria, ]
  if (nrow(filtered) > 0) {
    for (product in 1:nrow(filtered)) {
      for (col in names(filtered)) {
        cat(sprintf("%s: %s\n", col, filtered[product, col]))
      }
      cat("-------------\n")
    }
  } else {
    cat("No se encontraron productos en esta categoría.\n")
  }
}

cat("Listamos todos los productos:\n")
listar_productos()
cat("\n----------------------------\n\n")
cat("Filtramos los productos por la categoria Electronics:\n")
filtrar_categoria(categoria = "Electronics")