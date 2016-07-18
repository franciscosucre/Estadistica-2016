# Practica_4 --------------------------------------------------------------

# Dado los datos USJudgeRatings
# 1 Entienda la estructura de los datos, ?USJudgeRatings muestra los
# detalles de cada columna
# 2 Estime el juez con mayor y/o menor score rowSums, min, max
# 3 Estime el promedio grupal (summary) y los promedios de cada prueba
# 4 Ordene los jueces según su score sort, matrix, rownames


# Parte I -----------------------------------------------------------------

data("USJudgeRatings")
# Muestra los datos del tipo de datos
?USJudgeRatings
# La tabla contiene un conjunto de puntuaciones del 1 al 10 en distintas
# caracteristicas de cada juez


# Parte II ----------------------------------------------------------------

# Calculamos la puntuacion total de todos los jueces
judgeScores = rowSums(USJudgeRatings)
# Calculamos la mayor puntuacion
mejorJuez = max(judgeScores)
# Calculamos la menor puntuacion
peorJuez = max(judgeScores)

# Parte III ---------------------------------------------------------------

# Obtenemos el promedio de todos los puntajes
summaryTotal = summary(judgeScores)
# Segun summary el promedio
scoreAverage = 90.88
# Obtenemos el promedio de las pruebas
summaryOriginal = summary(USJudgeRatings)
# Los promedios de las pruebas son:
contAverage = 7.437
intgAverage = 8.021
dmnrAverage = 7.516
dilgAverage = 7.693
cfmgAverage = 7.479
deciAverage = 7.565
prepAverage = 7.467
famiAverage = 7.488
oralAverage = 7.293
writAverage = 7.384
physAverage = 7.935
rtenAverage = 7.602

# Parte IV ----------------------------------------------------------------
# Oredenmos a los jueces segun su puntuacion
orderedJudges = sort(judgeScores,decreasing = TRUE)