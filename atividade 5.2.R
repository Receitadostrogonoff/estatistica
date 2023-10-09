

#atividade 6 - mapa dos municipios do rio de janeiro

#fazer um mapa do estado do rio de janeiro da variavel esperança de vida 
#extrair da base de dados

library(readxl)
BasesMunicipios <- read_excel("C:/Users/14086606798/Downloads/BasesMunicipios.xlsx")
View(BasesMunicipios)

#blibliotecas que serão usadas para o mapa.

library(ggplot2)
library(geobr)
library(dplyr)
library(RColorBrewer)
library(sf)

#para ler os municipos do RJ

desenho_municipios = read_municipality(code_muni = "RJ", showProgress = FALSE)


class(BasesMunicipios)
class(desenho_municipios)
plot(desenho_municipios)

class(desenho_municipios$code_muni)
class(BasesMunicipios$`COD IBGE`)

BasesMunicipios$`COD IBGE` = as.numeric(BasesMunicipios$`COD IBGE`)

#aq parou
BasesMunicipios <-BasesMunicipios %>% left_join(BasesMunicipios, by = c("COD IBGE" = "ibge_code"))

mapa_vida = desenho_municipios %>% left_join(BasesMunicipios)

summary(BasesMunicipios$Esperancadevida)

mapa3 = ggplot() + 
  geom_sf(data=BasesMunicipios, aes(fill=Esperancadevida))
  scale_fill_distiller(palette = "Reds", direction = 1, name="taxa analfabetismo",
                       limits = c(11,29))
ggplotly(mapa3)
  
                       