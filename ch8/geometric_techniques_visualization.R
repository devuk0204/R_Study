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
qplot(displ, hwy, data = mpg, color = drv, facets = .~drv)

# aesthetic factor mapping
head(mtcars)
qplot(wt, mpg, data = mtcars, color = factor(carb))
qplot(wt, mpg, data = mtcars, size = qsec, color = factor(carb))
qplot(wt, mpg, data = mtcars, size = qsec, color = factor(carb), shape = factor(cyl))

#geometric object
head(diamonds)
qplot(clarity, data = diamonds, fill = cut, geom = "bar")
qplot(clarity, data = diamonds, color = cut, geom = "bar")
qplot(wt, mpg, data = mtcars, size = qsec, geom = "point")
qplot(wt, mpg, data = mtcars, size = factor(cyl), color = factor(carb), geom = 'point')
qplot(wt, mpg, data = mtcars, size = qsec, color = factor(carb), shape = factor(cyl), geom = "point")
qplot(wt, mpg, data = mtcars, geom = c("point", "smooth"))
qplot(wt, mpg, data = mtcars, color = factor(cyl), geom = c("point", "smooth"))
qplot(mpg, wt, data = mtcars, color = factor(cyl), geom = "line")
qplot(mpg, wt, data = mtcars, color = factor(cyl), geom = c("point", "line"))

#ggplot aesthetic factor mapping
p <- ggplot(diamonds, aes(carat, price, color = cut))
p + geom_point()

p <- ggplot(mtcars, aes(mpg, wt, color = factor(cyl)))
p + geom_point()

#ggplot geometric object
p <- ggplot(diamonds, aes(price))
p + stat_bin(aes(fill = cut), geom = "bar")
p + stat_bin(aes(fill = ..density..), geom = "bar")

p + stat_bin(aes(fill = cut), geom = "area")
p + stat_bin(aes(color = cut, size = ..density..), geom = "point")

##scatter plot and regression line
library(UsingR)
data("galton")
p <- ggplot(data = galton, aes(x = parent, y = child))
p + geom_count() + geom_smooth(method = "lm")

#Theme apply
p <- ggplot(diamonds, aes(carat, price, color = cut))
p <- p + geom_point() + ggtitle("Correlation of Diamond weight and price")
print(p)
p + theme(
  title = element_text(color = "blue", size = 25),
  axis.title = element_text(size = 14, face = 'bold'),
  axis.title.x = element_text(color = 'green'),
  axis.title.y = element_text(color = 'green'),
  axis.text = element_text(size = 14),
  axis.text.y = element_text(color = 'red'),
  axis.text.x = element_text(color = 'purple'),
  legend.title = element_text(size = 20, face = 'bold', color = 'red'),
  legend.position = 'bottom',
  legend.direction = 'horizontal')

#ggsave()
p <- ggplot(diamonds, aes(carat, price, color = cut))
p + geom_point()
ggsave(file = "/home/devuk/code/diamond_price.pdf")
ggsave(file = "/home/devuk/code/diamond_price.jpg", dpi = 72)

p <- ggplot(diamonds, aes(clarity))
p <- p + geom_bar(aes(fill = cut), position = 'fill')
ggsave(file = "/home/devuk/code/diamond_price.png", plot = p, width = 10, height = 5)
