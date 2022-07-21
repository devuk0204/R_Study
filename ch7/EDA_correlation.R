#categorical vs categorical
new_data <- read.csv('ch7/test.csv')
str(new_data)

shape_contour <- table(new_data$LotShape, new_data$LandContour)
shape_contour

contour_shape <- table(new_data$LandContour, new_data$LotShape)
contour_shape

barplot(shape_contour, beside = T, horiz = T,
        col = rainbow(4),
        legend = row.names(shape_contour),
        main = 'test')

barplot(contour_shape, beside = T, horiz = T,
        col = rainbow(4),
        legend = row.names(contour_shape),
        main = 'test')

#continuous vs categorical
#install.packages('lattice')
library(lattice)

densityplot(~ LotArea, data = new_data,
            groups = LandContour,
            plot.points = T, auto.key = T)

#con vs cat vs cat
densityplot(~ LotArea | LotShape,
            data = new_data,
            groups = LandContour,
            plot.points = T, auto.key = T)

densityplot(~ LotArea | LandContour,
            data = new_data,
            groups = LotShape,
            plot.points = T, auto.key = T)

#con vs con vs cat
str(new_data)
xyplot(LotFrontage ~ LotArea | factor(LotShape),
       data = new_data)
