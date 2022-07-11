#print with cat()
x <- 10
y <- 20
z <- x * y
cat("result of x * y is ", z, "\n")
cat("x * y = ", z)

#print()
print(z)

#file save
#sink()
library(RSADBE)
data(Severity_Counts)
sink("severity.txt")
severity <- Severity_Counts
severity

#write.table()
