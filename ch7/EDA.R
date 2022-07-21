#Exploratory Data Analysis
dataset <- read.csv('ch7/test.csv', header = T)
print(dataset)
View(dataset)
names(dataset)
attributes(dataset)
str(dataset)
dataset$Id
length(dataset$MiscFeature)
x <- dataset$Id
y <- dataset$MiscFeature
x
y
plot(dataset$Id)
dataset['Id']
dataset['MiscFeature']
dataset[1]
dataset[3]
dataset[1, ]
dataset[ , 1]
dataset[c('Id', 'MiscFeature')]
dataset[ , c(2:4)]
dataset[c(2:4), ]
dataset[-c(1:100), ]
summary(dataset$GarageArea)
sum(dataset$GarageArea)

sum(dataset$GarageArea, na.rm = T)

#NA remove
area <- na.omit(dataset$GarageArea)
sum(area)
length(area)

#replace missing value
x <- dataset$GarageArea
x[1:30]

dataset$GarageArea2 <- ifelse(!is.na(x), x, 0)
dataset$GarageArea2

x <- dataset$GarageArea
dataset$GarageArea3 <- ifelse(!is.na(x), x, round(mean(x, na.rm = T), 2))
dataset$GarageArea3

table(dataset$GarageArea)
pie(table(dataset$GarageArea))

#categorical variable outlier handling
summary(dataset$FireplaceQu)
dataset <- subset(dataset, FireplaceQu == 'TA')
dataset
length(dataset$FireplaceQu)
pie(table(dataset$FireplaceQu), col = c('red'))

#continuous variable outlier handling
dataset$LotArea
length(dataset$LotArea)
plot(dataset$LotArea)
summary(dataset$LotArea)

dataset2 <- subset(dataset, LotArea >= 5000 & LotArea <= 30000)
length(dataset2$LotArea)
stem(dataset2$LotArea)

summary(dataset2$LotArea)
boxplot(dataset$LotArea)
boxplot(dataset2$LotArea)

#find outlier
boxplot(dataset$LotArea)
boxplot(dataset$LotArea)$stats

dataset_sub <- subset(dataset, LotArea >= 1470.0 & LotArea <= 17597.0)
summary(dataset_sub$LotArea)

#scale change
summary(dataset2$Id)
dataset2$Id2[dataset2$Id <= 1900] <- 'A'
dataset2$Id2[dataset2$Id > 1900] <- 'B'
dataset2$Id2[dataset2$Id > 2547] <- 'C'
dataset2$Id2
