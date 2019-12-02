##### Part 1
library(tidyverse)


fm <- read.delim(file = "input.txt", header = FALSE)

new_numbers <- function(m){
 m2 <- m/3
 m3 <- floor(m2)
 m4 <- m3-2
 return(m4)
}


fuel_req <- sum(sapply(fm, new_numbers))
print(fuel_req)

##### Part 2


