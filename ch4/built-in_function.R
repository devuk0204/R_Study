library(RSADBE)
data("Bug_Metrics_Software")
Bug_Metrics_Software[ , , 1]

#row, col sums and means
rowSums(Bug_Metrics_Software[ , , 1])
rowMeans(Bug_Metrics_Software[ , , 1])
colSums(Bug_Metrics_Software[ , , 1])
colMeans(Bug_Metrics_Software[ , , 1])

#descriptive statistics function
seq(-2, 2, by = 2)
vec <- 1:10
min(vec)
max(vec)
range(vec)
mean(vec)
median(vec)
sum(vec)
sd(rnorm(10))
table(vec)

#normal distribution random
n <- 1000
rnorm(n, mean = 0, sd = 1)
hist(rnorm(n, mean = 0, sd = 1))

#uniform distribution random
runif(n, min = 0, max = 10)
hist(runif(n, min = 0, max = 10))

#binominal distribution random
n <- 20
rbinom(n, 1, prob = 1 / 2)
rbinom(n, 2, 0.5)
rbinom(n, 10, 0.5)

n <- 1000
rbinom(n, 5, prob = 1 / 6)

#seed random
rnorm(5, mean = 0, sd = 1)
set.seed(123)
rnorm(5, mean = 0, sd = 1)
set.seed(345)
rnorm(5, mean = 0, sd = 1)

#math function
vec <- 1 : 10
prod(vec)
factorial(5)
abs(-5)
sqrt(16)
vec
cumsum(vec)
log(10)
log10(10)


#matrix function
x <- matrix(1:9, nrow = 3, ncol = 3, byrow = T)
y <- matrix(1:3, nrow = 3)
ncol(x)
nrow(x)
t(x)
cbind(x, 10:12)
rbind(x, 10:12)
diag(x)
det(x)
apply(x, 1, sum)
apply(x, 2, mean)
svd(x)
eigen(x)
x %*% y


#set function
x <- c(1, 3, 5, 7, 9)
y <- c(3, 7)
union(x, y)
setequal(x, y)
intersect(x, y)
setdiff(x, y)
setdiff(y, x)
5 %in% y