#Primero, se necesitan los datos, attach para facil acceso despues.
data = read.table("IndiceCrim.dat", header = T)
attach(data)

#1

#R = Indice de criminalidad, numero de delitos conocidos por la policia por cada millon de habitantes.
summary(R) #Del summary obtenenos min, max, cuartiles, mediana, media
var(R) #Varianza
sd(R) #Desviacion estandar
range(R) #Rango
IQR(R) #Rango intercuartil

#LF = Proporcion en participacion en trabajos de fuerza por cada mil hombres con edad 14-24.
summary(LF)
var(LF)
sd(LF)
range(LF)
IQR(LF)

#X = Desigualdad en ingresos, el numero de familias por mil que ganan por debajo de la mitad de la mediana de ingresos.
summary(X)
var(X)
sd(X)
range(X)
IQR(X)

#2

#Mostrando dos graficos, histograma y boxplot de cada variable
#Considerando mostrar los datos etiquetados y coloreados para facil lectura
par(mfrow = c(1,2))
hist(R, main = "Indice de Criminalidad", xlab = "Numero de delitos por millon de habitantes", ylab = "Frecuencia", col = c("lightblue","blue","darkblue"))
boxplot(R, main = "Indice de criminalidad", ylab = "Numero de delitos por millon de habitantes", col = c("blue"))

hist(LF, main = "Participacion en trabajos de fuerza", xlab = "Participacion por cada mil hombres", ylab = "Frecuencia", col = c("lightblue","blue","darkblue"))
boxplot(LF, main = "Participacion en trabajos de fuerza", ylab = "Participacion por cada mil hombres", col = c("blue"))

hist(X, main = "Desigualdad de ingresos", xlab = "Numero de familias por cada mil", ylab = "Frecuencia", col = c("blue","darkblue"))
boxplot(X, main = "Desigualdad de ingresos", ylab = "Numero de familias por cada mil", col = c("blue"))

#3

#Mostrando ambos graficos lado a lado para facil comparacion
hist(R[S==0], main = "Indice de Criminalidad", xlab = "Numero de delitos por millon de habitantes", ylab = "Frecuencia", col = c("lightblue","blue","darkblue"))
hist(R[S==1], main = "Indice de Criminalidad", xlab = "Numero de delitos por millon de habitantes", ylab = "Frecuencia", col = c("lightblue","blue","darkblue"))

hist(LF[S==0], main = "Participacion en trabajos de fuerza", xlab = "Participacion por cada mil hombres", ylab = "Frecuencia", col = c("lightblue","blue","darkblue"))
hist(LF[S==1], main = "Participacion en trabajos de fuerza", xlab = "Participacion por cada mil hombres", ylab = "Frecuencia", col = c("lightblue","blue","darkblue"))

hist(X[S==0], main = "Desigualdad de ingresos", xlab = "Numero de familias por cada mil", ylab = "Frecuencia", col = c("blue","darkblue"))
hist(X[S==1], main = "Desigualdad de ingresos", xlab = "Numero de familias por cada mil", ylab = "Frecuencia", col = c("blue","darkblue"))

#Ahora mostrando los boxplots en una misma grafica para facil comparacion
par(mfrow = c(1,1))
boxplot(R[S==0], R[S==1], main = "Indice de criminalidad", ylab = "Numero de delitos por millon de habitantes", names = c("Estados del norte", "Estados del sur"), col = c("blue"))
boxplot(LF[S==0], LF[S==1], main = "Participacion en trabajos de fuerza", ylab = "Participacion por cada mil hombres", names = c("Estados del norte", "Estados del sur"), col = c("blue"))
boxplot(X[S==0], X[S==1], main = "Desigualdad de ingresos", ylab = "Numero de familias por cada mil", names = c("Estados del norte", "Estados del sur"), col = c("blue"))
