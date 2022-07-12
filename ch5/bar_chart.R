chart_data <- c(305, 450, 320, 460, 330, 480, 380, 520)
names(chart_data) <- c('2018 1/4', '2019 1/4',
                       '2018 2/4', '2019 2/4',
                       '2018 3/4', '2019 3/4',
                       '2018 4/4', '2019 4/4')
str(chart_data)
chart_data

#vertical bar chart
barplot(chart_data, ylim = c(0, 600),
        col = rainbow(8),
        main = '2018 vs 2019 sales status')

help('barplot')

barplot(chart_data, ylim = c(0, 600),
        ylab = 'Sales(Unit : 10000won)',
        xlab = 'Quaterly Status by Year',
        col = rainbow(8), main = '2018 vs 2019 sales status')

#horizontal bar chart
barplot(chart_data, xlim = c(0, 600), horiz = T,
        ylab = 'Sales(Unit : 10000won)',
        xlab = 'Quaterly Status by Year',
        col = rainbow(8), main = '2018 vs 2019 sales status')

#Adjust the spacing between bars
barplot(chart_data, xlim = c(0, 600), horiz = T,
        ylab = 'Sales(Unit : 10000won)',
        xlab = 'Quaterly Status by Year',
        col = rainbow(8), space = 1, cex.names = 0.8,
        main = '2018 vs 2019 sales status')

#bar color
barplot(chart_data, xlim = c(0, 600), horiz = T,
        ylab = 'Sales(Unit : 10000won)',
        xlab = 'Quaterly Status by Year',
        space = 1, cex.names = 0.8,
        main = '2018 vs 2019 sales status',
        col = rep(c(2, 4), 4) )

barplot(chart_data, xlim = c(0, 600), horiz = T,
        ylab = 'Sales(Unit : 10000won)',
        xlab = 'Quaterly Status by Year',
        space = 1, cex.names = 0.8,
        main = '2018 vs 2019 sales status',
        col = rep(c('red', 'green'), 4))


#stacked bar chart
data("VADeaths")
VADeaths
str(VADeaths)
class(VADeaths)
mode(VADeaths)

#individual chart and stacked chart
par(mfrow = c(1, 2))
barplot(VADeaths, beside = T, col = rainbow(5),
        main = 'virginia lower-class mortality rate',)
legend(19, 71, c('50-54', '55-59', '60-64', '65-69', '70-74'),
       cex = 0.8, fill = rainbow(5))
barplot(VADeaths, beside = F, col = rainbow(5))
title(main = 'virginia lower-class mortality rate')
legend(3.8, 200, c('50-54', '55-59', '60-64', '65-69', '70-74'),
       cex = 0.8, fill = rainbow(5))
