lfeminicidio_2022 <- read.csv("C:/Users/14086606798/Downloads/feminicidio_2022.csv", sep=";")

lfeminicidio_2022$qtde_vitimas = as.double(lfeminicidio_2022$qtde_vitimas) #as.double ?? o mais parecido com o as numeric

View(lfeminicidio_2022)


library(dplyr)
?case_when

#alterar o no9me do mes
lfeminicidio_2022 = lfeminicidio_2022 %>%
  mutate(
    mes_cat = case_when(
      mes==1 ~ "janeiro",
      mes==2 ~ "fevereiro",
      mes==3 ~ "marco",
      mes==4 ~ "abril",
      mes==5 ~ "maio",
      mes==6 ~ "junho",
      mes==7 ~ "julho",
      mes==8 ~ "agosto",
      mes==9 ~ "setembro",
      mes==10 ~ "outubro",
      mes==11 ~ "novembro",
      mes==12 ~ "dezembro",
      .default = "outros"
    )
  )

#alterar o nome da regiao

lfeminicidio_2022 = lfeminicidio_2022 %>%
  mutate(
    departamento = case_when(
      risp=="1B\\: Departamento \\- Belo Horizonte" ~ "Belo horizonte",
      risp=="2B: Departamento - Contagem" ~ "Contagem",
      risp=="3B: Departamento - Vespasiano" ~ "Vespasiano",
      risp=="10B: Departamento - Patos de Minas" ~ "Pato de minas",
      risp=="11B: Departamento - Montes Claros" ~ "Montes claros"
      risp=="12B: Departamento - Ipatinga" ~ "Ipatinga",
      risp=="13B: Departamento - Barbacena" ~ "Barbacena",
      risp=="14B: Departamento - Curvelo" ~ "Curvelo",
      risp=="15B: Departamento - TeC3filo Otoni" ~ "Teofilo otono",
      risp=="16B: Departamento - UnaC- " ~ " Unac",
      risp=="17B: Departamento - Pouso Alegre" ~ "Pouso alegre"
      risp=="18B: Departamento - PoC'os de Caldas" ~ "Poco de caldas",
        
      .default = "outros"
    )
  )


