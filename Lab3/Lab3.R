# Laboratorio 3
# Estadistica Para Ingenieros
# Francisco Sucre 10-10717
# José Cipagauta 05-38040

# Se tienen las notas del primer examen de tres secciones de un mismo curso. 
# Los examenes son evaluados sobre 100 puntos.

# Cargamos la data
Notas11_12 <- read.table("Notas11-12.txt", header = T,fill=NA)
Notas12_13 <- read.table("Notas12-13.txt", header = T,fill=NA)
attach(Notas11_12)
attach(Notas12_13)

# 1. Utilizando las graficas vistas en clases, ¿cúales de las secciones tienen notas que se 
# distribuyen normal?

# Grafico Notas11_12
# S5
par(mfrow=c(1,1))
hist(S5)
boxplot(S5)
qqnorm(S5)
qqline(S5)
# NO es normal ni se aproxima a serlo, excepto en secciones muy pequeñas

# S6
par(mfrow=c(1,1))
hist(S6)
boxplot(S6)
qqnorm(S6)
qqline(S6)
# Tiene unas secciones que no se acercan a estar distribuidas de forma normal, pero en 
# pero en la seccion del medio se comporta de manera muy parecida a una distribucion normal

# S13
par(mfrow=c(1,1))
hist(S13)
boxplot(S13)
qqnorm(S13)
qqline(S13)
# Se aproxima a la distribucion normal, excepto en las colas, pero si se puede tomar como una
# distribucion normal

# S3
par(mfrow=c(1,1))
hist(S3)
boxplot(S3)
qqnorm(S3)
qqline(S3)
# Se aproxima a la distribucion normal asi que si se puede tomar como una
# distribucion normal

# S4
par(mfrow=c(1,1))
hist(S4)
boxplot(S4)
qqnorm(S4)
qqline(S4)
# Se aproxima a la distribucion normal, excepto en las colas, pero si se puede tomar como una
# distribucion normal

# S9
par(mfrow=c(1,1))
hist(S9)
boxplot(S9)
qqnorm(S9)
qqline(S9)
# Se aproxima a la distribucion normal asi que si se puede tomar como una
# distribucion normal

# 2. Calcule intervalos de confianza del 97 % para la media de la nota de cada sección. 
# ¿Qué consideraciones se deben tomar en cuenta para construir estos intervalos?

# Consideraciones: SI los datos se comportan como una distribucion normal, puede que el
# intervalo no sea el mas correcto o que los resultados no nos presenten informacion 
# util

S5_tTest = t.test(S5,conf.level = 0.97)
S6_tTest = t.test(S6,conf.level = 0.97)
S13_tTest = t.test(S13,conf.level = 0.97)
S3_tTest = t.test(S3,conf.level = 0.97)
S4_tTest = t.test(S4,conf.level = 0.97)
S9_tTest = t.test(S9,conf.level = 0.97)


# 3. ¿Qué conclusiones puede sacar a partir de los intervalos de confianza de sus variables? 
# En particular, ¿cómo comparariría los resultados entre secciones?
S5_tTest
S6_tTest
S13_tTest
S3_tTest
S4_tTest
S9_tTest

# Comparaciones
t.test(S5,S6,conf.level = 0.97)

# Podemos ver que la media de S5 en general deberia ser mucho mayor que la de S6
# Pero podemos decir que las medias pueden ser iguales

t.test(S5,S13,conf.level = 0.97)

# Podemos ver que la media de S5 siempre es mayor que la de S13

t.test(S6,S13,conf.level = 0.97)

# Podemos ver que la media de S6 en general deberia ser mucho mayor que la de S13
# Pero podemos decir que las medias pueden ser iguales

t.test(S3,S4,conf.level = 0.97)

# Podemos ver que la media de S3 en general deberia ser mucho mayor que la de S4
# Pero podemos decir que las medias pueden ser iguales

t.test(S3,S9,conf.level = 0.97)

# Podemos ver que la media de S3 siempre es mayor que la de S9

t.test(S4,S9,conf.level = 0.97)

# Podemos ver que la media de S4 casi siempre es mayor que la de S9 pero nunca es igual

# 4. Si realizan la comparación de los intervalos de confianza entre años, 
# ¿cómo los comparariría? ¿Qué puede concluir al hacer la comparación?

# Comparacion De Varianzas por años
var.test(c(S5,S6,S13),c(S3,S4,S9),conf.level = 0.97)
# Podemos concluir que las medias que las varianzas de ambos años se pueden tomar como 
# iguales ya que el intervalo de confianza incluye al 1
