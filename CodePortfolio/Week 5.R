install.packages("yarrr")
library(yarrr)

mean(pirates$age)
fempirates <- subset(pirates, sex == 'female')
mean(fempirates$height)

table(pirates$sex)