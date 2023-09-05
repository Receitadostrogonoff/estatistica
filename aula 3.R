load("C:/Users/14086606798/Desktop/Base_de_dados-master/CARROS.RData")

View(CARROS)
summary(CARROS)

mean(CARROS$Kmporlitro)

#os carros dessa base de dados fazem em media 20 km/l

#desvio padrão

sd(CARROS$Kmporlitro)

#fazem em media 20 km/l com desvio padrão de 6 km/l

mean(CARROS$Preco)
 # tem em media o praço de 230 mil.

sd(CARROS$Preco)

max(CARROS$Preco) - min(CARROS$Preco)

#por que usamos os devio padrão e não a amplitude
#por causa dos outliers

dados1 = c(1,2,3,4)
mean(dados1)

dados2 = c(1,2,3,4,50000)
mean(dados2)


#50000 é um outlier

median(dados2)
median(dados1)

#na presença de outliers,a mediana é melhor que a média  
# o desvio padrão é sempre melhor que a amplitude.

# criação de histograma

hist(CARROS$Kmporlitro)

hist((CARROS$Kmporlitro), col = "tan", main = "histograma",
     xlab = "km/l", ylab = "frequencia")

# conlusão ele é assimetrico a direita.

hist((CARROS$Preco), col = "salmon", main = "histograma 2 ",
     xlab = "km/l", ylab = "frequencia")

#conclusao 2 :  Ele é assimetrico a direito com 2 modas.


hist((CARROS$Peso), col = "pink", main = "histograma 3 ",
     xlab = "km/l", ylab = "frequencia")

#outliers e assimetrico

hist((CARROS$RPM), col = "brown", main = "histograma 4 ",
     xlab = "km/l", ylab = "frequencia")


#histograma é para variaveis quantitativas.
#grafico de barras é para variaveis qualitativas.
     
#e variaveis qualitativas discretas?

#stripchart(CARROS$NumdeValvulas, method ='stack', offset = 5,
#           at = 15 ,pch = 19, main = 'grafico - estilo dot', xlab = 'numero de valvulas')


# dot chart para numero de valvulas
dotchart(CARROS$NumdeValvulas, labels = row.names(mtcars),
         cex = 0.9, xlab = "valvulas")

#o histograma pode mostrar a presença de outliers 
# histograma pode ser unimodal ou bimodal.


