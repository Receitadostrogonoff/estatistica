#atividade 6 - mapa dos municipios do rio de janeiro

#fazer um mapa do estado do rio de janeiro da variavel esperança de vida 
#extrair da base de dados

library(readxl)
BasesMunicipios <- read_excel("C:/Users/14086606798/Desktop/Base_de_dados-master/BasesMunicipios.xlsx")
View(BasesMunicipios)



#blibliotecas que serão usadas para o mapa.

library(ggplot2)
library(geobr)
library(dplyr)
library(RColorBrewer)
library(sf)
library(plotly)

#para ler os municipos do RJ

desenho_municipios = read_municipality(code_muni = "RJ", showProgress = FALSE)


class(BasesMunicipios)
class(desenho_municipios)
plot(desenho_municipios)

class(desenho_municipios$code_muni)
class(BasesMunicipios$`COD IBGE`)

BasesMunicipios$`COD IBGE2` = as.numeric(BasesMunicipios$`COD IBGE2`)

#aq parou
BasesMunicipios1 <-desenho_municipios %>% left_join(BasesMunicipios, by = c( "code_muni"="COD IBGE2"))


summary(BasesMunicipios1$Esperancadevida)

mapa3 = ggplot() + 
  geom_sf(data=BasesMunicipios1, aes(fill=Esperancadevida)) +
  scale_fill_distiller(palette = "Reds", direction = 1, name="esperança de vida ao nascer",
                       limits = c(71,77))
ggplotly(mapa3)


#hipotese a ser criadas
