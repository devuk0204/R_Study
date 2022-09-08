#install.packages('lattice')
library(lattice)
#install.packages('mlmRev')
library(mlmRev)

data("Chem97")
str(Chem97)
summary(Chem97)

#histogram
histogram(~gcsescore, data = Chem97)
histogram(~gcsescore | score, data = Chem97)
histogram(~gcsescore | factor(score), data = Chem97)

#densityplot
densityplot(~gcsescore | factor(score), data = Chem97,
            groups = gender,
            plot.points = T, auto.key = T)

#barchart
data(VADeaths)
VADeaths
str(VADeaths)
class(VADeaths)
mode(VADeaths)

dft <- as.data.frame.table(VADeaths)
str(dft)
dft

barchart(Var1 ~ Freq | Var2, data = dft, layout = c(4, 1))
barchart(Var1 ~ Freq | Var2, data = dft, layout = c(4, 1), origin = 0)

#dotplot
dotplot(Var1 ~ Freq | Var2, dft)
dotplot(Var1 ~ Freq | Var2, dft, layout = c(4, 1))

dotplot(Var1 ~ Freq, data = dft,
        groups = Var2, type = 'o',
        auto.key = list(space = 'right', points = T, lines = T))

#xyplot
library(datasets)
str(airquality)

xyplot(Ozone ~ Wind, data = airquality)
xyplot(Ozone ~ Wind | Month, data = airquality)
xyplot(Ozone ~ Wind | Month, data = airquality, layout = c(5, 1))

convert <- transform(airquality, Month = factor(Month))
str(convert)
convert

xyplot(Ozone ~ Wind | Month, data = convert)

head(quakes)
str(quakes)

xyplot(lat ~ long, data = quakes, pch = ',')

tplot <- xyplot(lat ~ long, data = quakes, pch = ',')
tplot <- update(tplot, main = '1964 ~ Pacific ocean earth quakes')
print(tplot)

range(quakes$depth)
quakes$depth2[quakes$depth >= 40 & quakes$depth <= 150] <- 1
quakes$depth2[quakes$depth >= 151 & quakes$depth <= 250] <- 2
quakes$depth2[quakes$depth >= 251 & quakes$depth <= 350] <- 3
quakes$depth2[quakes$depth >= 351 & quakes$depth <= 450] <- 4
quakes$depth2[quakes$depth >= 451 & quakes$depth <= 550] <- 5
quakes$depth2[quakes$depth >= 551 & quakes$depth <= 680] <- 6

convert <- transform(quakes, depth2 = factor(depth2))
xyplot(lat ~ long | depth2, data = convert)

xyplot(Ozone + Solar.R ~ Wind | factor(Month),
       data = airquality,
       col = c('blue', 'red'),
       layout = c(5,1))

#data categorization
numgroup <- equal.count(1:150, number = 4, overlap = 0)
numgroup

depthgroup <- equal.count(quakes$depth, number = 5, overlap = 0)
depthgroup

xyplot(lat ~ long | depthgroup, data = quakes,
       main = 'Fiji Earthquakes(depthgroup)',
       ylab = 'latitude', xlab = 'longitude',
       pch = '@', col = 'red')

magnitudegroup <- equal.count(quakes$mag, number = 2, overlap = 0)
magnitudegroup

xyplot(lat ~ long | magnitudegroup, data = quakes,
       main = 'Fiji Earthquakes(magnitude)',
       ylab = 'latitude', xlab = 'longitude',
       pch = '@', col = 'blue')

xyplot(lat ~ long | depthgroup * magnitudegroup, data = quakes,
       main = "Fiji EarthQuakes",
       ylab = 'latitude', xlab = 'longitude',
       pch = '@', col = c('red', 'blue'))

quakes$depth3[quakes$depth >= 39.5 & quakes$depth <= 80.5] <- 'd1'
quakes$depth3[quakes$depth >= 79.5 & quakes$depth <= 186.5] <- 'd2'
quakes$depth3[quakes$depth >= 185.5 & quakes$depth <= 397.5] <- 'd3'
quakes$depth3[quakes$depth >= 396.5 & quakes$depth <= 562.5] <- 'd4'
quakes$depth3[quakes$depth >= 562.5 & quakes$depth <= 680.5] <- 'd5'

quakes$mag3[quakes$mag >= 3.95 & quakes$mag <= 4.65] <- 'm1'
quakes$mag3[quakes$mag >= 4.55 & quakes$mag <= 6.45] <- 'm2'

convert <- transform(quakes,
                     depth3 = factor(depth3),
                     mag3 = factor(mag3))

xyplot(lat ~ long | depth3 * mag3, data = convert,
       main = 'Fiji EarthQuakes',
       ylab = 'latitude', xlab = 'longitude',
       pch = '@', col = c('red', 'blue'))

#conditional graph
coplot(lat ~ long | depth, data = quakes)
coplot(lat ~ long | depth, data = quakes,
       overlap = 0.1)
coplot(lat ~ long | depth, data = quakes,
       number = 5, row = 1)
coplot(lat ~ long | depth, data = quakes,
       number = 5, row = 1,
       panel = panel.smooth)
coplot(lat ~ long | depth, data = quakes,
       number = 5, row = 1,
       col = 'blue',
       bar.bg = c(num = 'green'))

#3d scatterplot graph
cloud(depth ~ lat * long, data = quakes,
      zlim = rev(range(quakes$depth)),
      xlab = 'latitude', ylab = 'longitude', zlab = 'depth')
cloud(depth ~ lat * long, data = quakes,
      zlim = rev(range(quakes$depth)),
      panel.aspect = 0.9,
      screen = list(z = 45, x = -25),
      xlab = 'latitude', ylab = 'longitude', zlab = 'depth')
