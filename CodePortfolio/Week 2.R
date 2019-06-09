#import EPA DATA
install.packages("readr")
library(readr)
setwd("~/Downloads")
ozone <-read.csv("US EPA data 2017 (1).csv")

#count rows and columns
nrow(ozone)
ncol(ozone)

#mean of obsv count
mean(ozone$Observation.Count)

head(ozone, n=10)

library(tidyverse)
summary(ozone)