setwd("C:/rpro/multi")
getwd()
bumpus<-read.csv("C:/rprosy/bumpus.csv",encoding = "UTF-8")
head(bumpus)
class(bumpus)
str(bumpus)
bumpus<-subset(bumpus, select = c("x1","x2","x3","x4","x5"))
class(bumpus)
head(bumpus)
summary(bumpus)
CM<-round(cov(scale(bumpus)),3)
CM
##표6.1
round(cor(scale(bumpus)),3)
##주성분 분석을 위해 상관계수 행렬의 고유백터 구하기
class(CM)
#표 6.3참고
eigen(CM)
round(eigen(CM)$values,3)
round(eigen(CM)$vectors,3)
-1*round(eigen(CM)$vectors,2)
#함수를 사용하여 주성분 분석
pca<-prcomp(bumpus,scale = T)
summary(pca)
screeplot(pca)
screeplot(pca, type = "1", pch=19, lwd=3, col="black", main = "Scree Plot")
biplot(pca, cex=c(0.5, 0.75), main="BiPlot")