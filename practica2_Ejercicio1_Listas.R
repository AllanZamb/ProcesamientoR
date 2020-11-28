###############################################################################
######### PRACTICA 2 VECTORES Y LISTAS ########################################
###############################################################################

#1 PASO Construir los vectores

#Nombre de tres Películas (char) 
#Calificación de tres peliculas (numerico)
#Año de tres películas (int)
#Criticas de tres películas (char)
#Si te gustó o no a la película (T ,F)

#CARGAMOS VECTORES
peliculas_nombre <- c('The Hunger Games 1', 
                      'The Hunger Games 2',
                      'The Hunger Games 3', 
                      'The Hunger Games 4')



peliculas_año <- c(2012L, 2013L, 2014L, 2015L)
peliculas_calificacion <- c(6.2, 6.5, 5.6, 5.6 )
critica_pelicula <- c("La pelcula es una joya y merece que todo conocedor la vea", 
                      "Aunque pareciera que se hace magia con la cinta, durante todo el día me quedé pensando si volverá una secuela mejor que la primera", 
                      "Resula ser la mejor de la saga, sumamente recomendable", 
                      "Es cansado ver cómo siempre es más de lo mismo, sin emba")

likes <- c(T,F,T,T)


#2 CONSTRUIR LA LISTA CON VECTORES

# METEMOS EN LISTAS
lista_peliculas <- list(peliculas_nombre, peliculas_año, peliculas_calificacion, critica_pelicula,likes)

###############################################################################
#Estructuras bidimiensionales (DATAFRAME)

#[][][][][][][][][][][][][][][][][][]
#[][][][][][][][][][][][][][][][][][]

data_frame_peliculas <- as.data.frame(lista_peliculas)

colnames(data_frame_peliculas) <- c("Película", "Año", "Puntuación","Crítica", "Like")

file.choose()

write.csv(data_frame_peliculas, "peliculas_criticas.csv", row.names = F)


