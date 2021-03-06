# Laboratorio 5
# Estadistica Para Ingenieros
# Francisco Sucre 10-10717
# José Cipagauta 05-38040

# 1. Se tienen los datos de las áreas de 747 terrenos, medidos en m2 . Se cree, que por esos
# datos ser cuadrados, tienen una distribución gamma con parámetros desconocidos.

dist = scan("dist.txt")

# Instrucciones
# 1. Utilice la función “sample” de R para obtener una muestra de
# tamaño 300 sin reemplazo de la variable que le corresponde.
total = 300
prueba = sample(dist,total)

# 2. Utilice la función “fitdistr” de la libreria MASS para ajustar el parámetro de la
# distribución que debe tener los datos de la parte 1.
library(MASS) ## Cargando libreria MASS para usar fitdistr
gammaDist = fitdistr(prueba,"gamma")
parametros = gammaDist$estimate
parametros
alpha = parametros[1]
beta = parametros[2]
# 3. Utilice la función “hist( * , plot =F)” para obtener una tabla de frecuencias de los
# datos de la parte 1. Adapte dicha tabla para poder realizar la bondad de ajuste. 

histogram = hist(prueba,plot=F)

# 4.Calcule el estadı́stico X 2 correspondiente a la prueba χ2, y diga si rechaza
# o no la hipótesis nula para un nivel de significancia del 8 %, calculando
# tanto la región de rechazo del estadı́stico, como el p-valor

significacia = 0.08
counts = histogram$counts
# Se tuvieron que estimar los parametros alpha y beta asi que se pierden grados de libertad
gradosLibertadPerdidos = 2

probabilidad = pgamma(histogram$breaks[2:length(histogram$breaks)],alpha,beta) - pgamma(histogram$breaks[1:length(histogram$breaks)-1],alpha,beta)
esperado = total * probabilidad

chi2 = sum(((counts - esperado)**2)/(esperado))
chi2

# Region De Rechazo
chi2_alpha=qchisq(1-significacia,length(counts) - 1 - gradosLibertadPerdidos)
chi2_alpha
# Como el estadistico no cayo en la region de rechazo, los datos
# pudieron haber sido generados con una distribucion gamma
p_valor=1-pchisq(chi2, length(counts) - 1 - gradosLibertadPerdidos)
p_valor
