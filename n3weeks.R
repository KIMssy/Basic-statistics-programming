getwd()
setwd("C:/rpro/mining")
mdrr<-read.csv("mdrrDescr.csv")
class(mdrr)
attach(mdrr)
str(mdrr)
dim(mdrr)
#0또는 0근처 분산을 가지 변수 알아보기
install.packages("caret")
library(caret)
nzv<-nearZeroVar(mdrr, saveMatrics = T)
nzv<-nearZeroVar(mdrr)
length(nzv)
filteredmrr<-mdrr[,-nzv]
class(filteredmrr)
dim(filteredmrr)
##절대 상관관계 변수 제거
mdrrcor<-cor(filteredmrr)
filteredmrr<-filteredmrr[,-c(1:2)]
head(filteredmrr)
mdrrcor<-cor(filteredmrr)
highCordee<-findCorrelation(mdrrcor, cutoff = 0.75)
highCordrr
filterdmrr<-filteredmrr[,highCordrr]
dim(highCordrr)
length(highCordrr)