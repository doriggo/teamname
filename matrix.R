# 매트릭스 활용
maxUser <- matrix(c(156645, 152585, 153594, 165827, 187642, 185713, 154207,
                    597194, 666779, 696202, 674007, 692311, 706785, 677738, 
                    422284, 435806, 429892, 434299, 440940, 434411, 370949, 
                    1236270, 1235393, 1260109, 1345776, 1245530, 1237154, 1347519), nrow = 4, byrow=T)

# 행 열에 이름 붙이기
rownames(maxUser) <- c('GTA', 'PUBG', 'APEX', 'CS')
colnames(maxUser) <- paste(12:18, '일', sep="")
maxUser


GTA<- c(156645, 152585, 153594, 165827, 187642, 185713, 154207)
PUBG<- c(597194, 666779, 696202, 674007, 692311, 706785, 677738)
APEX<- c(422284, 435806, 429892, 434299, 440940, 434411, 370949)
CS<- c(1236270, 1235393, 1260109, 1345776, 1245530, 1237154, 1347519)

names(GTA) <- paste(12:18, '일', sep="")
names(PUBG) <- paste(12:18, '일', sep="")
names(APEX) <- paste(12:18, '일', sep="")
names(CS) <- paste(12:18, '일', sep="")


# 12일 총 접속자 수
sum<- GTA + PUBG + APEX + CS
sum
sum(salesD12)

# 12일 접속자 평균
avg<-sum(salesD12) / 4
avg

# 12일 최대 접속자, 최소 접속자
max.day<-sort(sum, decreasing=T)
max.day

max(salesD12)
min(salesD12)

salesD12=maxUser[,1]
salesD12


# 12일 접속자 수 50만명 이상인 게임 목록
salesD12[salesD12>=500000]
day.500000=salesD12[salesD12>=500000]
names(day.500000)  
names(salesD12[salesD12>=500000])

length(salesD12[salesD12>500000])

G2.sales=salesD12[2]
salesD12[salesD12>G2.sales]

salesD12[salesD12>G2.sales]
length(salesD12[salesD12>500000])
