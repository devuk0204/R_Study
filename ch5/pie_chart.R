help(pie)
par(nfrow = c(1, 1))
pie(chart_data, labes = names(chart_data), col = rainbow(8), cex = 1.2)
title('2018~2019 quaterly slaes ')
