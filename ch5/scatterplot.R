#standard scatterplot
price <- runif(10, min = 1, max = 100)
plot(price, col = 'red')
par(new = T)
line_chart <- 1:100
plot(line_chart, type = 'l', col = 'red', axes = F, ann = F)
text(70, 80, 'add diagonal', col = 'blue')

#plot type
par(mfrow = c(2, 2))
plot(price, type = 'l')
plot(price, type = 'o')
plot(price, type = 'h')
plot(price, type = 's')

#pch attribute
par(mfrow = c(2, 2))
plot(price, type = 'o', pch = 5)
plot(price, type = 'o', pch = 15)
plot(price, type = 'o', pch = 20, col = 'blue')
plot(price, type = 'o', pch = 20, col = 'orange', cex = 1.5)

#lwd attribute
par(mfrow = c(1, 1))
plot(price, type = 'o', pch = 20,
     col = 'green', cex = 2.0, lwd = 3)


#www usage
data('WWWusage')
str(WWWusage)
plot(WWWusage)
