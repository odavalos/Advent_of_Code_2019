### Part 1 

library(tidyverse)

day2 <- read.csv(file = "input_day2.txt", header = FALSE, sep = ",")

day2 <- pivot_longer(day2, 
             cols = col(day2))
day2$name <- NULL

day2$value[2] <- 12
day2$value[3] <- 2
init <- 0

day2 <- as.data.frame(as.vector(day2$value))

day2_prog <- function(day2, init = 0) {
  v0 <- day2[init + 1, ]
  v1 <- day2[init + 2, ]
  v2 <- day2[init + 3, ]
  v3 <- day2[init + 4, ]
  if (v0 == 99) {
    return(day2)
  }
  if (v0 == 1) {
    e <- day2[v1 + 1,] + day2[v2 + 1,]
    day2[v3 + 1,] <- e
  } else if (v0 == 2) {
    u <- day2[v1 + 1, ] * day2[v2 + 1, ]
    day2[v3 + 1, ] <- u
  }
  day2_prog(day2, init + 4)
}

day2_prog(day2)[1,]

#### This problem took me about a day in a half. I had the correct idea that would have worked in a different language like Python. By setting init=0 I kept getting errors due to the fact that arrays in R are 1 based and not 0 based like in python.



