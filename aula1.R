

aa = 13

bb <- 56

bb <- 58

cc = aa + bb

cc

dd = aa/bb
dd


ee = dd + cc
ee

bb = 60

class(ee)

class(bb)

meutexto = 'Aula'

class(meutexto)

meutexto2 = "UNIRIO"


ff = "59"
ff

# ff + bb daria erro

ff = as.numeric(ff) #trata ff como numero

gg = bb + ff

#---------------------------------------
#vetor
#---------------------------------------

vetor1 = c(12,13,56,58,60,87,99) 
vetor1

#R e r são duas coisas diferentes

mean(vetor1)
median(vetor1)


vetor2 = c('unirio','uff','uerj')

nchar(vetor2)


#pegadinhas 


#vetor3 = c(11,12,13,'14')

vetor4 = c('meu texto 1', 'meu texto 2', ' meu texto 3')

vetor5 = c(1200,1300,1500,1800,2100,na,2300) 
mean(vetor5) # responde com o NA

?mean # ajudar a saber como ajuda na media

mean(vetor5,na.rm = TRUE)
