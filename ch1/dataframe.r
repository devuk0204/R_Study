#data frame using vector
no <- c(1, 2, 3)
name <- c("hong", "lee", "kim")
pay <- c(150, 250, 300)
vemp <- data.frame(No = no, Name = name, Pay = pay)
vemp

#data frame using matrix
m <- matrix(
  c(1, "hong", 150,
    2, "lee", 250,
    3, "kim", 300), 3, by = T
)
memp <- data.frame(m)
memp

#data frame using text file
getwd()
#txtemp <- read.table('emp.txt', header = 1, sep = "")

#csv
csvtemp <- read.csv('../../university/2022_spring_semester/Bigdata/welfare2.csv', header = T)
csvtemp
help(read.csv)

#make data frame
df <- data.frame(x = c(1:5), y = seq(2, 10, 2), z = c('a', 'b', 'c', 'd', 'e'))
df
df$x #df column name

#df data function
str(df)
ncol(df)
nrow(df)
names(df)
df[c(2:3), 1]

#summary() function - min, max, median. mean. 1st, 3rd
summary(df)

#apply function to data frame
apply(df[ , c(1,2)], 2, sum) #sum by column

#data frame subset
x1 <- subset(df, x >= 3)
x1

#subset with 2 condition
y1 <- subset(df, y <= 8)
xyand <- subset(df, x >= 2 & y <= 6)
xyor <- subset(df, x >=2 | y <= 6)
y1
xyand
xyor

#data frame example
sid = c("A", "B", "C", "D")
score = c(90, 80, 70, 60)
subject = c("computer", "language and literature", "software", "early childhood education")
student <- data.frame(sid, score, subject)
student

#view data types and data structures
mode(student); class(student)
str(sid); str(score); str(subject)
str(student)

#merge data frames
height <- data.frame(id = c(1, 2), h = c(180, 175))
weight <- data.frame(id = c(1, 2), w = c(80, 75))
user <- merge(height, weight, by.x = "id", by.y = "id")
user

#data,frame object dataset
#install.packages("UsingR")
#library(UsingR)