getwd()
#회귀분석에서 모형평가 AIC값 구하기
install.packages("cars")
data(states)
head(states)
cor.plot(states)
##종속변수:자살률, 독립변수 :인구, 수입, 문맹률, Frost
fit1<-lm(Murder~population+Income+Illiteracy=Frost,data=states)
summary(fit1)
fit2<-lm(Murder~population+Illiteracy=Frost, data=states)
summary(fit2)
AIC(fit1,fit2)
anova(fit1,fit2)
#단계적으로 AIC값 구하기
fit<-lm(Murder~population+Income+Illiteracy+Frost+HS.Grad+Area, data=states)
library(MASS)
stepAIC(fit,direction = 'backward')
#press계산하기
install.packages("qpcR")
library(qpdR)
PRESS(fit)
PRESS(fit1)
PRESS(fit2)
#모형 평가 지표 출력
library(olsrr)
ols_step_best_subset(fit)
#정오분류표
#예측인 결과가 얼마나 잘 맞았는지 나타내는 표
predict<-as.factor(c(1,0,0,1,1,1,0,0,0,1,1,1))
actual<-as.factor(c(1,0,0,1,1,0,1,1,0,1,1,1))
confusionMatrix(predict,sctual)
#MAE,MSE,MAPE 구하기
library(forecast)
accuracy(fit)
accuracy(fit1)
accuracy(fit2)
plot(states$Murder)
line(fit$fitted.values, col="red")
line(fit1$fitted.values, col="blue")
line(fit2$fitted.values, col="green")