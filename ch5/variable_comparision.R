attributes(iris)
pairs(iris[iris$Species == 'virginica', 1 : 4])
pairs(iris[iris$Species == 'setosa', 1 : 4])

#3d scatterplot
#install.packages('scatterplot3d')
library(scatterplot3d)
iris_setosa <- iris[iris$Species == 'setosa', ]
iris_versicolor <- iris[iris$Species == 'versicolor', ]
iris_virginica <- iris[iris$Species == 'virginica', ]

d3 <- scatterplot3d(iris$Petal.Length, iris$Sepal.Length, iris$Sepal.Width, type = 'n')
d3$points3d(iris_setosa$Petal.Length,
            iris_setosa$Sepal.Length,
            iris_setosa$Sepal.Width,
            bg = 'orange', pch = 21)

d3$points3d(iris_versicolor$Petal.Length,
            iris_versicolor$Sepal.Length,
            iris_versicolor$Sepal.Width,
            bg = 'blue', pch = 21)

d3$points3d(iris_virginica$Petal.Length,
            iris_virginica$Sepal.Length,
            iris_virginica$Sepal.Width,
            bg = 'green', pch = 21)
