#keyboard num
num <- scan()
1 
2 
3 
4 
5
num
sum(num)

#keyboard character
name <- scan(what = character())
honggildong
leesunshin
ganggamchan
yougwansoon
name

#edit()
df <- data.frame()
df <- edit(df)

#read.table()
student <- read.table(file = "/home/devuk/Desktop/etc/student.txt")
student
names(student) <- c("number", "name", "height", "weight")
student

#file.choose
student <- read.table(file.choose(), header = TRUE)

#have seperator
#student2 <- read.table(file.choose(), sep = ";", header = TRUE)
#student2 <- read.table(file.choose(), sep = "\t", header = TRUE)

#missing value
student3 <- read.table(file = "/home/devuk/Desktop/etc/student3.txt", header = TRUE, na.strings = "-")
student3

#.txt type csv
#student4 <- read.csv(file = "/home/devuk/Desktop/etc/student4.txt", sep = ",", na.strings = "-")

#read.excel()
#install.packages("readxl")
library(readxl)
setwd("/home/devuk/Desktop/code/r")
ap_excel <- read_excel(path = "apartment.xlsx", sheet = "apartment")
ap_excel
str(ap_excel)

#from internet
titanic <-
  read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/COUNT/titanic.csv")
titanic
dim(titanic)
str(titanic)
table(titanic$age)
table(titanic$sex)
table(titanic$survived)