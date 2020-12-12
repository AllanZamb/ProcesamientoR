################################################################################
#Realizamos un merge con otra base de datos
#Traemos solo los paises y la cantidad de nuevos casos

library(dplyr)
library(ggplot2)
library(gganimate)
library (gifski)
paises<- read.csv("https://covid19.who.int/WHO-COVID-19-global-data.csv")

colnames(paises) <- c("Date_reported" , 
                      "Country_code","Country", 
                      "WHO_region", "New_cases",
                      "Cumulative_cases", 
                      "New_deaths","Cumulative_deaths")

colnames(paises)
casos_nuevos_pais <- paises %>% group_by(Country) %>%
  summarise(Casos_N = sum(New_cases)) %>%
  arrange(desc(Casos_N))

poblacion <- read.csv("https://raw.githubusercontent.com/AllanZamb/CURSO-R/main/BasesDataFrame/pop_world.csv")
colnames(poblacion) <- c("Country", "Pop")
nueva <- left_join(casos_nuevos_pais, poblacion, by= "Country")
#Realizamos la mezcla de las tablas
Casos_por_millon <- nueva %>% mutate(Casos_Nmillon = as.numeric(round(Casos_N / Pop * 1000000,0)))  


#############################################################################3
paises_filtrado_pais <- paises %>%  filter(Country == c("Mexico", "Denmark")) %>% 
  group_by(Fecha_Reporte = Date_reported, Pais=Country) %>% 
  summarise(Casos_Nuevos = sum(New_cases)) 

paises_filtrado_pais$Fecha_Reporte <- as.Date(paises_filtrado_pais$Fecha_Reporte, format = "%Y-%m-%d")

ggplot(paises_filtrado_pais,
       aes(x = Fecha_Reporte,
           y = Casos_Nuevos,
           color = Pais)) +
  geom_bar(stat="identity") +
  geom_line() +
  #facet_grid(Pais~.) + 
  transition_reveal(Fecha_Reporte)
