
#Función para extraer unformación
extraccion_De_bases <- function(){
  
  base_De_bases <-list()
  
  for (i in 1:5){
    base_De_bases[[i]] <- read.csv(paste0("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base",i,".csv"))
    print(paste0("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base",i,".csv"))
    
  }
  return(base_De_bases)
  
} 


