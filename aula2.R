#passo 1
#dowload da base de dados
#install.packages("usethis")
#usethis::use_course("https://github.com/DATAUNIRIO/Base_de_dados/archive/master.zip")

#passo 2 - importar um arquivo do excel

#library(readxl)
#restaurante <- read_excel("C:\\Users\\14086606798\\Desktop\\Base_de_dados-master\\restaurante.xlsx")
#View(restaurante)

#passo 3 - importar arquivo por csv
library(readr)
Familias2 <- read_delim("C:\\Users\\14086606798\\Desktop\\Base_de_dados-master\\Familias2.csv", 
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(Familias2)

#passo 4 - carregar um Rdata

load("~/C:/Users/14086606798/Desktop/Base_de_dados-master/CARROS.RData")
View("CARROS")
 
#segunda parte da aula - 29/08/2023

summary(restaurante)

summary(Familias2)

#1. na base de dados familia temos a renda (variavel quantitativa) armazenado como texto.
#2. na base de dados carros o tipo de marcha (variavel qualitativa) esta como quantitativo.
#3.temos o problema de caracter especial na base de dAdos fam.

CARROS$TipodeMarcha = ifelse(CARROS$TipodeMarcha==0,"automatico","manual")

CARROS$Tipodecombustivel = ifelse(CARROS$Tipodecombustivel==0,"Gas","alcool")

tabela_comb = table(CARROS$Tipodecombustivel)
tabela_marcha = table(CARROS$TipodeMarcha)

prop.table(tabela_comb) #quantidade dividido pelo total
round(prop.table((tabela_comb)*100,1) #arredondar uma casa decimal

#criar grafico de pizza
pie(tabela_comb

#colocar um titulo
pie(tabela_comb, col=c("#D400FF","pink"))

#saber as cores
colors() 
