#if()
x <- 50; y <- 4; z <- x * y
if(x * y >= 40) {
  cat("Result of x*y is more than 40.\n")
  cat('x * y = ', z)
} else {
  cat('Result of x*y is less than 40. x*y = ', z, '\n')
}

#if example
score <- scan()
score

result <- 'effort'
if(score >= 80) {
  result <- 'excellent'
}

cat('your grade is ', result, score)

#if, else if
score <- scan()

if(score >=90) {
  result = "A"
} else if(score >= 80) {
  result = "B"
} else if(score >= 70) {
  result = "C"
} else if(score >= 60) {
  result = "D"
} else {
  result = "F"
}

cat('your grade is ', result)
print(result)

#ifelse()
score <- scan()

ifelse(score >= 80, 'excellent', 'effort')
ifelse(score <= 80, 'excellent', 'effort')

#switch()
switch("name", id = "hong", pwd = "1234", age = 105, name = "hong gil dong")

empname <- scan(what = "")
empname
switch(empname, hong = 250, lee = 350, kim = 200, kang = 400)

#which()
name <- c("kim", "lee", "choi", "park")
which(name == "choi")

#which() in df
no <- c(1:5)
name <- c("hong-gil-dong", 'lee-sun-shin', 'gang-gam-chan', 'yu-gwan-sun', 'kim-yu-shin')
score <- c(85, 78, 89, 90, 74)
exam <- data.frame(student_number = no, name = name, score = score)
exam
which(exam$name == 'yu-gwan-sun')
exam[4, ]