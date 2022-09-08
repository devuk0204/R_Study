#install.packages('ggplot2')
library(ggplot2)
data(mpg)
str(mpg)
head(mpg)
table(mpg$drv)

#qplot - geometric object -> mapping -> graph
#1variable
qplot(hwy, data = mpg)
qplot(hwy, data = mpg, fill = drv)
qplot(hwy, data = mpg, fill = drv,
      binwidth = 2)
qplot(hwy, data = mpg, fill = drv,
      facets = . ~ drv,
      binwidth = 2)
qplot(hwy, data = mpg, fill = drv,
      facets = drv ~ .,
      binwidth = 2)

#2variables
qplot(displ, hwy, data = mpg)
