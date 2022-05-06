#skip key
list <- list("lee", "lee sun shin", 95)
list

#list to vector
unlist <- unlist(list)
unlist

#have key more than 1
num <- list(c(1:5), c(6: 10))
num

#key : value
member <- list(name = c("John", "Laura"), age = c(35, 25),
               address = c("seoul", "busan"), gender = c("male", "female"),
               htype = c("apartment", "officetel"))
member

#access the value using the key
member$age[1] <- 45 #update
member$id <- "hong" #insert
member$pwd <- "1234" #insert
member

member$age <- NULL #delete
member

length(member) #count key
mode(member); class(member)

#list object function
a <- list(c(1:5))
b <- list(c(6:10))
lapply(c(a, b), max) #list apply -> lapply
sapply(c(a, b), max) #print vector

#multidimensional list
multi_list <- list(c1 = list(1, 2, 3),
                   c2 = list(10, 20, 30),
                   c3 = list(100, 200, 300))
multi_list$c1; multi_list$c2; multi_list$c3
multi_list

#multi list -> binding by column
do.call(cbind, multi_list)
class(do.call(cbind, multi_list))