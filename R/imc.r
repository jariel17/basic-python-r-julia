peso <- readline(prompt = "Introduzca su peso en kilogramos: ")
altura <- readline(prompt = "Introduzca su altura en metros: ")

imc <- as.numeric(peso) / as.numeric(altura) ^ 2

imc_2 <- sprintf("%.2f", imc)

print(paste("Su indice de masa corporal es:", imc_2))
indicador <- ""

if (imc < 18.5) indicador <- "BAJO PESO" else
  if (imc <= 24.9) indicador <- "PESO NORMAL" else
  if (imc <= 29.9) indicador <- "SOBREPESO" else
  if (imc <= 34.9) indicador <- "OBESIDAD TIPO 1" else
  if (imc <= 39.9) indicador <- "OBESIDAD TIPO 2" else
  if (imc >= 40) indicador <- "OBESIDAD TIPO 3"

print(paste("Su indice de masa corporal indica: ", indicador))
