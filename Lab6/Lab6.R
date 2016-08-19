# Laboratorio 6
# Estadistica Para Ingenieros
# Francisco Sucre 10-10717
# José Cipagauta 05-38040

# Set De Datos: Salud
# library(rJava)
# library(xlsxjars) 
library(xlsx) # Este carga ya de por si las dependencias
salud = read.xlsx("DatosI16.xlsx", sheetIndex = 1, rowIndex = c(1:30), colIndex = c(2:9), header = T)
# Los nombres de los paises no son relevantes para este estudio, y ademas no son datos numericos por lo cual cor(salud) da errores
attach(salud) # Attach para facil accesso.

# 1. Realice un primer modelo con las variables cuyó |ρ| > 0,5 con respecto a la variable
# respuesta. Para esto calcule la matriz de correlación y estudie las gráficas de las 
# variables.

cor(salud)
# Se eligen solo los que tengan |ρ| > 0.5,

# No estoy seguro si se crean 3 modelos, uno con cada variable
# O un solo modelo con las tres variables, estoy casi seguro que es un modelo con 3 variables, en ves de lo que hice aqui

# Modelo 1, Mort ~ GII, ρ = 0.7563
m1 = lm(Mort ~ GII)
plot(GII, fitted.values(m1), sub="Modelo Mort ~ GII", type="l", ylab = "Mort")
points(GII, Mort)

# Modelo 2, Mort ~ ESM, ρ = -0.5604
m2 = lm(Mort ~ ESM)
plot(ESM, fitted.values(m2), sub="Modelo Mort ~ ESM", type="l", ylab = "Mort")
points(ESM, Mort)

# Modelo 3, Mort ~ ESH, ρ = -0.5148
m3 = lm(Mort ~ ESH)
plot(ESH, fitted.values(m3), sub="Modelo Mort ~ ESH", type="l", ylab = "Mort")
points(ESH, Mort)

# 2. Realice un segundo modelo con regresión paso a paso. En cada paso elimine la variable 
# menos significativa y continue hasta que todas las restantes tengan un nivel de significancia 
# menor a 0.05.

# Modelo 4, Mort ~ GII + TNA + Parl + ESM + ESH + FLM + FLH
m4 = lm(Mort ~ GII + TNA + Parl + ESM + ESH + FLM + FLH)
summary(m4)

# Modelo 5, Mort ~ GII + TNA + Parl + ESM + ESH + FLM + FLH - 1, eliminando intercept con p-valor de 0.7145
m5 = lm(Mort ~ GII + TNA + Parl + ESM + ESH + FLM + FLH - 1)
summary(m5)

# Modelo 6, Mort ~ GII + TNA + Parl + ESH + FLM + FLH - 1, eliminando ESM con p-valor de 0.3414
m6 = lm(Mort ~ GII + TNA + Parl + ESH + FLM + FLH - 1)
summary(m6)

# Modelo 7, Mort ~ GII + TNA + Parl + FLM + FLH - 1, eliminando ESH con p-valor de 0.1598
m7 = lm(Mort ~ GII + TNA + Parl + FLM + FLH - 1)
summary(m7)

# Modelo 8, Mort ~ GII + TNA + Parl + FLH - 1, eliminando FLM con p-valor de 0.0881
m8 = lm(Mort ~ GII + TNA + Parl + FLH - 1)
summary(m8)

# 3. Compare los modelos.
summary(m1) #R cuadrado adjustado de 0.5561, modelo marginalmente util.
summary(m2) #R cuadrado adjustado de 0.2886, modelo inutil.
summary(m3) #R cuadrado adjustado de 0.2378, modelo inutil.
summary(m8) #R cuadrado adjustado de 0.891, modelo util.

# En todos los modelos todas las variables son significantes al menos un 3.6%

# 4. Use los datos que aparecen en la misma hoja de datos, subrayados en azul, para hacer una 
# predicción con ambos modelos.
