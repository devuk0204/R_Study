#array object
vec <- c(1:12)
arr <- array(vec, c(3, 2, 2))
arr

#array data
arr[ , , ]
arr[ , , 2]
mode(arr); class(arr)

#dataset
library(RSADBE)
data("Bug_Metrics_Software")
str(Bug_Metrics_Software)
Bug_Metrics_Software
