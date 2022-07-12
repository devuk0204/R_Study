#user-defined function
f1 <- function() {
  cat("function without parameter")
}

f1()

f3 <- function(x, y) {
  add <- x + y
  return(add)
}

add <- f3(10, 20)
add

#descriptive statistics
test <- read.csv('ch4/feature_target.csv')
head(test)
summary(test)
table(test$sum)

data_pro <- function(x) {
  for(idx in 1:length(x)) {
    cat(idx, 'st column frequency analysis result')
    print(table(x[idx]))
    cat('\n')
  }
  
  for(idx in 1:length(x)) {
    f <- table(x[idx])
    cat(idx, 'st column max/min \n')
    cat('max = ', max(f), "min = ", min(f), '\n')
  }
}

data_pro(test)

#function example
x <- c(7, 5, 12, 9, 15, 6)
var_sd <- function(x) {
  var <- sum(x - mean(x) / 2) / (length(x) - 1)
  sd <- sqrt(var)
  cat('standard variance ', var, '\n')
  cat('sample standard deviation ', sd, '\n')
}

var_sd(x)


#pytha
pytha <- function(s, t) {
  a <- s ^ 2 - t ^ 2
  b <- 2 * s * t
  c <- s ^ 2 + t ^ 2
  cat('Pythagorean theorem : 3 variables : ', a, b, c)
}

pytha(2, 1)

#gugu
gugu <- function(i, j) {
  for(x in i) {
    cat('** table ', x, ' **\n')
    for(y in j) {
      cat(x, " * ", y, ' = ', x * y, '\n')
    }
    cat('\n')
  }
}

i <- c(2 : 9)
j <- c(1 : 9)

gugu(i, j)

#NA handling
data <- c(10, 20, 5, 4, 40, 7, NA, 6, 3, NA, 2, NA)
na <- function(x) {
  print(x)
  print(mean(x, na.rm = T))
  
  data = ifelse(!is.na(x), x, 0)
  print(data)
  print(mean(data))
  
  data2 = ifelse(!is.na(x), x, round(mean(x, na.rm = T), 2))
  print(data2)
  print(mean(data2))
}

na(data)


#Monte Carlo Simulation
coin <- function(n) {
  r <- runif(n, min = 0, max = 1)
  result <- numeric()
  for(i in 1:n) {
    if(r[i] <= 0.5)
      result[i] <- 0
    else
      result[i] <- 1
  }
  return(result)
}

coin(10)

montaCoin <- function(n) {
  cnt <- 0
  for(i in 1:n) {
    cnt <- cnt + coin(1)
  }
  
  result <- cnt /n
  return(result)
}

montaCoin(10)
montaCoin(30)
montaCoin(100)
montaCoin(1000)
montaCoin(10000)


