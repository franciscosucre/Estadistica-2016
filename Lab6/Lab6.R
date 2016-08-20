# Laboratorio 6
# Estadistica Para Ingenieros
# Francisco Sucre 10-10717
# José Cipagauta 05-38040

# Set De Datos: Salud
# library(rJava)
# library(xlsxjars) 
library(xlsx) # Este carga ya de por si las dependencias
salud = read.xlsx("DatosI16.xlsx", sheetIndex = 3, rowIndex = c(3:31), colIndex = c(2:12), header = T)
# Los nombres de los paises no son relevantes para este estudio, y ademas no son datos numericos
# Por lo cual cor(salud) da errores
attach(salud) # Attach para facil accesso, en realidad se usa es Mort

# 1. Realice un primer modelo con las variables cuyó |ρ| > 0,5 con respecto a la variable
# respuesta. Para esto calcule la matriz de correlación y estudie las gráficas de las 
# variables.

cor(salud)
# Se eligen solo los que tengan |ρ| > 0.5
plot(Mort5, ILIM)
plot(Mort5, Desnt)
plot(Mort5, MortM)
plot(Mort5, MortH)
plot(Mort5, Tuber)
plot(Mort5, EV60)

# Modelo 1, Mort5 ~ ILIM + Desnt + MortM + MortH + Tuber + EV60
# con ρ1 = 0.5971, ρ2 = 0.5475, ρ3 = 0.8334, ρ4 = 0.6425, ρ5 = 0.8851, ρ6 = -0.6926 respectivamente
m1 = lm(Mort5 ~ ILIM + Desnt + MortM + MortH + Tuber + EV60)
m1


# 2. Realice un segundo modelo con regresión paso a paso. En cada paso elimine la variable 
# menos significativa y continue hasta que todas las restantes tengan un nivel de signifancia 
# menor a 0.05.

# Modelo 2, Mort5 ~ ILIDTP + ILIM + Desnt + MortM + MortH + Tuber + VIH + EV60 + Med + PIB
m2 = lm(Mort5 ~ ILIDTP + ILIM + Desnt + MortM + MortH + Tuber + VIH + EV60 + Med + PIB)
summary(m2)

# Modelo 3, Mort5 ~ ILIDTP + ILIM + Desnt + MortM + MortH + Tuber + VIH + EV60 + Med + PIB - 1
# Eliminando intercept con p-valor de 0.9501
m3 = lm(Mort5 ~ ILIDTP + ILIM + Desnt + MortM + MortH + Tuber + VIH + EV60 + Med + PIB - 1)
summary(m3)

# Modelo 4, Mort5 ~ ILIM + Desnt + MortM + MortH + Tuber + VIH + EV60 + Med + PIB - 1
# Eliminando ILIDTP con p-valor de 0.9235
m4 = lm(Mort5 ~ ILIM + Desnt + MortM + MortH + Tuber + VIH + EV60 + Med + PIB - 1)
summary(m4)

# Modelo 5, Mort5 ~ ILIM + Desnt + MortM + Tuber + VIH + EV60 + Med + PIB - 1
# Eliminando MortH con p-valor de 0.6790
m5 = lm(Mort5 ~ ILIM + Desnt + MortM + Tuber + VIH + EV60 + Med + PIB - 1)
summary(m5)

# Modelo 6, Mort5 ~ ILIM + Desnt + MortM + Tuber + VIH + EV60 + PIB - 1
# Eliminando Med con p-valor de 0.5407
m6 = lm(Mort5 ~ ILIM + Desnt + MortM + Tuber + VIH + EV60 + PIB - 1)
summary(m6)

# Modelo 7, Mort5 ~ ILIM + Desnt + MortM + Tuber + VIH + EV60 - 1
# Eliminando PIB con p-valor de 0.2005
m7 = lm(Mort5 ~ ILIM + Desnt + MortM + Tuber + VIH + EV60 - 1)
summary(m7)

# Modelo 8, Mort5 ~ ILIM + Desnt + MortM + Tuber + VIH - 1
# Eliminando EV60 con p-valor de 0.5840
m8 = lm(Mort5 ~ ILIM + Desnt + MortM + Tuber + VIH - 1)
summary(m8)


# 3. Compare los modelos.
summary(m1) 
# R cuadrado adjustado de 0,9058, aunque no todas las variables tienen significancia menor a 0.5
# Solo 3 lo tienen, y las restantes 4 con significancia entre 0.20 a 0.75

summary(m8) 
# R cuadrado adjustado de 0.9799, todas las variables con significancia menor a 0.5
# Este es un modelo mas util a usar, que se acerca mas a los datos, seria mejor a la hora de hacer predicciones

# 4. Use los datos que aparecen en la misma hoja de datos, subrayados en azul, para hacer una 
# predicción con ambos modelos.

# Creando vector de datos para la prediccion
datam1 = data.frame(ILIM = 3, Desnt = 10, MortM = 102, MortH = 150, Tuber = 1, EV60 = 20)

predict(m1, newdata = data, interval = c("prediction"), level = .95)
