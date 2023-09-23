Control1
================
2023-09-20

# Ejercicios control 1

``` r
library(readxl)
```

## Sumatorias

<figure>
<img src="image-10.png" alt="1." />
<figcaption aria-hidden="true">1.</figcaption>
</figure>

``` r
sum(c(1:10))
```

    ## [1] 55

<figure>
<img src="image-9.png" alt="2." />
<figcaption aria-hidden="true">2.</figcaption>
</figure>

``` r
v1 <- c(10:73)
suma <- 0
for(i in v1){
  suma <- suma + i**4
}
suma
```

    ## [1] 428927776

o

``` r
v1 <- c(10:73)
v1 <- v1**4
sum(v1)
```

    ## [1] 428927776

<figure>
<img src="image-8.png" alt="3." />
<figcaption aria-hidden="true">3.</figcaption>
</figure>

``` r
v1 <- c(3:7)
suma <- 0
for(i in v1){
  suma <- suma + 6*sqrt(3*i)
}
suma
```

    ## [1] 114.9738

o

``` r
v1 <- c(3:7)
v1 <- sqrt(v1*3)*6
sum(v1)
```

    ## [1] 114.9738

<figure>
<img src="image-7.png" alt="4." />
<figcaption aria-hidden="true">4.</figcaption>
</figure>

``` r
v1 <- c(1:21)
suma <- 0
for(i in v1){
  suma <- suma + log(i/10)
}
suma
```

    ## [1] -2.974148

<figure>
<img src="image-6.png" alt="5." />
<figcaption aria-hidden="true">5.</figcaption>
</figure>

``` r
v1 <- c(1:100)
suma <- 0
for(i in v1){
  suma <- suma + 1/i
}
suma
```

    ## [1] 5.187378

<figure>
<img src="image-5.png" alt="6." />
<figcaption aria-hidden="true">6.</figcaption>
</figure>

``` r
v1 <- c(1:20)
suma <- 0
for(i in v1){
  suma <- suma + sin(pi*i/5)**2
}
suma
```

    ## [1] 10

## Probabilidades

![Resumen](image-15.png) DISTR corresponde a la distribucion que se esta
utilizando. Por ejemplo, alguna de las siguientes:
![DISTRs](image-16.png)

<figure>
<img src="image-11.png" alt="1." />
<figcaption aria-hidden="true">1.</figcaption>
</figure>

``` r
muestra1 <- pnorm(7, mean=5.6, sd=1.4)
muestra1
```

    ## [1] 0.8413447

<figure>
<img src="image-12.png" alt="2." />
<figcaption aria-hidden="true">2.</figcaption>
</figure>

``` r
muestra1 <- pexp(3, 0.4)
muestra2 <- pexp(6, 0.4)
muestra2 - muestra1
```

    ## [1] 0.2104763

![3.](image-13.png) Como es discreta al restar la probabilidad hasta el
8 con la que es hasta el 4 perdemos la info de la probabilidad del 4

``` r
muestra1 <- ppois(4, 7)
muestra2 <- ppois(8, 7)
dato1 <- dpois(4, 7)
muestra2 - muestra1 + dato1
```

    ## [1] 0.6473259

o

``` r
muestra1 <- ppois(3, 7)
muestra2 <- ppois(8, 7)
muestra2 - muestra1 
```

    ## [1] 0.6473259

<figure>
<img src="image-14.png" alt="4." />
<figcaption aria-hidden="true">4.</figcaption>
</figure>

``` r
primos <- c(2,3,5,7,11,13,17,19)
suma <- 0
for(i in primos){
    suma <- suma + dbinom(i, 20, 0.3)     
}
suma
```

    ## [1] 0.4555996

## Bases de datos

<figure>
<img src="image-17.png" alt="Abalon" />
<figcaption aria-hidden="true">Abalon</figcaption>
</figure>

``` r
Abalon <- read_excel("Abalon.xlsx")
```

<figure>
<img src="image-18.png" alt="1." />
<figcaption aria-hidden="true">1.</figcaption>
</figure>

``` r
Caldera <- Abalon$centro == "Caldera"
cantidad <- sum(Caldera)
cantidad
```

    ## [1] 100

o

``` r
nrow(subset(Abalon, centro == "Caldera"))
```

    ## [1] 100

<figure>
<img src="image-19.png" alt="2." />
<figcaption aria-hidden="true">2.</figcaption>
</figure>

``` r
suma_largos <- sum(Abalon$largo)
cantidad <- nrow(Abalon)
promedio <- suma_largos/cantidad
promedio
```

    ## [1] 13.23975

