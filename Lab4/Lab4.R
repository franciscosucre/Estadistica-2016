# Laboratorio 4
# Estadistica Para Ingenieros
# Francisco Sucre 10-10717
# José Cipagauta 05-38040

# Se tienen las notas de dos examenes de tres secciones de un mismo curso. 
# Los examenes son evaluados sobre 100 puntos.

# Cargamos la data
Notas11_12 <- read.table("Notas11-12.txt", header = T, fill=NA)
Notas12_13 <- read.table("Notas12-13.txt", header = T, fill=NA)
Notas211_12 <- read.table("Notas211-12.txt", header = T, fill=NA)
Notas212_13 <- read.table("Notas212-13.txt", header = T, fill=NA)

# No se puede realmente usar attach, debido a que ambos datos usan las mismas secciones.

# 1. Determine, usando una prueba de hipótesis, si las medias de las notas del primer examen y el segundo
# examen son distintas, usando una significancia de 3%.

# Primero verificamos si las varianzas son iguales o no para las pruebas de promedios

var.test(Notas11_12$S5, Notas211_12$S5)
# p-value de 0.09, no rechazamos H0 con una significancia de 3%, varianzas iguales

var.test(Notas11_12$S6, Notas211_12$S6)
# p-value de 0.92, no rechazamos H0, varianzas iguales.

var.test(Notas11_12$S13, Notas211_12$S13)
# p-value de 0.8196, no rechazamos H0, varianzas iguales.

var.test(Notas12_13$S3, Notas212_13$S3)
# p-value de 0.079, no rechazamos H0 con una significacia de 3%, varianzas iguales

var.test(Notas12_13$S4, Notas212_13$S4)
# p-value de 0.00195, se rechaza H0, varianzas diferentes

var.test(Notas12_13$S9, Notas212_13$S9)
# p-value de 0.0029, se rechaza H0, varianzas diferentes

# Una vez conocidas si las varianzas son iguales o no, se procede a realizar pruebas de promedios

t.test(Notas11_12$S5, Notas211_12$S5, var.equal = T, conf.level = 0.97)
# p-value con exponencial 10 a la -6, para todos los propositos 0, se rechaza H0, concluimos que que los promedios son diferentes
# las notas del segundo examen tiene un promedio mas alto de por al menos 4.8 puntos con un 97% de confianza

t.test(Notas11_12$S6, Notas211_12$S6, var.equal = T, conf.level = 0.97)
# p-value de 0.12, no se rechaza H0 con una significancia de 3%, concluimos que los promedios son iguales.

t.test(Notas11_12$S13, Notas211_12$S13, var.equal = T, conf.level = 0.97)
# p-value de 0.27, no se rechaza H0 con una significancia de 3%, concluimos que los promedios son iguales.

t.test(Notas12_13$S3, Notas212_13$S3, var.equal = T, conf.level = 0.97)
# p-value de 0.14, no se rechaza H0 con una significancia de 3%, concluimos que los promedios son iguales.

t.test(Notas12_13$S4, Notas212_13$S4, conf.level = 0.97)
# p-value de 0.75, no se rechaza H0 con una significancia de 3%, concluimos que los promedios son iguales.

t.test(Notas12_13$S9, Notas212_13$S9,  conf.level = 0.97)
# p-value de 0.0002, se rechaza H0 con una significancia de 3%, concluimos que los promedios son diferentes
# las notas del primer examen tienen un promedio mas alto de por al menos 4.23 puntos con un 97% de confianza

# 2. ¿A qué conclusiones puede llegar si utilizan el p-valor?.

# Todas las pruebas tienen p-valores interesantes
# La primera con un p-valor con exponencial de 10 a la -6 implica que en todos los casos se deberia 
# rechazar H0, y por lo tanto concluir que los promedios son diferentes
# La segunda, con un p-valor de 0.1255 implicaria que se no rechaza H0 aun para un indice de confidencia del 90%,
# que es lo mos alto que uno deberia estar dispuesto a usar.
# La tercera con un p-valor de 0.275 seria igual a la anterior, nunca se deberia rechazar H0 para cualquier prueba
# Cuarta prueba con p-valor de 0.1478 implica igual a la anterior
# Quinta prueba con p-valor de 0.75 es igual a la anterior
# Sexta prueba con p-valor de 0.00027 implicaria que siempre deberiamos rechazar H0, y los promedios son diferentes
