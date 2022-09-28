setwd("C:/rpro/mining/")
#반응 변수(y,범주형)의 범주가 2개인 자료에 대한 로지스틱분석
str(iris)
##반응변수 y->Species, x->Sepal.Length
#Species의 범주의 갯수 확인
levels(iris$Species)
a<-subset(iris,Species == "setosa"| Species == "versicolor")
str(a)
a
#회귀분석 실시
b<-glm(Species~Sepal.Length,data = a,family = "binomial")
summary(b)
#적합도 확인
fitted(b)[c(1:5,96:100)]
#로지스틱 회귀모형 그래프 그리기
#1/1exp(-x),y=-27.831+5.140x
x=seq(min(a$Sepal.Length),max(iris$Sepal.Length),0.1)
y= 1/(1+(1/exp(-27.831+5.140*x)))
plot(y~x, type='1',xlab="Sepal.Length", ylab = "versicolor")
aggregate(Sepal.Length~Species,a,mean)
aggregate(Sepal.Length~Species,iris,mean)     
c<-glm(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width, data = iris, family = "binomial")
#기여도가 낮은 변수부터 제거
Reduced<-step(c,direction = 'backward')
summary(Reduced)
