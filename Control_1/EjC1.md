# Ejercicios control 1

## Sumatorias

![1.](image-10.png)
```
sum(c(1:10))
```
![2.](image-9.png)
```
v1 <- c(10:73)
suma <- 0
for(i in v1){
  suma <- suma + i**4
}
suma
```
![3.](image-8.png)
```
v1 <- c(3:7)
suma <- 0
for(i in v1){
  suma <- suma + 6*sqrt(3*i)
}
suma
```
![4.](image-7.png)
```
v1 <- c(1:21)
suma <- 0
for(i in v1){
  suma <- suma + log(i/10)
}
suma
```
![5.](image-6.png)
```
v1 <- c(1:100)
suma <- 0
for(i in v1){
  suma <- suma + 1/i
}
suma
```
![6.](image-5.png)
```
v1 <- c(1:20)
suma <- 0
for(i in v1){
  suma <- suma + sin(pi*i/5)**2
}
suma
```

## Probabilidades
![Resumen](image-15.png)
DISTR corresponde a la distribucion que se esta utilizando. Por ejemplo, alguna de las siguientes:
![DISTRs](image-16.png)

![1.](image-11.png)
```
muestra1 <- pnorm(7, mean=5.6, sd=1.4)
muestra1
```
![2.](image-12.png)
```
muestra1 <- pexp(3, 0.4)
muestra2 <- pexp(6, 0.4)
muestra2 - muestra1
```
![3.](image-13.png)
Como es discreta al restar la probabilidad hasta el 8 con la que es hasta el 4 perdemos la info de la probabilidad del 4
```
muestra1 <- ppois(4, 7)
muestra2 <- ppois(8, 7)
dato1 <- dpois(4, 7)
muestra2 - muestra1 + dato1
```
o
```
muestra1 <- ppois(3, 7)
muestra2 <- ppois(8, 7)
muestra2 - muestra1 
```

![4.](image-14.png)

```
primos <- c(2,3,5,7,11,13,17,19)
suma <- 0
for(i in primos){
    suma <- suma + dbinom(i, 20, 0.3)     
}
suma
```

## Bases de datos

![Abalon](image-17.png)

![1.](image-18.png)
```
Caldera <- Abalon$centro == "Caldera"
cantidad <- sum(Caldera)
cantidad
```
![2.](image-19.png)
```
suma_largos <- sum(Abalon$largo)
cantidad <- nrow(Abalon)
promedio <- suma_largos/cantidad
promedio
```
![3.](image-20.png)
```

```
![4.](image-21.png)
```

```
![5.](image-22.png)
```

```
![6.](image-23.png)
```

```
![7.](image-24.png)
```

```
![8.](image-25.png)
```

```
![9.](image-26.png)
```

```
![10.](image-27.png)


![Banda Ancha](image-28.png)

![1.](image-29.png)
```
{r}

```
![2.](image-30.png)
```
{r}

```
![3.](image-31.png)
```
{r}

```
![4.](image-32.png)
```
{r}

```
![5.](image-33.png)
```
{r}

```
![6.](image-34.png)
```
{r}

```
![7.](image-35.png)
```
{r}

```
![8.](image-36.png)
```
{r}

```