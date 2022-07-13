data("VADeaths")
#box plot
boxplot(VADeaths, range = 0)

#boxplot median -> waist
boxplot(VADeaths, range = 0, notch = T)
abline(h = 37, lty = 3, col = 'red')

summary(VADeaths)