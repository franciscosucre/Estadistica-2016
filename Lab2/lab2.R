# Laboratorio 2
# Estadistica Para Ingenieros
# Francisco Sucre 10-10717
# José Cipagauta 05-38040

library(MASS) ## loading package MASS
library(stats4) ## loading package stats4

data <- scan("personas.txt", what=numeric(), sep="")

#1
estimator=fitdistr(data,"poisson")
summary(estimator)

# ¿Cuál serı́a el valor esperado y la varianza estimada del número de personas que van a
# comprar en la provedurı́a estudiantil antes de que se venda el décimo dorito?
estimate = estimator$estimate
sd = estimator$sd
varianza = sd^2

# Si una hora especı́fica se atienden 50 personas, ¿cuál es la probabilidad de
# que se vendan más de 10 doritos en esa hora?
dpois(50, lambda, lower.tail = F)
