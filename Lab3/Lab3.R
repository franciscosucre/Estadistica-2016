# Laboratorio 3
# Estadistica Para Ingenieros
# Francisco Sucre 10-10717
# José Cipagauta 05-38040

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

# Respuesta: 

# 2. Calcule intervalos de confianza del 97 % para la media de la nota de cada sección. 
# ¿Qué consideraciones se deben tomar en cuenta para construir estos intervalos?



# 3. ¿Qué conclusiones puede sacar a partir de los intervalos de confianza de sus variables? 
# En particular, ¿cómo comparariría los resultados entre secciones?



# 4. Si realizan la comparación de los intervalos de confianza entre años, 
# ¿cómo los comparariría? ¿Qué puede concluir al hacer la comparación?

