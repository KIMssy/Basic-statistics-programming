getwd()
#������ ���
iris<-read.csv("iris.csv")
attach(iris)
head(iris)
str(iris)
#ǰ������ �ٸ� ������ ������ ���
levels(iris$Species)
pairs(iris[,1;4],pch=21, bg=c('red','green','blue')[iris$Species])
par(mfrow=c(1,2)) #������ ��Ŀ����� ���ȵ�
pairs(iris[,1:4])
#������ �׷��� �Ǵ� �������� �ٰ���
plot(iris$Sepal.Length,col='red')
plot(iris$Sepal.Length,col='red', type = 'l')
plot(iris$Sepal.Length[1:20],col='red', type = 'b')
plot(iris$Sepal.Length[1:20],col='blue', type = 'c')
plot(iris$Sepal.Length[1:20],col='blue', type = 'o',lwd=2)
plot(iris$Sepal.Length[1:20],col='blue', type = 'o',lwd=2,pch=19)
plot(iris$Sepal.Length[1:20],col='blue', type = 'o',lwd=2,pch=19)
plot(iris$Sepal.Length[1:20],col='green', type = 'o',lwd=2,pch=18,lty='dashed')
plot(iris$Sepal.Length[1:20],col='green', type = 'o',lwd=2,pch=18)
#������ ������ �׸���
library(scatterplot3d)
library(rgl)
plot3d(iris[,1:3],size=7,col=c('red',50),rep('blue',50),rep('green',50)))
#ü������ �� ǥ���ϱ�
library(aplpack)
faces(iris[1:10,1:4],face.type = 0, nrow=3,main = "Chernoff faces : faces.type=0")
iris[1:10,1:4]
iris[1:10, 2:5]
faces(iris[1:10,2:5],face.type = 0, nrow=3,main = "Chernoff faces : faces.type=0")
faces(iris[1:10,2:5],face.type = 1, nrow=3,main = "Chernoff faces : faces.type=1")
faces(iris[1:10,2:5],face.type = 2, nrow=3,main = "Chernoff faces : faces.type=2")