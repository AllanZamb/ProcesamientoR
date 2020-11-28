################################################################################
########## Practica 4 ##########################################################
################################################################################

# DIABÉTES, HIPERTENSIÓN, OBESIDAD, ADULTOMAYOR

nombre_paciente <- c()
edad_paciente <- c()
sexo_paciente <- c()

paciente_diabetico <- c()
paciente_hipertenso <-c ()
paciente_obesidad <- c()

paciente_temperatura <- c()
paciente_dolor_cabeza <- c()
paciente_dolor_torax <-c()
paciente_dif_respiratoria <- c()

#Ciclo iterativo para cinco pacientes

for (i in 1:1) {
  
  #RECOLECCIÓN DE DATOS DE LOS PACIENTES
  nombre_paciente[i] <- readline(prompt = "Nombre del paciente: ")
  edad_paciente[i] <- readline(prompt = "edad del paciente: ")
  sexo_paciente[i] <- readline(prompt = "sexo del paciente: ")
  
  paciente_diabetico[i] <- readline(prompt = "¿Paciente es diabético? (S/N)")
  paciente_hipertenso[i] <- readline(prompt = "¿Paciente es hipertenso? (S/N)")
  paciente_obesidad[i] <- readline(prompt = "¿Paciente es obeso? (S/N)")
  
  paciente_temperatura[i] <- readline(prompt = "Cuál es la temperatura del paciente?")
  paciente_dolor_cabeza[i] <- readline(prompt = "El paciente tiene dolor de cabeza?")
  paciente_dolor_torax[i] <- readline(prompt = "El paciente presenta dolor de torax?")
  
  #ANALIZAMOS AL PACIENTE
  
  
  if(edad_paciente > 60){
    print("El paciente tiene probabilidad de complicación")
    
    
    if(paciente_temperatura > 38.5 | paciente_dolor_torax == "S" ){
      print("paciente con fiebre, trasladar a hospital")
    }
    
  }else{
    print("Paciente menor a 60 años")
    
  }
  
}




#alan <- readline(prompt = "Nombre del paciente: ")
