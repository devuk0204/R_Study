#combine
c(1:20)
1:20

#seq vector
seq(1, 10, 2)

#rep
rep(1:3, 3)
rep(1:3, each = 3)

#union, setdiff, intersect
x <- c(1, 3, 5, 7)
y <- c(3, 5)
union(x, y)
setdiff(x, y)
intersect(x, y)

#num, char, bool
v1 <- c(33, -5, 20:23, -2:3)
v2 <- c("john", "asdsd", "kskkkskk")
v3 <- c(T, TRUE, FALSE, T, TRUE, F, T)
v1
v2
v3

#mixed
v4 <- c(33, 05, 20:23, 12, "4")
v4

#1line several script with semi-colon
v1; mode(v1); class(v1) 
v2; mode(v2); class(v2)
v3; mode(v3); class(v3)

#vector object set column name 
age <- c(30, 35, 40)
age
names(age) <- c("john", "asdsd", "kskkkskk")
age
age <- NULL

#vector data reference
a <- c(1:50)
a[10:45]
a[19:(length(a)-5)]

#comma means a multidimensional array
#a[1,2] error

#c() example in function

v1[1] #print first element
v1[c(2, 4)] #print second and fourth element
v1[c(3:5)] #print element from third to fifth
v1[c(4, 5:8, 7)]

#negative number - complementary set
v1[-1]; v1[-c(2, 4)]; v1[-c(2:5)]; v1[-c(2, 5:10, 1)]

#vector onject dataset
#install.packages("RSADBE")
library(RSADBE)
data(Severity_Counts)
str(Severity_Counts)
