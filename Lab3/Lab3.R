# Laboratorio 3
# Estadistica Para Ingenieros
# Francisco Sucre 10-10717
# José Cipagauta 05-38040

# Cargamos la data
Notas11_12 <- read.table("Notas11-12.txt", header = T)
Notas12_13 <- read.table("Notas12-13.txt", header = T)
Notas11_12 <- scan("Notas11-12.txt")
Notas12_13 <- scan("Notas12-13.txt")

# 1. Utilizando las graficas vistas en clases, ¿cúales de las secciones tienen notas que se 
# distribuyen normal?

# Grafico Notas11_12
par(mfrow=c(1,1))
hist(Notas11_12)
boxplot(Notas11_12)
qqnorm(Notas11_12)
qqline(Notas11_12)

# Respuesta: 

# Grafico Notas12_13
par(mfrow=c(1,1))
hist(Notas12_13)
boxplot(Notas12_13)
qqnorm(Notas12_13)
qqline(Notas12_13)

# Respuesta: 

# 2. Calcule intervalos de confianza del 97 % para la media de la nota de cada sección. 
# ¿Qué consideraciones se deben tomar en cuenta para construir estos intervalos?



# 3. ¿Qué conclusiones puede sacar a partir de los intervalos de confianza de sus variables? 
# En particular, ¿cómo comparariría los resultados entre secciones?



# 4. Si realizan la comparación de los intervalos de confianza entre años, 
# ¿cómo los compararir´ıa? ¿Qué puede concluir al hacer la comparación?

