################################################################################
######################## PRACTICA 1 ############################################
################################################################################

#5 Tipos de variables (atómicas)


#Tipo de dato Char
variable_char <- "hola como estás?"

#Tipo de dato numérico
variable_numerica <- 5.56

#Tipo de dato entero
variable_entera <- 10L

#Tipo de dato logicos
variable_logica <- F

#Función para comprobar qué tipo de dato tenemos
class(variable_logica)


#Funcion llamada Vector
#Limitado a almacenar tipos de datos iguales

variables_caracteres <- c("a", "b", "c", "d","e")
variables_numericas <- c(5.36,3.25,9.98, 99.99999, 1)
variables_enteras <- c(10L, 15L, 50L, 25L, 89L)
variables_logicas <- c(T,F,T,FALSE,TRUE)


#Almacenar vectores y valores de diferentes datos
#Lista me puede almacenar diferentes estructuras (vectores) o tipos de datos diferentes
# [INT][CHAR][NUMERIC][TRUE][FALSE][VECTOR][GRAFICA][MAPA][DATAFRAMES]

variables_mixtas <- list(variables_caracteres, 
                         variables_numericas, 
                         variables_enteras, 
                         variables_logicas, 
                         "Hola", 5.36, 5L)


#Introducir a mi elemento lista
variables_mixtas[[2]][3]




#Comentarios
#Vectores
#Listas

#1 PASO Construir los vectores

#Nombre de tres Películas (char) 

#Calificación de tres peliculas (numerico)

#Año de trees películas (int)

#Criticas de tres películas (char)

#Si te gustó o no a¿la película (T ,F)


#2 CONSTRUIR LA LISTA CON VECTORES










length(variables_mixtas)



class(variables_mixtas[2])



