iris
IR <- iris
head(IR)
IR_P <- filter(IR,Petal.Length>4.5) 
IR_V <- filter(IR_P, Species == "virginica")

mean(IR_V$Sepal.Length)
sd(IR_V$Sepal.Width)
max(IR_V$Petal.Length)




ggplot(mpg, aes(x=displ, y=hwy))+ geom_point(size = 3, shape=24, colour = 'black', fill = 'red')

epa <- read.csv("US EPA data 2017.csv")
summary(epa)
sum(is.na(epa$X2nd.Max.Value))

summary(mpg)

quantile(faithful$eruptions, c(0.25))

flight_01_06 <- filter(flights, month == 1 | month == 6)
nrow(flight_01_06)