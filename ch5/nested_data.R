x <- c(1, 2, 3, 4, 2, 4)
y <- rep(2, 6)

x; y
table(x, y)

plot(x, y)

xy.df <- as.data.frame(table(x, y))
xy.df

plot(x, y,
     pch = '@', col = 'blue', cex = 0.5 * xy.df$Freq,
     xlab = 'x vector element', ylab = 'y vector element')

#galton dataset
library(UsingR)
data(galton)
galtonData <- as.data.frame(table(Galton$child, Galton$parent))
head(galtonData)
names(galtonData) = c('child', 'parent', 'freq')
head(galtonData)
parent <- as.numeric(galtonData$parent)
child <- as.numeric(galtonData$child)

plot(parent, child,
     pch = 21, col = 'blue', bg = 'green',
     cex = 0.2 * galtonData$freq,
     xlab = 'parent', ylab = 'child')
