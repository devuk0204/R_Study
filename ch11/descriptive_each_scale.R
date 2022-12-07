data <- read.csv('data/Part-III/descriptive.csv', header = TRUE)
head(data)
dim(data)
length(data)
str(data)
summary(data)

#nominal scale
length(data$gender)
summary(data$gender)
table(data$gender)

#nominal scale remove outlier
data <- subset(data, gender == 1 | gender == 2)
x <- table(data$gender)
x
barplot(x)

#nominal scale composition ratio
prop.table(x)
y <- prop.table(x)
round(y * 100, 2)

#ordinal scale
length(data$level)
summary(data$level)
table(data$level)

x1 <- table(data$level)
barplot(x1)

#interval scale
survey <- data$survey
survey
summary(survey)

x1 <- table(survey)
x1

hist(survey)
pie(x1)

#ratio scale
length(data$cost)
summary(data$cost)

#ratio scale outlier remove
plot(data$cost)
data <- subset(data, data$cost >= 2 & data$cost <= 10)
x <- data$cost
mean(x)

#representative value
mean(x)
median(x)
sort(x)
sort(x, decreasing = T)
quantile(x, 1/4)
quantile(x, 2/4)
quantile(x, 3/4)
quantile(x, 4/4)

length(x)
x.t <- table(x)
max(x.t)

x.m <- rbind(x.t)
class(x.m)
str(x, m)
which(x.m[1, ] == 18)

x.df <- as.data.frame(x.m)
attributes(x.df)

#scatter plot
var(x)
sd(x)
sqrt(var(data$cost, na.rm = T))

#sample variance & sample standard deviation

#frequency analysis
table(data$cost)
hist(data$cost)
plot(data$cost)

data$cost2[data$cost >= 1 & data$cost <= 3] <- 1
data$cost2[data$cost >= 4 & data$cost <= 6] <- 2
data$cost2[data$cost >= 7] <- 3

table(data$cost2)
par(mfrow = c(1, 2))
barplot(table(data$cost2))
pie(table(data$cost2))

#asymmetry
#install.packages('moments')
library(moments)
cost <- data$cost

skewness(cost)
kurtosis(cost)
hist(cost)

hist(cost, freq = F)
lines(density(cost), col = 'blue')
curve(dnorm(x, mean(cost), sd(cost)), col = 'red', add = T)

attach(data)
length(cost)
summary(cost)
mean(cost)
min(cost)
max(cost)
range(cost)
sqrt(var(cost, na.rm = T))
sd(cost, na.rm = T)
detach(data)

#NA
test <- c(1:5, NA, 10:20)
min(test)
max(test)
range(test)
mean(test)

min(test, na.rm = T)
max(test, na.rm = T)
range(test, na.rm = T)
mean(test, na.rm = T)

#descriptive statistics
data$resident2[data$resident == 1] <- 'special city'
data$resident2[data$resident >= 2 & data$resident <= 4] <- 'metropolitan city'
data$resident2[data$resident == 5] <- 'sigugun'

x <- table(data$resident2)
x

prop.table(x)

y <- prop.table(x)
round(y*100, 2)

data$gender2[data$gender == 1] <- 'male'
data$gender2[data$gender == 2] <- 'female'
x <- table(data$gender2)
prop.table(x)
y <- prop.table(x)
round(y * 100, 2)

data$age2[data$age <= 45] <- 'middle-aged'
data$age2[data$age >= 46 & data$age <= 59] <- 'seniors'
data$age2[data$age >= 60] <- 'older'
x <- table(data$gender2)
y <- prop.table(x)
round(y * 100, 2)

data$level2[data$level == 1] <- 'hs graduated'
data$level2[data$level == 2] <- 'co graduated'
data$level2[data$level == 3] <- 'graduate school'
x <- table(data$level2)
y <- prop.table(x)
round(y * 100, 2)

data$pass2[data$pass == 1] <- 'pass'
data$pass2[data$pass == 2] <- 'nonpass'
x <- table(data$pass2)
y <- prop.table(x)
round(y * 100, 2)

head(data)
