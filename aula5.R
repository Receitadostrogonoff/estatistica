#dever de casa 04 _ duas variaveis qualitativas

#1 tabela com dua variaveis qualitativas 

# fase 1 - carregar a base de dados
load("C:/Users/14086606798/Downloads/Game of Thrones.RData")

#fase 2 - inspecionar a base de dados - saber o sexo dos personagens

tail(personagens_livro$sexo)


install.packages("dplyr")
library(dplyr)
library(flextable)
library(janitor)

#0 = nao nobre e 1 = nobre

personagens_livro$nobre = ifelse(personagens_livro$nobre==0,"Não nobre","nobre")

tabela = table(personagens_livro$sexo, personagens_livro$nobre)
barplot(tabela)



#proporção de mulheres para homens
personagens_livro %>% select(sexo,nobre) %>%
  janitor::tabyl() %>%
  adorn_percentages("row") %>%
  adorn_pct_formatting(digits = 2) %>%
  adorn_ns %>% flextable() %>% theme_zebra()


#forma correta 

janitor::tabyl(personagens_livro,sexo,nobre) %>%
  adorn_percentages("row") %>%
  adorn_pct_formatting(digits = 2) %>%
  adorn_ns %>% flextable() %>% theme_zebra()


#conclusão

barplot(tabela, main = "sexo dos personagens",
        col=c("tan","blue"), beside = TRUE, 
        legend.text = rownames(tabela),
        args.legend = list(x = "topleft"))

# O universo de game of thrones possui uma ambiente masculino, logo o numero de homens é maior que o numero de mulheres.
#possui um numeros de homens não nobres maior do que um de nobres.
#possui um numero de mulheres nobres maior do que o numero de não nobres.

