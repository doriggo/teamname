library(xlsx)
library(svDialogs)
setwd('G:\\내 드라이브\\대학\\2-1\\확률과통계\\Rstudio 작업공간')
weather <- read.csv('weather.csv', header=T)
head(weather)

for (i in 1:2) {
  date <- dlgInput('week date')$res
  point <- as.numeric(dlgInput('point')$res)
  name <- dlgInput('name')$res
  average <- as.numeric(dlgInput('averager')$res)
  min <- as.numeric(dlgInput('min')$res)
  max <- as.numeric(dlgInput('max')$res)
  weather <- rbind(weather, c(date, point, name,average, min, max))
  
  
  if(min < 0) {
    cat(date, "의 최저기온은", min, "으로 매우 춥습니다.\n")
  }
  else if(min == 0) {
    cat(date, "의 최저기온은", min, "으로 조금 쌀쌀합니다.\n")
  }
  else {
    cat(date, "의 최저기온은", min, "입니다.\n")
  }
}

sink('Weather.txt', append=F)
print(weather)
sink()

weather.average.cold <- subset(weather, average <= 0)
write.xlsx(weather.average.cold, 'AverageColdWeather.xlsx', row.names =T)