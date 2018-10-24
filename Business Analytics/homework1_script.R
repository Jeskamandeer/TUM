# Business Analytics WS 2018/2019
# Introduction to R - Homework

# Jeremias Colliander 03713492

getwd()
setwd("data")
set.seed(10)

#A)
#Sample()  Reorders given elements into new array. You can give Sample parameters about how big
#should the new array be or can same elements come multiple times.

#Table() creates new table from datas category given as parameter. Example create TRUE or FALSE table
#from data$age where age > 30

#B)
w1 = sample(1:6, size=1000, replace=TRUE)
df1 = prop.table(table(w1))
df2 = table(w1)

merge(x = df1, y = df2, by = "w1", all = TRUE)
mean(w1)
var(w1)
barplot(prop.table(table(w1)), main="w1 Number Distribution", xlab="Number of Occurences")

#C) w1 and w2 Are diffirent
w2 = sample(1:6, size=1000, replace=TRUE)
mean(w2)
var(w2)

#D)
w12 <- w1 + w2
mean(w12) #Mean
var(w12)  #Var
mean(w1) + mean(w2) 
var(w1) + var(w2)
#w12 mean is same as w1 + w1. Variance is diffirent
barplot(prop.table(table(w12)), main="w12 Number Distribution", xlab="Number of Occurences")

#Excersise 2
df <- read.table("E1-3-data.csv", sep=" ", header=TRUE, dec=".")

#A)Sample B is normally distributed

y = dnorm(df$B, mean(df$B), sd(df$B))

#B)
df.mean = mean(df$B) #Mean
df.sd = sd(df$B) #Stantard deviation

#C)
x <- seq(-200, 200, length=100)
hist(df$B, breaks= 10, col="grey", prob=TRUE)
lines(x, dnorm(x, df.mean, df.sd), col="red", lwd=3)

#D)
lines(x, dnorm(x, 10, 80), col="blue", lwd=3)

