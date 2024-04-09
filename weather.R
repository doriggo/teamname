library(xlsx)
library(svDialogs)
setwd('G:\\내 드라이브\\대학\\2-1\\확률과통계\\Rstudio 작업공간')
weather <- read.csv('weather.csv', header=T)
head(weather)

date <- dlgInput('today date')$res
point <- as.numeric(dlgInput('point')$res)
name <- dlgInput('name')$res
average <- as.numeric(dlgInput('averager')$res)
min <- as.numeric(dlgInput('min')$res)
max <- as.numeric(dlgInput('max')$res)

weather.today <- data.frame(date, point, name,average, min, max)
weather.today

sink('Weather.txt', append=F)
print(weather)
print(weather.today, header=F)
sink()

weather.average.cold <- subset(weather, average <= 0)
write.xlsx(weather.average.cold, 'AverageColdWeather.xlsx', row.names =T)