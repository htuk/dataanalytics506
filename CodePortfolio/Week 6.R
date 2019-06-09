install.packages("nycflights13")
library(nycflights13)
library(tidyverse)

summary(flights)

decflights <- filter(flights, month == 12 & day ==30)
summary(decflights)
head(decflights)

mean(decflights$dep_delay, na.rm = TRUE)

#income
income <- read.csv("income.csv")
summary(income)
mean(income$M_weekly, na.rm = TRUE)
mean(income$M_weekly, na.rm = TRUE, trim = 0.1)
median(income$M_weekly, na.rm = TRUE)