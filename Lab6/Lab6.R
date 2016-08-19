# Laboratorio 6
# Estadistica Para Ingenieros
# Francisco Sucre 10-10717
# José Cipagauta 05-38040

# Set De Datos: Salud
library(rJava)
library(xlsxjars)
library(xlsx)
salud = read.xlsx("DatosI16.xlsx",sheetIndex = 3, startRow=3, endRow = 31, startCol = 1, endCol = 12)

# 1. Realice un primer modelo con las variables cuyó |ρ| > 0,5 con respecto a la variable
# respuesta. Para esto calcule la matriz de correlación y estudie las gráficas de las 
# variables.

# 2. Realice un segundo modelo con regresión paso a paso. En cada paso elimine la variable 
# menos significativa y continue hasta que todas las restantes tengan un nivel de signifancia 
# menor a 0.05.

# 3. Compare los modelos.

# 4. Use los datos que aparecen en la misma hoja de datos, subrayados en azul, para hacer una 
# predicción con ambos modelos.
