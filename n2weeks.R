getwd()
setwd("C:/rpro/mining")
##���̺��� ��ȯ
##������ ������ ���������� ��ȯ
data("Titanic")
class(Titanic)
Titanic
library(earth)
data("etitanic"")
class(etitanic)
attach(etitanic)
str(etitanic)
head(etitanic)
##pcclass�� sex�� ���������� ��ȯ
head(model,matrix(survived~. , data = etitanic))
fit<-model.matrix(survived~. , data = etitanic)
head(fit)
dummy<-dummyVars(survived~. , data = etitanic)
pfit<-predict(dummy, newdata = etitanic)
head(pfit)
head(etitanic)
##������ ó��
##1. ������ ����
class(airquality)
head(airquality)
summary(airquality)
#1.�����̿���� knn ���� ��ü
imp<-preProcess(airquality, method = c('knnImpute'))
dim(airquality)
pa<-predict(imp,airquality)
dim(pa)
summary(pa)
##2.����ġ ����
omitted<-na.omit(airquality)
dim(omitted)
summary(omitted)
##�߾Ӱ�,��հ�,�ּҰ� �Ǵ� �ִ밪���� ��ü
airquality$Ozone<-ifelse(is.na(airquality$Ozone), mean(airquality$Ozone, na.rm = T), airquality$Ozone)
airquality$Solar.R<-ifile(is.na(airquality$Solar.R), mean(airquality$Solar.Rad, na.rm = T), airquality$Solar.R)
summary(airquality)
dim(airquality)
##median()/max()/min()