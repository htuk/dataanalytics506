install.packages("nycflights13")
library(nycflights13)
library(tidyverse)

summary(flights)

decflights <- filter(flights, month == 12 & day ==30)
summary(decflights)
head(decflights)

mean(decflights$dep_delay, na.rm = TRUE)