o

``` r
mean(Abalon$largo)
```

    ## [1] 13.23975

<figure>
<img src="image-20.png" alt="3." />
<figcaption aria-hidden="true">3.</figcaption>
</figure>

``` r
sd(Abalon$pesot)
```

    ## [1] 220.1696

<figure>
<img src="image-21.png" alt="4." />
<figcaption aria-hidden="true">4.</figcaption>
</figure>

``` r
condicion1 <- Abalon$centro == "Coquimbo"
suma <- sum(Abalon$pesot[condicion1])
cantidad <- nrow(Abalon[condicion1, ])
suma/cantidad
```

    ## [1] 385.845

o

``` r
condicion1 <- Abalon$centro == "Coquimbo"
mean(Abalon[condicion1, ]$pesot)
```

    ## [1] 385.845

o

``` r
mean(Abalon[Abalon$centro == "Coquimbo", ]$pesot)
```

    ## [1] 385.845

<figure>
<img src="image-22.png" alt="5." />
<figcaption aria-hidden="true">5.</figcaption>
</figure>

``` r
condicion1 <- Abalon$largo > 10
suma <- sum(Abalon$largo[condicion1])
cantidad <- nrow(Abalon[condicion1, ])
suma/cantidad
```

    ## [1] 14.16065

o

``` r
condicion1 <- Abalon$largo > 10
mean(Abalon[condicion1, ]$largo)
```

    ## [1] 14.16065

<figure>
<img src="image-23.png" alt="6." />
<figcaption aria-hidden="true">6.</figcaption>
</figure>

``` r
condicion1 <- Abalon$centro == "Chiloé"
condicion2 <- Abalon$centro == "Puerto Montt"
suma <- sum(Abalon$alto[condicion1 | condicion2])
cantidad <- nrow(Abalon[condicion1 | condicion2, ])
suma/cantidad
```

    ## [1] 3.4565

o

``` r
condicion1 <- Abalon$centro == "Chiloé"
condicion2 <- Abalon$centro == "Puerto Montt"
mean(Abalon[condicion1 | condicion2, ]$alto)
```

    ## [1] 3.4565

<figure>
<img src="image-24.png" alt="7." />
<figcaption aria-hidden="true">7.</figcaption>
</figure>

``` r
nrow(Abalon[Abalon$anillos >= 12, ])
```

    ## [1] 86

<figure>
<img src="image-25.png" alt="8." />
<figcaption aria-hidden="true">8.</figcaption>
</figure>

``` r
nrow(Abalon[Abalon$anillos >= 12 & Abalon$centro == "Caldera", ])
```

    ## [1] 22

<figure>
<img src="image-26.png" alt="9." />
<figcaption aria-hidden="true">9.</figcaption>
</figure>

``` r
total <- nrow(Abalon)
(nrow(Abalon[Abalon$pesot >= 200 & Abalon$pesot <= 600, ]))/total
```

    ## [1] 0.5875

o

``` r
total <- nrow(Abalon)
condicion1 <- Abalon$pesot >= 200
condicion2 <- Abalon$pesot <= 600
(nrow(Abalon[condicion1 & condicion2, ]))/total
```

    ## [1] 0.5875

<figure>
<img src="image-27.png" alt="10." />
<figcaption aria-hidden="true">10.</figcaption>
</figure>

``` r
total <- nrow(Abalon)
(nrow(Abalon[Abalon$centro == "Chiloé", ]))/total
```

    ## [1] 0.25

<figure>
<img src="image-28.png" alt="Banda Ancha" />
<figcaption aria-hidden="true">Banda Ancha</figcaption>
</figure>

``` r
BandaAncha <- read_excel("BandaAncha.xlsx")
```

<figure>
<img src="image-29.png" alt="1." />
<figcaption aria-hidden="true">1.</figcaption>
</figure>

``` r
mean(BandaAncha$Velocidad)
```

    ## [1] 11.23052

<figure>
<img src="image-30.png" alt="2." />
<figcaption aria-hidden="true">2.</figcaption>
</figure>

``` r
nrow(table(BandaAncha$Ciudad))
```

    ## [1] 50

o

``` r
length(unique(BandaAncha$Ciudad))
```

    ## [1] 50

<figure>
<img src="image-31.png" alt="3." />
<figcaption aria-hidden="true">3.</figcaption>
</figure>

``` r
mean(BandaAncha[BandaAncha$Operador == "C" & BandaAncha$Ciudad == "Iquique", ]$Velocidad)
```

    ## [1] 7.864

