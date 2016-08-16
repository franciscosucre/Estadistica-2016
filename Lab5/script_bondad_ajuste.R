### Pruebas de bondad de ajuste #####

#### Problema 1: dist. uniforme ####


## 90 ratas bajan, de una en una, por una rampa que conduce a 3 puertas. Se 
## encontraron 23 ratas que prefieren la puerta 1, 36 que prefieren la puerta 2
## y 31 ratas que prefieren la puerta 3. Al nivel de significancia 0.05, ¿se
## puede afirma que las ratas no muestran preferencia al elegir una puerta?

alpha=0.05
n=90
k=3
r=0
p=c(1/3, 1/3, 1/3)
fi=c(23, 36, 31)
chi2_obs=sum((fi-n*p)^2/(n*p))
chi2_obs
chi2.alpha=qchisq(1-alpha,k-1-r)
chi2.alpha
#Como el observado cayo en no Rechazo, los datos
#pudieron haber sido generados con un uniforme

p_valor=1-pchisq(chi2_obs, k-1-r)
p_valor

prop.test(fi,c(90,90,90),p)

#### Problema 2:   normalidad  ####

## Se dispone de una muestra aleatoria de 250 apartamentos, cuyos costos 
## mensuales en condominio (en Bs.F) son los presentados en la tabla, y queremos
## saber si los datos de esta muestra provienen una distribución normal, con 
## un nivel de significancia de 0.05.

##     Costos  | Número de apartamentos   ##
##     30-40   |         15               ##
##     40-50   |         18               ##
##     50-60   |         22               ##
##     60-70   |         50               ##
##     70-80   |         62               ##
##     80-90   |         55               ##
##     90-100  |         22               ##
##    100-110  |          6               ##


r=2 ## Como hay que calcular la media y la varianza se pierden dos g.l.

fi=c(15, 18, 22, 50, 62, 55, 22, 6)

qqnorm(fi)
qqline(fi)

(k=length(fi))
(n=sum(fi))
mi=c(35, 45, 55, 65, 75, 85, 95, 105)
(xbarra=sum(fi*mi)/n)
x_barra=rep(xbarra, k)
S_cuadrado=sum(fi*(mi-x_barra)^2)/(n-1)
(S=sqrt(S_cuadrado))

(pi=pnorm(4 : 11* 10, xbarra, S) - pnorm(3 : 10 *10, xbarra, S))

chi2_obs=sum((fi-n*pi)^2/(n*pi))
chi2_obs
chi2_alpha=qchisq(1-alpha, k-1-r)
chi2_alpha
(p_valor=1-pchisq(chi2_obs, k-1-r))

####  Problema 3: Tabla de contingencia  ####

## Se quiere saber si existe relación entre el color de los ojos y el color de
## cabello en las personas, a nivel de significación del 5%. Para ello se 
## observaron 560 personas y se obtuvo lo siguiente:

##                  | Cabello negro | Cabello castaño | Cabello rubio|
##  Ojos negros     |      73       |       37        |       5      |
##  Ojos marrones   |      52       |      215        |      15      |
##  Ojos verdes     |      17       |       25        |      51      |
##  Ojos azules     |      15       |       12        |      43      |

# H_0: Hay independencia entre el color de los ojos y el color de cabello
# H_a: Hay relación entre el color de ojos y el color de cabello

c=3
r=4
negro=c(73, 52, 17, 15)
castanho=c(37, 215, 25, 12)
rubio=c(5, 15,51,43)
(matriz=cbind(negro, castanho, rubio))
chisq.test(matriz)


? chisq.test
