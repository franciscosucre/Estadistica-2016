# Practica_2 --------------------------------------------------------------

# 1 Construir el vector 1 a 5 y llamarlo a
# 2 Construir el vector 1 a 10 y almacenarlo en la variable b
# 3 Efectuar a + b, a - b y a * b, ¿están bien definidos? ¿por qué?
# 4 Construir el vector x concatenando a y b
# 5 Revertir el orden de x y almacenarlos en la variable y
# 6 Mostrar los elementos únicos de x
# 7 Mostrar los suma acumulativa de x y su respectivo histograma
# 8 Estimar la media, varianza y desviación estándar de y

# Parte I -----------------------------------------------------------------

a <- 1:5

# Parte II -----------------------------------------------------------------

b <- 1:10

# Parte III -----------------------------------------------------------------

a+b #It actually isn't well defined, but R doesn't cares, it just solves it with the repetition trick.
a-b #Basically, it completes 'a' so it matches 'b' in size, repeating the elements.
a*b #So 'a' acts as (1,2,3,4,5,1,2,3,4,5) for the purposes of these 3 operations.

# Parte IV -----------------------------------------------------------------

x <- c(a,b)

# Parte V -----------------------------------------------------------------

y <- rev(x)

# Parte VI -----------------------------------------------------------------

unique(x)

# Parte VII -----------------------------------------------------------------

hist(cumsum(x))

# Parte VIII -----------------------------------------------------------------

mean(y)
var(y)
sd(y)
