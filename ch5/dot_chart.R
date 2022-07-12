help(dotchart)
par(mfrow = c(1, 1))
dotchart(chart_data, color = c('blue', 'red'),
         lcolor = 'black', pch = 1:2,
         labels = names(chart_data),
         xlab = 'take',
         main = 'Quarterly Sales : dot chart visualization',
         cex = 1.2)
