#aula 7

#passo 1 - importaçao da base de dados

library(readxl)

load("C:/Users/14086606798/Desktop/Base_de_dados-master/df_pokemon.RData")
View(df)

# hipoteses

#1.quem tem o ataque forte tem dfesa forte
#2.quem tem muito hp tem ataque forte.
#3.quem tem muito ataque tem  que ser rapido)

# passo 2 - analise gráfica

#grafico1 - correlaçao entre duas variavel quantitativas.

plot(df$attack, df$defense,
     main =  "grafico 1 - diagrama de dispersão do ataque e defesa",
     xlab = "ataque do pokemon",  ylab = "defesa", pch=20, col="red")
abline(lsfit(df$attack, df$defense))

#hipote verificada, quanto maior o ataque, maior a defesa.


#grafico2

plot(df$hp, df$attack,
     main = "grafico 2 - diagrama de dispersão do hp e ataque",
     xlab = "hp do pokemon ", ylab = "ataque",pch=20,"blue")
abline(lsfit(df$attack, df$defense), col="red")


#grafico 3

plot(df$attack, df$speed,
     main = "grafico 3 - diagrama do ataque do dispersão e velocidade",
     xlab = "Ataque ", ylab = "velocidade",pch=20,"orange")
abline(lsfit(df$hp, df$attack), col="darkblue",lwd=2)


#estatisticas - para medir relaçãoentre duas variaveis quantitativas 

#correlação 

#informações 

#1. ela é sempre um valor entre -1 e 1 
#2. valores proximos de zero indicam ausencia de correlção (situação 2)
#3. valores negativos indicam (situação 1 )


cor(df$attack, df$defense)
#0.4317745
#correlação positiva moderadaentre o ataque e defesa

cor(df$hp, df$attack)
# 0.4298658
#correlação positiva moderada entre ao Hp e o ataque 

cor(df$attack, df$speed)
#0.3356615
#correlação positiva moderada entre ao de a defesa e a velocidade

cor(df$speed, df$attack)
#0.3356615
#é igual ao a correlação do acorrelação positiva moderada entre ao de a defesa e a velocidade




#segunda parte da aula 

load("C:\Users\14086606798\Desktop\Base_de_dados-master\BasesEstados.xlsx")
View(BaseEstados)

library(treemap)

treemap(BaseEstados,
        index=c("Sigla"),
        vSize="Populacao",
        vColor="Populacao",
        type="value",
        palette = "RdBu")


treemap(BaseEstados,
        index=c("Sigla"),
        vSize="Despesa_Corrente",
        vColor="Despesa_Corrente",
        type="value",
        palette = "Purples")


library(deflateBR)

deflate(1000, as.Date("2023-01-01"), "08/2023", "ipca")
