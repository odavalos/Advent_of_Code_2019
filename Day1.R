##### Part 1
library(tidyverse)


fm <- read.csv(file = "input.txt", header = FALSE)
fm <- unlist(fm)
fm <- as.numeric(fm)

fuel_req <- function(m){
 m2 <- m/3
 m3 <- floor(m2)
 m4 <- m3-2
 return(m4)
}


fuel_sum <- sum(sapply(fm, fuel_req))
print(fuel_sum)

##### Part 2

fuel<- c()
fuel_fuel <- c()
ftotal <- c()
fftotal <-c()
tt <- c()
for(i in fm) {
  x <- floor(i/ 3 - 2)
  fuel <- c(fuel, x)
  while(i>=0) {
    i <- floor(i/3 - 2)
    if(i>=0)
    fuel_fuel <- c(fuel_fuel, i)
  }
  ftotal <- c(ftotal, sum(fuel))
  fftotal <- c(fftotal,sum(fuel_fuel))
}

# Part 1 Fuel Total
print(tail(ftotal,1))

# Part 2 Fuel of Fuel Total
print(tail(fftotal, 1))

