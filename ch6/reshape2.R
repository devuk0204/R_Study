#install.packages('reshape2')
library(reshape2)

data <- read.csv('ch6/feature_target.csv')
data

str(data)
#wide format
wide <- dcast(data, weekday ~ line_number, sum)
wide
colnames(wide) <- c('weekday', 'weekend', 'ride', 'get_off', 'line_number')
wide

#long format
long <- melt(wide, id = 'weekday')
long
colnames(long) <- c('weekday', 'variable', 'sum')
long

#smiths
data('smiths')
smiths

long <- melt(id = 1:2, smiths)
long

dcast(long, subject + time ~ ...)


#3d array
data('airquality')
str(airquality)
airquality

names(airquality) <- toupper(names(airquality))
head(airquality)

air_melt <- melt(airquality, id = c('MONTH', 'DAY'), na.rm = T)
head(air_melt)

names(air_melt) <- tolower(names(air_melt))
acast <- acast(air_melt, day ~ month ~ variable)
acast
class(acast)
acast(air_melt,  month ~ variable, sum, margins = T)
