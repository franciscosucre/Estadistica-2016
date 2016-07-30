# Laboratorio 2
# Estadistica Para Ingenieros
# Francisco Sucre 10-10717
# José Cipagauta 05-38040

library(MASS) ## Cargando libreria MASS para usar fitdistr

data <- scan("personas.txt")

#1
estimator=fitdistr(data,"poisson")
summary(estimator) ##Summary muestra cosas extrañas y locas aqui

# ¿Cuál serı́a el valor esperado y la varianza estimada del número de personas que van a
# comprar en la provedurı́a estudiantil antes de que se venda el décimo dorito?
lambda = estimator$estimate
esperado = lambda
esperado
varianza = lambda
varianza

# Si una hora especı́fica se atienden 50 personas, ¿cuál es la probabilidad de
# que se vendan más de 10 doritos en esa hora?
probabilidad = ppois(50, lambda)
probabilidad
