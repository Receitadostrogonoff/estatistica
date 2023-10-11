#atividade 7

#treemap do municipios do rio de janeiro.


#passo 1 - "chamar o caminho da basede dados"

library(readxl)

BasesMunicipios <- read_excel("C:/Users/14086606798/Downloads/BasesMunicipios.xlsx")
View(BasesMunicipios)

#passo 2 - instalar a bliblioteca treemap  e usa-la
?treemap

library(treemap)


#por população de regiao

treemap(BasesMunicipios,
        index=c("Regiao"),
        vSize="Populacao",
        vColor="Populacao",
        type="value",
        palette = "RdBu")

#por população de cidades
treemap(BasesMunicipios,
        index=c("Munic"),
        vSize="Populacao",
        vColor="Populacao",
        type="value",
        palette = "Set2")

#por  arrecadação de iss dos municipios
treemap(BasesMunicipios,
        index=c("Munic"),
        vSize="ISS",
        vColor="ISS",
        type="value",
        palette = "Set3")


#atividade 8 
# duas variaveis quantitativas 

library(readxl)
QE <- read_excel("C:/Users/14086606798/Downloads/Questionario_Estresse.xls")
View(QE)

# dispersao entre o desempenho e as horas de estudo

#falar sobre a importancia de dormir


plot(QE$Desempenho, QE$Horas_estudo,
     main = "Diagrama de dispersao entre o desempenho e as horas de estudo",
     xlab = "Desempenho ", ylab = "Horas de estudo",pch=2,"blue")
abline(lsfit(QE$Desempenho, QE$Horas_estudo), col="red")

#correlação o entre o desempenho e as horas de estudo
?colors


cor(QE$Desempenho, QE$Horas_estudo)
#0.2231532