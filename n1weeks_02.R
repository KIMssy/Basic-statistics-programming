getwd()
#ȸ�ͺм����� ������ AIC�� ���ϱ�
install.packages("cars")
data(states)
head(states)
cor.plot(states)
##���Ӻ���:�ڻ��, �������� :�α�, ����, ���ͷ�, Frost
fit1<-lm(Murder~population+Income+Illiteracy=Frost,data=states)
summary(fit1)
fit2<-lm(Murder~population+Illiteracy=Frost, data=states)
summary(fit2)
AIC(fit1,fit2)
anova(fit1,fit2)
#�ܰ������� AIC�� ���ϱ�
fit<-lm(Murder~population+Income+Illiteracy+Frost+HS.Grad+Area, data=states)
library(MASS)
stepAIC(fit,direction = 'backward')
#press����ϱ�
install.packages("qpcR")
library(qpdR)
PRESS(fit)
PRESS(fit1)
PRESS(fit2)
#���� �� ��ǥ ���
library(olsrr)
ols_step_best_subset(fit)
#�����з�ǥ
#������ ����� �󸶳� �� �¾Ҵ��� ��Ÿ���� ǥ
predict<-as.factor(c(1,0,0,1,1,1,0,0,0,1,1,1))
actual<-as.factor(c(1,0,0,1,1,0,1,1,0,1,1,1))
confusionMatrix(predict,sctual)
#MAE,MSE,MAPE ���ϱ�
library(forecast)
accuracy(fit)
accuracy(fit1)
accuracy(fit2)
plot(states$Murder)
line(fit$fitted.values, col="red")
line(fit1$fitted.values, col="blue")
line(fit2$fitted.values, col="green")