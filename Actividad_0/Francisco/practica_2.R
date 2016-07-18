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

a+b 
a-b 
a*b 

# No esta bien definido pero R resuelve este problema utilizando repeticiones
# para que se pueda efetuar la operacion

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
