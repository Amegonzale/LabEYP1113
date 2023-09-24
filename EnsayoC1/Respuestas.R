# Pregunta 4

2+2
2*sqrt(2)
10**2+10**3+10**0+10**1

# Pregunta 5

v <- c(1:10)
v <- 2**(1/v)
sum(v)

# Pregunta 7

mean(BandaAncha$Velocidad)

# Pregunta 8

mean(subset(BandaAncha, Ciudad == "Illapel")$Velocidad)

# Pregunta 9

claro <- subset(BandaAncha, Operador == "C")
wom <- subset(BandaAncha, Operador == "W")
nrow(subset(claro, Velocidad > wom$Velocidad))