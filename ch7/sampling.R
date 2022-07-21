data <- read.csv('ch7/cleanData.csv', header = T)
head(data)
nrow(data)
choice1 <- sample(nrow(data), 30)
choice1

choice2 <- sample(50:nrow(data), 30)
choice2

choice3 <- sample(50:100, 30)
choice3

choice4 <- sample(c(10:50, 80:150, 160:190), 30)
choice4

data[choice1, ]

#7:3 sampling
data('iris')
dim(iris)

idx <- sample(1:nrow(iris), nrow(iris) * 0.7)
training <- iris[idx, ]
test <- iris[-idx, ]
dim(training)

#k-fold sampling
name <- c('a', 'b', 'c', 'd', 'e', 'f')
score <- c(90, 85, 99, 75, 65, 88)
df <- data.frame(Name = name, Score = score)

#install.packages('cvTools')
library(cvTools)

cross <- cvFolds(n = 6, K = 3, R = 1, type = 'random')
cross
str(cross)
cross$which
str(cross$which)

cross$subsets[cross$which == 1, 1]
cross$subsets[cross$which == 2, 1]
cross$subsets[cross$which == 3, 1]

#df observation
r <- 1
K <- 1:3
for(i in K) {
  data_idx <- cross$subsets[cross$which == i, r]
  cat('K = ', i, 'validation data\n')
  print(df[data_idx, ])
  cat('K = ', i, 'training data\n')
  print(df[-data_idx, ])
}
