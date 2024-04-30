install.packages('xlsx')
install.packages('svDialogs')
library(xlsx)
library(svDialogs)
setwd('C:\\Users\\nuepl\\OneDrive\\문서\\practice')
weather <- read.csv('weather.csv', header=T)

Inputdate <- dlgInput('2024-00-00')$res
weatherI <- subset(weather, Inputdate==date)
weatherI
weatheraverage <- weatherI[1,4]
weatheraverage

if(weatheraverage <= 12) {
  cat(Inputdate, "의 평균 기온은 12도 이하이므로 추웠습니다.\n")
}else{
  cat(Inputdate, "의 평균 기온은 12도를 초과하므로 적당했습니다.\n")
}
