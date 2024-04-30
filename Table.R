#1.막대그래프 작성해보기
hobby <- c('게임', '게임', '게임', '게임', '운동', '운동', '스포츠'
           ,'스포츠', '스포츠', '스포츠', '스포츠', '스포츠', '음악'
           ,'음악','음악','음악')
ds <- table(hobby)
ds


barplot(ds, main='My Hobby', 
        #막대그래프 색 지정하기
        col = c('blue','red','green','yellow'),
        #x축 y축에 설명 붙이기
        xlab='취미', ylab='(명)')



#2.각각의 막대그래프 작성해보기
age.A <- c(1292796, 1169837, 1027464, 889690, 736785
           ,606118,506442)
age.B <- c(1218871,1105855,978495,868701,754606,
           610446,510362)

as <- rbind(age.A, age.B)
colnames(as) <- c('2000','2005','2010','2015','2020'
                  ,'2025','2030')


barplot(as, main='인구 추정',
        col=c('blue', 'red'),
        #각각의 막대로 표현하기
        beside = TRUE,
        #범례 추가하기
        legend.text = c('남자', '여자'),
        args.legend = list(x='topright', bty='n',
                           inset=c(-0.25,0)))



#3.히토스그램 작성해보기
a <- c(2,4,10,12,15,17,22,24,25,22,23,26,28,29,
       30,33,35,34,36,42,44,45,66,55,56,57,51,51,
       54,54,52,53,67,68,64,63,61,68,69,61,62,64,
       54,52,51,55,65,61,62)
head(a)
dist <- a
hist(dist, main = '나이별 인구수',
     xlab = '(명)',
     ylab = '빈도수',
     border='blue',
     col='green',
     las=2,
     breaks=5)



#4.파이그래프 작성해보기.
pi <- c('좋다','싫다','무응답','그저그렇다',
        '좋다','싫다','무응답','좋다','좋다',
        '싫다','무응답','그저그렇다')

ps <- pi
pie(table(ps),main='배그 평가표',
    col=topo.colors(4),
    radius=0.5)



#5.화면 분할해보기
par(mfrow=c(2,2), mar=c(3,3,4,2))

barplot(ds, main='My Hobby', 
        col = c('blue','red','green','yellow'),
        xlab='취미', ylab='(명)')

barplot(as, main='인구 추정',
        col=c('blue', 'red'),
        beside = TRUE,
        legend.text = c('남자', '여자'),
        args.legend = list(x='topright', bty='n',
                           inset=c(-0.25,0)))

hist(dist, main = '나이별 인구수',
     xlab = '(명)',
     ylab = '빈도수',
     border='blue',
     col='green',
     las=2,
     breaks=5)

pie(table(ps),main='배그 평가표',
    col=topo.colors(4),
    radius=1)

par(mfrow=c(1,1), mar=c(5,4,4,2)+.1)
