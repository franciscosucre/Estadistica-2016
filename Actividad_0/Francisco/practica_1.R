# Practica_1 --------------------------------------------------------------

# 1 Construir el vector (11, 12, 13, 14, 15) y llamarlo esc
# 2 Construir el vector (1, 3, 5, 7, 9, 11, 13, 15, 17, 19) y almacenarlo en
# la variable 'vec'
# 3 Construir el vector 'x' concatenando los vectores esc y vec
# 4 Sustituir los elementos en las posiciones 2, 3 y 5 por sus respectivos
# valores negativos
# 5 Eliminar las posiciones 4 y 8
# 6 Mostrar la nueva longitud del vector resultante
# 7 Construir el siguiente vector Nombres=(A, D, X, Z, Y, M, L, B, V, E,                                   R, A, B, T, Z, Z, U)
# 8 Identificar las posiciones donde se encuentra la letra A, B y L
# 9 Extraer conjuntamente las posiciones de las letras A y Z.
# Ayuda:
#   x == 'A' | x == 'Z'

# Parte I -----------------------------------------------------------------

esc <- 11:15

# Parte II -----------------------------------------------------------------

vec <- seq(1:19, 2)

# Parte III -----------------------------------------------------------------

x <- c(esc,vec)

# Parte IV -----------------------------------------------------------------

x[c(2,3,5)] <- x[c(2,3,5)] * -1

# Parte V -----------------------------------------------------------------

x <- x[-c(4,8)]

# Parte VI -----------------------------------------------------------------

length(x)

# Parte VII -----------------------------------------------------------------

Nombres <- c('A','D','X','Z','Y','M','L','B','V','E','R','A','B','T','Z','Z','U')

# Parte VIII -----------------------------------------------------------------

which(Nombres == 'A')
which(Nombres == 'B')
which(Nombres == 'L')

# Parte IX -----------------------------------------------------------------

which(Nombres == 'A' | Nombres == 'Z')
