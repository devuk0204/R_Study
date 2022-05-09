#install.packages("stringr")
library(stringr)
str_extract("John35James45Laura25", "[1-9]{2}") #extract first number 1~9 if there are two consecutive
str_extract_all("John35James45Laura25", "[1-9]{2}") #extract first number 1~9 if there are two consecutive

#regular expression
string <- "hongkd105leess1002you25as2005"
str_extract_all(string, "[a-z]{3}")
str_extract_all(string, "[a-z]{3,}") #if more than 3 consecutive
str_extract_all(string, "[a-z]{3,5}") # if more than 3 or less than 5

str_extract_all(string, "hong")
str_extract_all(string, "25")
str_extract_all(string, "[a-z]{3}")
str_extract_all(string, "[0-9]{4}")

#regular expression 1 number and word
jumin <- "123456-1234567"
str_extract(jumin, "[0-9]{6}-[1234][0-9]{6}")
str_extract_all(jumin, "\\d{6}-[1234]\\d{6}")

name <- "John1234,James5678,Laura1012"
str_extract_all(name, "\\w{7,}")

#string operation
#stringlength
string <- "hongkd105leess1002you25asdf2005"
len <- str_length(string)
len

#string index
str_locate(string, "asdf")

#substring
string_sub <- str_sub(string, 1, len - 7)
string_sub
string_sub <- str_sub(string, 1, 23)
string_sub

#upper lower
ustr <- str_to_upper(string_sub); ustr
str_to_lower(ustr)

#replace, combine, detach
string_sub
string_rep <- str_replace(string_sub, "hongkd105", "honggildong35,")
string_rep <- str_replace(string_rep, "leess1002", "leesunshin45,")
string_rep <- str_replace(string_rep, "you25", "yougwansoon25,")
string_rep

string_c <- str_c(string_rep, "ganggamchan55")
string_c

string_sp <- str_split(string_c, ",")
string_sp

#string paste
string_vec <- c("honggildong35", "leesunshin45", "yougwansoon25", "ganggamchan55")
string_vec
string_join <- paste(string_vec, collapse = ",")
string_join