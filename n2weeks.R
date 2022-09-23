getwd()
setwd("C:/rpro/mining")
##더미변수 변환
##범주형 변수를 숫자형으로 변환
data("Titanic")
class(Titanic)
Titanic
library(earth)
data("etitanic"")
class(etitanic)
attach(etitanic)
str(etitanic)
head(etitanic)
##pcclass와 sex을 숫자형으로 변환
head(model,matrix(survived~. , data = etitanic))
fit<-model.matrix(survived~. , data = etitanic)
head(fit)
dummy<-dummyVars(survived~. , data = etitanic)
pfit<-predict(dummy, newdata = etitanic)
head(pfit)
head(etitanic)
##결측값 처리
##1. 결측값 조사
class(airquality)
head(airquality)
summary(airquality)
#1.인접이웃방법 knn 으로 대체
imp<-preProcess(airquality, method = c('knnImpute'))
dim(airquality)
pa<-predict(imp,airquality)
dim(pa)
summary(pa)
##2.결측치 제거
omitted<-na.omit(airquality)
dim(omitted)
summary(omitted)
##중앙값,평균값,최소값 또는 최대값으로 대체
airquality$Ozone<-ifelse(is.na(airquality$Ozone), mean(airquality$Ozone, na.rm = T), airquality$Ozone)
airquality$Solar.R<-ifile(is.na(airquality$Solar.R), mean(airquality$Solar.Rad, na.rm = T), airquality$Solar.R)
summary(airquality)
dim(airquality)
##median()/max()/min()