install.packages("yarrr")
library(yarrr)

mean(pirates$age)
fempirates <- subset(pirates, sex == 'female')
mean(fempirates$height)

table(pirates$sex)

x <- c(15,20,50,70,80,95)
x[-5]