# Practica_5 --------------------------------------------------------------

# 1 Construir una función que dados dos parámetros x1 y x2 , calcule x1 − x2
# 2 Modifique la función tal que el parámetro de entrada x2 sea opcional, con valor
# por defecto de cero
# 3 Modifique la función del apartado anterior para que el argumento opcional x2 sea
# por defecto 2 veces el parámetro x1


# Parte I -----------------------------------------------------------------

funcionPrueba <- function(x1 , x2) 
{ 
  return ( x1 - x2 ) 
}


# Parte II ----------------------------------------------------------------

funcionPrueba <- function(x1 , x2 = 0) 
{ 
  return ( x1 - x2 ) 
}

# Parte III ---------------------------------------------------------------

funcionPrueba <- function(x1 , x2 = 2 * x1 ) 
{ 
  return ( x1 - x2 ) 
}