o

``` r
muestra1 <- subset(BandaAncha, BandaAncha$Operador == "C" & BandaAncha$Ciudad == "Iquique")
mean(muestra1$Velocidad)
```

    ## [1] 7.864

<figure>
<img src="image-32.png" alt="4." />
<figcaption aria-hidden="true">4.</figcaption>
</figure>

``` r
mean(BandaAncha[BandaAncha$Ciudad == "Illapel", ]$Velocidad)
```

    ## [1] 10.674

o

``` r
muestra1 <- subset(BandaAncha, BandaAncha$Ciudad == "Illapel")$Velocidad
mean(muestra1)
```

    ## [1] 10.674

<figure>
<img src="image-33.png" alt="5." />
<figcaption aria-hidden="true">5.</figcaption>
</figure>

``` r
sd(BandaAncha[BandaAncha$Ciudad == "Osorno", ]$Velocidad)
```

    ## [1] 4.444377

o

``` r
sd(subset(BandaAncha, Ciudad == "Osorno")$Velocidad)
```

    ## [1] 4.444377

<figure>
<img src="image-34.png" alt="6." />
<figcaption aria-hidden="true">6.</figcaption>
</figure>

``` r
max_velocidad <- max(BandaAncha[BandaAncha$Ciudad == "Arauco", ]$Velocidad)
BandaAncha[BandaAncha$Velocidad == max_velocidad & BandaAncha$Ciudad == "Arauco", ]$Operador
```

    ## [1] "M"

o

``` r
indice <- which.max( subset(BandaAncha, Ciudad == "Arauco")$Velocidad)
BandaAncha$Operador[indice]
```

    ## [1] "M"

<figure>
<img src="image-35.png" alt="7." />
<figcaption aria-hidden="true">7.</figcaption>
</figure>

``` r
max_velocidad <- max(BandaAncha[BandaAncha$Operador == "W",]$Velocidad)
BandaAncha[BandaAncha$Velocidad == max_velocidad & BandaAncha$Operador == "W", ]$Ciudad
```

    ## [1] "Chiloe"

<figure>
<img src="image-36.png" alt="8." />
<figcaption aria-hidden="true">8.</figcaption>
</figure>

``` r
cantidad <- 0

for (i in 1:nrow(BandaAncha)){
  for (j in 1:nrow(BandaAncha)){
    if (BandaAncha$Ciudad[i] == BandaAncha$Ciudad[j] & BandaAncha$Operador[i] == "C" & BandaAncha$Operador[j] == "W" & BandaAncha$Velocidad[i] > BandaAncha$Velocidad[j]){
      cantidad <- cantidad + 1
    }
  }
}
cantidad
```

    ## [1] 27

o

``` r
claro <- subset(BandaAncha, Operador == "C")
wom <- subset(BandaAncha, Operador == "W")
nrow(subset(claro, Velocidad > wom$Velocidad))
```

    ## [1] 27

<figure>
<img src="image-37.png" alt="ENS" />
<figcaption aria-hidden="true">ENS</figcaption>
</figure>

``` r
ENS <- read_excel('ENS.xlsx')
```

<figure>
<img src="image-38.png" alt="1." />
<figcaption aria-hidden="true">1.</figcaption>
</figure>

``` r
nrow(subset(ENS, ENS$EDAD == 21))
```

    ## [1] 34

<figure>
<img src="image-39.png" alt="2." />
<figcaption aria-hidden="true">2.</figcaption>
</figure>

``` r
mean(ENS$COLES)
```

    ## [1] 194.7221

<figure>
<img src="image-40.png" alt="3." />
<figcaption aria-hidden="true">3.</figcaption>
</figure>

``` r
sd(ENS$PESO)
```

    ## [1] 14.86869

<figure>
<img src="image-41.png" alt="4." />
<figcaption aria-hidden="true">4.</figcaption>
</figure>

``` r
nrow(subset(ENS, ENS$HDL > 40))
```

    ## [1] 1747

<figure>
<img src="image-42.png" alt="5." />
<figcaption aria-hidden="true">5.</figcaption>
</figure>

``` r
nrow(subset(ENS, ENS$TGD >= 120 & ENS$TGD <= 200))
```

    ## [1] 803

<figure>
<img src="image-43.png" alt="6." />
<figcaption aria-hidden="true">6.</figcaption>
</figure>

``` r
nrow(subset(ENS, ENS$PESO < 60))/nrow(ENS)
```

    ## [1] 0.2111332

