setwd("C:/rpro/mining/")
#���� ����(y,������)�� ���ְ� 2���� �ڷῡ ���� ������ƽ�м�
str(iris)
##�������� y->Species, x->Sepal.Length
#Species�� ������ ���� Ȯ��
levels(iris$Species)
a<-subset(iris,Species == "setosa"| Species == "versicolor")
str(a)
a
#ȸ�ͺм� �ǽ�
b<-glm(Species~Sepal.Length,data = a,family = "binomial")
summary(b)
#���յ� Ȯ��
fitted(b)[c(1:5,96:100)]
#������ƽ ȸ�͸��� �׷��� �׸���
#1/1exp(-x),y=-27.831+5.140x
x=seq(min(a$Sepal.Length),max(iris$Sepal.Length),0.1)
y= 1/(1+(1/exp(-27.831+5.140*x)))
plot(y~x, type='1',xlab="Sepal.Length", ylab = "versicolor")
aggregate(Sepal.Length~Species,a,mean)
aggregate(Sepal.Length~Species,iris,mean)     
c<-glm(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width, data = iris, family = "binomial")
#�⿩���� ���� �������� ����
Reduced<-step(c,direction = 'backward')
summary(Reduced)