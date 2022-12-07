#install.packages('ggmap')
library(ggplot2)
library(ggmap)

#visualize with longitude and latitude
seoul <- c(left = 126.7, bottom = 37.40, right = 127.17, top = 37.70)
map <- get_stamenmap(seoul, zoom = 12, maptype = 'terrain')
ggmap(map)

#apply layer to map
pop <- read.csv(file.choose(), header = T)

library(stringr)

region <- pop$'지역명'
lon <- pop$LON
lat <- pop$LAT
tot_pop <- as.numeric(str_replace_all(pop$'총인구수',',',''))

df <- data.frame(region, lon, lat, tot_pop)
df
df <- df[1 : 17, ]
df

daegu <- c(left = 123.4423013, bottom = 32.8528306, right = 131.601445, top = 38.8714354)
map <- get_stamenmap(daegu, zoom = 7, maptype = 'watercolor')
layer1 <- ggmap(map)
layer1
layer2 <- layer1 + geom_point(data = df, aes(x = lon, y = lat, color = factor(tot_pop), size = factor(tot_pop)))
layer2
layer3 <- layer2 + geom_text(data = df, aes(x = lon + 0.01, y = lat + 0.08, label = region), size = 3)
layer3
