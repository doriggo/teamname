maxUser <- matrix(c(156645, 152585, 153594, 165827, 187642, 185713, 154207,
                    597194, 666779, 696202, 674007, 692311, 706785, 677738, 
                    422284, 435806, 429892, 434299, 440940, 434411, 370949, 
                    1236270, 1235393, 1260109, 1345776, 1245530, 1237154, 1347519), nrow = 4, byrow=T)

rownames(maxUser) <- c('GTA', 'PUBG', 'APEX', 'CS')
colnames(maxUser) <- paste(12:18, '일', sep="")
maxUser

sum<- GTA + PUBG + APEX + CS
sum

max.day<-sort(sum, decreasing=T)
max.day


salesD12=maxUser[,1]
salesD12

sum(salesD12)
max(salesD12)
min(salesD12)
salesD12*0.9
salesD12[salesD12>=500000]
day.500000=salesD12[salesD12>=500000]
names(day.500000)  
names(salesD12[salesD12>=500000])

length(salesD12[salesD12>500000])

G2.sales=salesD12[2]
salesD12[salesD12>G2.sales]

salesD12[salesD12>G2.sales]
length(salesD12[salesD12>500000])
