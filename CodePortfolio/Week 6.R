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

install.packages("matrixStats")
library(matrixStats)

weighted_median <- function(x, w, ..., na.rm = FALSE){
  
  if(na.rm){
    
    df_omit <- na.omit(data.frame(x, w))
    
    return(weightedMedian(df_omit$x, df_omit$w, ...))
    
  } 
  
  weightedMedian(x, w, ...)
  
}

weighted_median(income$M_weekly, income$Industry, na.rm = TRUE)

library(dplyr)
library(tibble)
income <- as_tibble(income)