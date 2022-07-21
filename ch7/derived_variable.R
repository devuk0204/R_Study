#dummy derived variable
user_data <- read.csv("../r_csv/Part-II/user_data2.csv", header = T, encoding = 'utf-8')
head(user_data)
table(user_data$house_type)

house_type2 <- ifelse(user_data$house_type == 1 |
                        user_data$house_type == 2, 0, 1)
house_type2

user_data$house_type2 <- house_type2

#1:1 relationship derived variable
pay_data <- read.csv("../r_csv/Part-II/pay_data2.csv", header = T, encoding = 'utf-8')
head(pay_data, 10)
table(pay_data$product_type)
str(pay_data)
library(reshape2)
product_price <- dcast(pay_data, user_id ~ product_type,
                       sum, na.rm = T)
head(product_price)
names(product_price) <- c('user_id', 'grocery(1)', 'grocery(2)',
                          'clothing(3)', 'stuff(4)', 'etc(5)')
head(product_price)

pay_price <- dcast(pay_data, user_id ~ pay_method, length)
head(pay_price)

#combining derived variance
library(plyr)
user_pay_data <- join(user_data, product_price, by = 'user_id')
head(user_pay_data)

user_pay_data <- join(user_pay_data, pay_price, by = 'user_id')
user_pay_data[c(1:10), c(1, 7:15)]

user_pay_data$total <- user_pay_data$`grocery(1)` + user_pay_data$`grocery(2)` + user_pay_data$`clothing(3)` + user_pay_data$`stuff(4)` + user_pay_data$`etc(5)`

user_pay_data[c(1:10), c(1, 7:11, 16)]
