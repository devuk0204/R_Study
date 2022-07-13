data(iris)
names(iris)
str(iris)
head(iris)

summary(iris$Sepal.Length)
hist(iris$Sepal.Length, xlab = 'iris$Sepal.Length', col = 'magenta',
     main = 'iris sepal length histogram', xlim = c(4.3, 7.9))

summary(iris$Sepal.Width)
hist(iris$Sepal.Width, xlab = 'iris$Sepal.Width', col = 'mistyrose',
     main = 'iris sepal width histogram', xlim = c(2.0, 4.5))


#frequency and density
par(mfrow = c(1, 2))
hist(iris$Sepal.Width, xlab = 'iris$Sepal.Width', col = 'green',
     main = 'iris sepal width histogram : frequency', xlim  = c(2.0, 4.5))

hist(iris$Sepal.Width, xlab = 'iris$Sepal.Width', col = 'mistyrose',
     freq = F,
     main = 'iris sepal width histogram : probability density', xlim  = c(2.0, 4.5))
lines(density(iris$Sepal.Width), col = 'red')


#normal distribution estimation curve
par(mfrow = c(1, 1))
hist(iris$Sepal.Width, xlab = 'iris$Sepal.Width', col = 'mistyrose',
     freq = F, main = 'iris sepal width historgram', xlim = c(2.0, 4.5))
lines(density(iris$Sepal.Width), col = 'red')
x <- seq(2.0, 4.5, 0.1)
curve(dnorm(x, mean = mean(iris$Sepal.Width), sd = sd(iris$Sepal.Width)), col = 'blue', add = T)
