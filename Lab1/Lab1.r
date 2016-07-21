# Laboratorio 1
# Estadistica Para Ingenieros
# Francisco Sucre 10-10717
# José Cipagauta 05-38040

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

# Analisis: Con estos datos podemos ver en primer lugar que el indice de criminalidad
# es muy variante entre los estados, teniendo en cuenta que el maximo es 199, que la
# desviacion estandar sea 38 (casi un quarto del valor) indica que los valores estan
# muy dispersos. Si vemos ìel resto de las medidas podemos ver que 
# que los datos estan distribuidos de una manera relativamente uniforme, aunque si vemos
# el 3er cuartil podemos ver que el aumento es mayor despues de 105 hasta llegar en 190,
# Asi que podemos ver un diferencia notable en estos estados, una diferencia que si es
# causada por datos errados entonces afecta de manera grave al resto de las medidas.

#LF = Proporcion en participacion en trabajos de fuerza por cada mil hombres con edad 14-24.
summary(LF)
var(LF)
sd(LF)
range(LF)
IQR(LF)

# Analisis: En este caso podemos ver que los datos no se encuentran tan dispersos, ya que
# la desviacion estandar es mas pequeña en comparacion al maximo de los datos, los datos tambien
# tienen una distribucion relativamente uniforme, en el 75% de los estados no se llega a una 
# proporsicion de 600

#X = Desigualdad en ingresos, el numero de familias por mil que ganan por debajo de la mitad de la mediana de ingresos.
summary(X)
var(X)
sd(X)
range(X)
IQR(X)

# Analisis: Podemos ver que los datos no andan muy disperos ya que la desviacion
# estandar no se encuentra en una proporsicion tan eleveada comparada con el rango
# de los valores, tambien podemos ver que la mediana es algo distinta pero no es tanta la
# diferencia, podemos ver tambien que hay una distribucion relativamente uniforme en los datos,
# estando el 25% de las muestras por encima de 230 y 25% por debajo de 165

#2

#Mostrando dos graficos, histograma y boxplot de cada variable
#Considerando mostrar los datos etiquetados y coloreados para facil lectura
par(mfrow = c(1,2))
hist(R, main = "Indice de Criminalidad", xlab = "Numero de delitos por millon de habitantes", ylab = "Frecuencia", col = c("lightblue","blue","darkblue"))
boxplot(R, main = "Indice de criminalidad", ylab = "Numero de delitos por millon de habitantes", col = c("blue"))

# En estos graficos podemos facilmente observar que los indices de criminalidad mas comunes
# estan entre 50 y 100, teniendo un segundo grupo importante entre 100 y 150, y el resto
# se refieren a casos mas aislados, y como podemos ver en el grafico de caja, las muestras
# de mayor valor parecen ser datos atipicos y podrian indicar algun dato erroneo, en general
# el indice de criminalidad es bastante bajo

hist(LF, main = "Participacion en trabajos de fuerza", xlab = "Participacion por cada mil hombres", ylab = "Frecuencia", col = c("lightblue","blue","darkblue"))
boxplot(LF, main = "Participacion en trabajos de fuerza", ylab = "Participacion por cada mil hombres", col = c("blue"))

# En los graficos podemos ver que en el caso de esta variable hay una distrubucion mas uniforme
# de los valores, habiendo una concentracion relativamente parecida entre 500 y 550, y la clase
# de 550 a 600, aunque el resto de las clas aun presentan un numero considerable de muestras,
# en el grafico de caja podemos ver reflejado esto, y se ve perfectamente que entre esas dos
# clases hay una concentracion similar y en esas 2 clases en es donde se encuentran la mayoria
# de las muestras

hist(X, main = "Desigualdad de ingresos", xlab = "Numero de familias por cada mil", ylab = "Frecuencia", col = c("blue","darkblue"))
boxplot(X, main = "Desigualdad de ingresos", ylab = "Numero de familias por cada mil", col = c("blue"))

# En los graficos podemos ver que en el caso de esta variable tenemos una distrubucion diferente,
# a los graficos anteriores, aunque no hay datos lo suficientemente dispersos para considerarse
# atipicos, si podemos ver que el segundo cuartil los datos son muy parecidos mientras que en
# en el 3ro los datos son mucho mas dispersos

#3

#Mostrando ambos graficos lado a lado para facil comparacion
#Creando los breakpoints para el histograma, se necesitan los mismos para poder ser comparables
breakpoints <- c(20,40,60,80,100,120,140,160,180,200)
hist(R[S==0], breaks = breakpoints, main = "Indice de Criminalidad Norte", xlab = "Numero de delitos por millon de habitantes", ylab = "Frecuencia", col = c("lightblue","blue","darkblue"))
hist(R[S==1], breaks = breakpoints, main = "Indice de Criminalidad Sur", xlab = "Numero de delitos por millon de habitantes", ylab = "Frecuencia", col = c("lightblue","blue","darkblue"))

# En los estados del norte hay una mayor concentracion de muestras, de lo cual podemos 
# concluir que en el norte hay mayor indice de criminalidad

#Nuevos breakpoints para nuevos datos
breakpoints <- c(480,500,520,540,560,580,600,620,640,660)
hist(LF[S==0], breaks = breakpoints, main = "Participacion en trabajos de fuerza Norte", xlab = "Participacion por cada mil hombres", ylab = "Frecuencia", col = c("lightblue","blue","darkblue"))
hist(LF[S==1], breaks = breakpoints, main = "Participacion en trabajos de fuerza Sur", xlab = "Participacion por cada mil hombres", ylab = "Frecuencia", col = c("lightblue","blue","darkblue"))

# En los estados del norte hay una mayor concentracion de muestras y ademas las muestras
# en el norte son de mayor valor, con lo cual podemos concluir que hay mayor participacion
# en trabajos de fuerza en los estados del norte

#De nuevo, nuevos datos, nuevos breakpoints
breakpoints <- c(120,140,160,180,200,220,240,260,280)
hist(X[S==0], breaks = breakpoints, main = "Desigualdad de ingresos Norte", xlab = "Numero de familias por cada mil", ylab = "Frecuencia", col = c("blue","darkblue"))
hist(X[S==1], breaks = breakpoints, main = "Desigualdad de ingresos Sur", xlab = "Numero de familias por cada mil", ylab = "Frecuencia", col = c("blue","darkblue"))

# En ambos estados parecen haber concentraciones relativamente similares de datos, pero en
# los estados del sur las muestras estan concentradas en los valores mas altos, lo cual 
# demuestra que en los estados del sur hay mayor desigualdad de ingresos

#Ahora mostrando los boxplots en una misma grafica para facil comparacion
par(mfrow = c(1,1))
boxplot(R[S==0], R[S==1], main = "Indice de criminalidad", ylab = "Numero de delitos por millon de habitantes", names = c("Estados del norte", "Estados del sur"), col = c("blue"))
boxplot(LF[S==0], LF[S==1], main = "Participacion en trabajos de fuerza", ylab = "Participacion por cada mil hombres", names = c("Estados del norte", "Estados del sur"), col = c("blue"))
boxplot(X[S==0], X[S==1], main = "Desigualdad de ingresos", ylab = "Numero de familias por cada mil", names = c("Estados del norte", "Estados del sur"), col = c("blue"))
