# Practica_3 --------------------------------------------------------------

# El objetivo de esta práctica es entender el efecto que produce el comando attach
# 1 Cargar los datos cars: data(cars)
# 2 Ejecute plot(speed, dist)
# 3 Guardar el vector de 1 a 25 en paso 0.5 en la variable speed
# 4 Construya el vector dist como el cuadrado de speed
# 5 Ejecute el comando plot(speed, dist)
# 6 Cómo se puede volver a acceder a las variables speed y dist asociados a cars?

# Parte I -----------------------------------------------------------------

data(cars)
attach(cars)

# Parte II ----------------------------------------------------------------

plot(speed, dist)

# Parte III ---------------------------------------------------------------

# Coloque 0.5 para que tenga el mismo tamano que el vector speed original
speed = seq(0.5,25,0.5)

# Parte IV ----------------------------------------------------------------

dist = speed ^ 2

# Parte V -----------------------------------------------------------------

plot(speed, dist)

# Parte VI ----------------------------------------------------------------

# Podemos acceder a las variables asociadas a cars utilizando la notacion
#  cars$speed o cars$dist

# Al hacer detach retornamos 
detach(cars)