#dever de casa 3

library(readxl)
AptosCriciuma <- read_excel("C:/Users/Micro/Downloads/AptosCriciuma.xls")
View(AptosCriciuma)

#tema escolhido : valor dos apartamentos de criciuma

#media
mean(AptosCriciuma$Valor)

#mediana
median(AptosCriciuma$Valor)

#desvio padrão
sd(AptosCriciuma$Valor)

hist((AptosCriciuma$Valor), col = "tan", main = "histograma do valor dos apartamentos na cidade de criciuma",
     xlab = "Valor dos apartamentos (em mil).", ylab = "frequência")

#
