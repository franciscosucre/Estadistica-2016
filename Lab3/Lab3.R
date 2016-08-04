# Laboratorio 3
# Estadistica Para Ingenieros
# Francisco Sucre 10-10717
# José Cipagauta 05-38040

# Se tienen las notas del primer examen de tres secciones de un mismo curso. 
# Los examenes son evaluados sobre 100 puntos.

# Cargamos la data
Notas11_12 <- read.table("Notas11-12.txt", header = T, fill=NA)
Notas12_13 <- read.table("Notas12-13.txt", header = T, fill=NA)
attach(Notas11_12)
attach(Notas12_13)

# 1. Utilizando las graficas vistas en clases, ¿cúales de las secciones tienen notas que se 
# distribuyen normal?

# Grafico Notas11_12
# S5
hist(S5)
boxplot(S5)
qqnorm(S5)
qqline(S5)
# No es normal ni se aproxima a serlo, excepto en secciones muy pequeñas

# S6
hist(S6)
boxplot(S6)
qqnorm(S6)
qqline(S6)
# Tiene unas secciones que no se acercan a estar distribuidas de forma normal, pero 
# en la seccion del medio se comporta de manera muy parecida a una distribucion normal

# S13
hist(S13)
boxplot(S13)
qqnorm(S13)
qqline(S13)
# Se aproxima a la distribucion normal, excepto en las colas, aun asi se podria tomar como una
# distribucion normal, pero las conclusiones obtenidas al asumir esto podrian ser erradas

# S3
hist(S3)
boxplot(S3)
qqnorm(S3)
qqline(S3)
# Se aproxima bastante a la distribucion normal asi que si se puede tomar como una
# distribucion normal

# S4
hist(S4)
boxplot(S4)
qqnorm(S4)
qqline(S4)
# Se aproxima a la distribucion normal, excepto en las colas con datos atipicos, no se recomienda tomar como una
# distribucion normal

# S9
hist(S9)
boxplot(S9)
qqnorm(S9)
qqline(S9)
# Se aproxima a la distribucion normal asi que si se puede tomar como una
# distribucion normal

# 2. Calcule intervalos de confianza del 97% para la media de la nota de cada sección. 
# ¿Qué consideraciones se deben tomar en cuenta para construir estos intervalos?

# Consideraciones: Que los datos pertenezcan a una distribucion normal, puede que el
# intervalo no sea el mas correcto o que los resultados no nos presenten informacion 
# util si la distribucion no es normal

S5_tTest = t.test(S5,conf.level = 0.97)
S6_tTest = t.test(S6,conf.level = 0.97)
S13_tTest = t.test(S13,conf.level = 0.97)
S3_tTest = t.test(S3,conf.level = 0.97)
S4_tTest = t.test(S4,conf.level = 0.97)
S9_tTest = t.test(S9,conf.level = 0.97)

S5_tTest
S6_tTest
S13_tTest
S3_tTest
S4_tTest
S9_tTest

# Concluciones interesantes es que considerando que el examen es evaluado sobre 100 puntos
# y en el mejor de los casos, con un 97% de confiabilidad el mayor promedio es 28.64 
# entre todas las secciones, lo cual indica un promedio terriblemente bajo

# 3. ¿Qué conclusiones puede sacar a partir de los intervalos de confianza de sus variables? 
# En particular, ¿cómo comparariría los resultados entre secciones?

# Las comparaciones se harian con intervalos de confianza de la diferencia entre medias

# Comparaciones
t.test(S5,S6,conf.level = 0.97)

# Podemos ver que la media de S6 podria ser mayor que la de S5
# Pero al incluir el 0, podemos decir que las medias son relativamente iguales

t.test(S5,S13,conf.level = 0.97)

# Podemos ver que la media de S13 siempre es mayor que la de S5, por al menos 2 puntos

t.test(S6,S13,conf.level = 0.97)

# Podemos ver que la media de S13 podria ser mayor que la de S6
# Pero al incluir el 0, podemos decir que las medias son relativamente iguales

t.test(S3,S4,conf.level = 0.97)

# Podemos ver que la media de S4 podria ser mayor que la de S3
# Pero al incluir el 0, podemos decir que las medias son relativamente iguales

t.test(S3,S9,conf.level = 0.97)

# Podemos ver que la media de S9 siempre es mayor que la de S3, por al menos 3 puntos

t.test(S4,S9,conf.level = 0.97)

# Podemos ver que la media de S9 es generalmente mayor que la de S4 pero aun asi
# incluye el 0, por lo cual podrian ser iguales


# 4. Si realizan la comparación de los intervalos de confianza entre años, 
# ¿cómo los comparariría? ¿Qué puede concluir al hacer la comparación?

# Se compararian los intervalos de confianza de la diferencia de promedio de todas las 
# notas de las 3 secciones de cada año 

t.test(Notas11_12, Notas12_13, conf.level = 0.97)
# Podemos concluir que los promedios del año 12_13 es mayor a los promedios del año 11_12 
# por lo menos en 3 puntos, con un intervalo de confianza del 97%