<figure>
<img src="image-44.png" alt="7." />
<figcaption aria-hidden="true">7.</figcaption>
</figure>

``` r
nrow(subset(ENS, ENS$FUMADOR == 1))/nrow(ENS)
```

    ## [1] 0.3252485

<figure>
<img src="image-45.png" alt="8." />
<figcaption aria-hidden="true">8.</figcaption>
</figure>

``` r
mean(subset(ENS, ENS$SEXO == 1)$GLUBASAL)
```

    ## [1] 98.23682

<figure>
<img src="image-46.png" alt="9." />
<figcaption aria-hidden="true">9.</figcaption>
</figure>

``` r
mean(subset(ENS, REGION == 5)$PESO)
```

    ## [1] 71.44754

<figure>
<img src="image-47.png" alt="10." />
<figcaption aria-hidden="true">10.</figcaption>
</figure>

``` r
nrow(subset(ENS, HDL < LDL))/nrow(ENS)
```

    ## [1] 0.9821074

<figure>
<img src="image-48.png" alt="PCR" />
<figcaption aria-hidden="true">PCR</figcaption>
</figure>

``` r
PCR <- read.delim("PCR.txt", header = TRUE)
```

<figure>
<img src="image-49.png" alt="1." />
<figcaption aria-hidden="true">1.</figcaption>
</figure>

``` r
nrow(subset(PCR, EXTRANJERO == 1))/nrow(PCR)
```

    ## [1] 0.4375

<figure>
<img src="image-50.png" alt="2." />
<figcaption aria-hidden="true">2.</figcaption>
</figure>

``` r
max(PCR$EDAD)
```

    ## [1] 67

<figure>
<img src="image-51.png" alt="3." />
<figcaption aria-hidden="true">3.</figcaption>
</figure>

``` r
nrow(subset(PCR, EXTRANJERO == 1 & PCR == 1))/nrow(subset(PCR, EXTRANJERO == 1))
```

    ## [1] 0.2857143

<figure>
<img src="image-52.png" alt="4." />
<figcaption aria-hidden="true">4.</figcaption>
</figure>

``` r
nrow(subset(PCR, EDAD <= 40)) / nrow(PCR)
```

    ## [1] 0.1785714

<figure>
<img src="image-53.png" alt="5." />
<figcaption aria-hidden="true">5.</figcaption>
</figure>

``` r
min(subset(PCR, PCR == 1)$EDAD)
```

    ## [1] 44

<figure>
<img src="image-54.png" alt="6." />
<figcaption aria-hidden="true">6.</figcaption>
</figure>

``` r
nrow(subset(PCR, EDAD == 59 & PCR == 1))
```

    ## [1] 1

<figure>
<img src="image-55.png" alt="Sismos" />
<figcaption aria-hidden="true">Sismos</figcaption>
</figure>

``` r
Sismos2021 <- read_excel('Sismos2021.xlsx')
```

<figure>
<img src="image-56.png" alt="1." />
<figcaption aria-hidden="true">1.</figcaption>
</figure>

``` r
nrow(subset(Sismos2021, Tiempo >= 60))
```

    ## [1] 170

<figure>
<img src="image-57.png" alt="2." />
<figcaption aria-hidden="true">2.</figcaption>
</figure>

``` r
nrow(subset(Sismos2021, Latitud <= -30))/nrow(Sismos2021)
```

    ## [1] 0.3365854

<figure>
<img src="image-58.png" alt="3." />
<figcaption aria-hidden="true">3.</figcaption>
</figure>

``` r
nrow(subset(Sismos2021, Magnitud <= 3 & Tiempo >= 60*3))
```

    ## [1] 17

<figure>
<img src="image-59.png" alt="4." />
<figcaption aria-hidden="true">4.</figcaption>
</figure>

``` r
Sismos2021$Magnitud[which.max(Sismos2021$Profundidad)]
```

    ## [1] 3.6

<figure>
<img src="image-60.png" alt="5." />
<figcaption aria-hidden="true">5.</figcaption>
</figure>

``` r
quantile(Sismos2021$Tiempo, probs = c(.9))
```

    ##    90% 
    ## 157.38

o

``` r
quantile(Sismos2021$Tiempo, .9)
```

    ##    90% 
    ## 157.38

<figure>
<img src="image-61.png" alt="6." />
<figcaption aria-hidden="true">6.</figcaption>
</figure>

``` r
quantile(subset(Sismos2021, Magnitud >= 4)$Profundidad, 0.8)
```

    ##   80% 
    ## 217.1
