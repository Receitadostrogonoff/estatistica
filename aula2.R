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
 