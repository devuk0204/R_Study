#matrix using vector
m <- matrix(c(1:5))
m

#column priority
m <- matrix(c(1:10), nrow = 2)
m

#rows and columns do not match
m <- matrix(c(1:11), nrow = 2) #error but operational
m

#row priority
m <- matrix(c(1:10), nrow = 2, byrow = TRUE)
m

#batch of rows
x1 <- c(5, 40, 50:52)
x2 <- c(30, 5, 6:8)
mr <- rbind(x1, x2)
mr

#batch of column
mc <- cbind(x1, x2)
mc

#matrix() function
m3 <- matrix(10:19, 2)
#m4 <- matrix(10:20, 2) #error - odd number of data
m3
mode(m3); class(m3)

#use subscripts
m3[1, ]
m3[ , 5]
m3[2, 3]
m3[1, c(2:5)]

#3 by 3 matrix
x <- matrix(c(1:9), nrow = 3, ncol = 3)
x

#matrix data function
length(x)
ncol(x)
nrow(x)

#apply() function value of each row or column - 1 : column, 2 : row
apply(x, 1, max)
apply(x, 1, min)
apply(x, 2, mean)

#user-defined functions
f <- function(x) {
  x * c(1, 2, 3)
}
result <- apply(x, 1, f)
result

#row priority f
result <- apply(x, 2, f)
result

#column, row name
colnames(x) <- c("one", "two", "three")
x
rownames(x) <- c("one", "two", "three")
x
