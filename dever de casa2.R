#dever de casa 
#problema 

load("C:/Users/14086606798/Desktop/Base_de_dados-master/Eleicoes/prefeito_1Turno.Rdata")

View(prefeito_1Turno)
summary(prefeito_1Turno)

tiponome = table(prefeito_1Turno$SIGLA_PARTIDO)
prop.table(tiponome)

round(prop.table((tiponome)*100))

as.numeric(tiponome)

#numeros de partidos = 37 partidos

barplot(tiponome, col=c("#D400FF","blue","wheat1","violetred4","slategrey",
                        "pink4","palegreen4","aliceblue", "beige", "beige",
                        "bisque" ,"cadetblue1","chocolate1","orangered","oldlace",
                        "palegoldenrod","lavenderblush","honeydew","ivory2","ivory1",
                        "powderblue","purple" ,"purple1","purple2","purple3","red1",
                        "tan3","firebrick3","gray1","gold4","dodgerblue4","floralwhite",
                        "gray21","gray12","olivedrab4", "gold2"),
        main= "Número de integrantes por partido")


#saber as cores
#colors()

as.numeric(tiponome) #transformar em float

#numeros de partidos = 37 partidos

pie(tiponome, col=c("#D400FF","blue","wheat1","violetred4","slategrey",
                    "pink4","palegreen4","aliceblue", "beige", "beige",
                    "bisque" ,"cadetblue1","chocolate1","orangered","oldlace",
                    "palegoldenrod","lavenderblush","honeydew","ivory2","ivory1",
                    "powderblue","purple" ,"purple1","purple2","purple3","red1",
                    "tan3","firebrick3","gray1","gold4","dodgerblue4","floralwhite",
                    "gray21","gray12","olivedrab4", "gold2"),
    main= "Número de integrantes por partido")
