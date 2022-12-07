#install.packages('httr')
library(httr)
#install.packages('XML')
library(XML)
library(stringr)
url <- "http://media.daum.net"
web <- GET(url)
html <- htmlTreeParse(web, useInternalNodes = T, trim = T, encoding = 'utf-8')

rootNode <- xmlRoot(html)

news <- xpathSApply(rootNode, "//a[@class = 'link_txt']", xmlValue)
news

#preprocessing
news_pre <- gsub("[\r\n\t]", '', news)
news_pre <- gsub("[[:punct:]]", '', news_pre)
news_pre <- gsub("[[:cntrl:]]", '', news_pre)
news_pre <- gsub("[a-z]+", '', news_pre)
news_pre <- gsub("[A-Z]+", '', news_pre)
news_pre <- str_trim(news_pre)
news_pre

news_data <- news_pre[1 : 32]
news_data

#csv write
write.csv(news_data, "ch9/news_data.csv", quote = F)

#read by string
news_data <- read.csv("ch9/news_data.csv", header = T, stringsAsFactors = F)
str(news_data)

names(news_data) <- c("no", "news_text")
head(news_data)

news_text <- news_data$news_text
news_text


#KoNLP error in ubuntu

