#install.packages('dplyr')
library(dplyr)

iris %>% head()
iris %>% head() %>% subset(Sepal.Length >= 5.0)

#install.packages(c('dplyr', 'hflights'))
library(dplyr)
library(hflights)

str(hflights)
hflights.df <- tbl_df(hflights)
hflights.df

#data filtering
filter(hflights.df, Month == 1 & DayofMonth == 2)
hflights.df %>% filter(Month == 1 & DayofMonth)

filter(hflights.df, Month == 1 | DayofMonth == 2)

#arrange()
arrange(hflights.df, Year, Month, DepTime, ArrTime)

#search by column
select(hflights.df, Year, Month, DepTime, ArrTime)

select(hflights.df, Year:ArrTime)

#add column
mutate(hflights.df, gain = ArrDelay - DepDelay,
         gain_per_hour = gain / (AirTime / 60))

select(mutate(hflights.df, gain = ArrDelay - DepDelay,
              gain_per_hour = gain / (AirTime / 60)),
       Year, Month, ArrDelay, DepDelay, gain, gain_per_hour)

summarise(hflights.df, avgAirTime = mean(AirTime, na.rm = T))
summarise(hflights.df, cnt = n(),
          delay = mean(AirTime, na.rm = T))

#ArrTime standard deviation and dispersion
summarise(hflights.df, arrTimeSd = sd(ArrTime, na.rm = T),
           arrTimeVar = var(ArrTime, na.rm = T))

#grouping
species <- group_by(iris, Species)
str(species)
species

#df join
df1 <- data.frame(x = 1:5, y = rnorm(5))
df2 <- data.frame(x = 2:6, z = rnorm(5))
df1
df2
inner_join(df1, df2, by = 'x')
left_join(df1, df2, by = 'x')
right_join(df1, df2, by = 'x')
full_join(df1, df2, by = 'x')

#df merge
df1 <- data.frame(x = 1:5, y = rnorm(5))
df2 <- data.frame(x = 6:10, y = rnorm(5))

df_rows <- bind_rows(df1, df2)
df_rows

df_cols <- bind_cols(df1, df2)
df_cols

#rename
df_rename <- rename(df_cols, x...2 = x...3)
df_rename <- rename(df_rename, y...3 = y...4)
df_rename

