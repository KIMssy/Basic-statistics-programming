getwd()
#회귀모형에서의 모형평가
##결정계수, 수정결정계수, 평균제곱오차
data(trees)
summary(trees)
head(trees)
dim(trees)
str(trees)
#회귀분석 종속변수 높이, 독립변수 둘레
##높이와 둘레
fit<-lm(formula = trees$Height~trees$Girth, data = trees)
summary(trees)
cor(trees)
##높이와 부피
fit2<-lm(trees$Height~trees$Volume, data = trees)
summary(fit)
#CP값 구하기
library(olsrr)
full_model<-fit
ols_mallows_cp(fit1,full_model)
ols_mallows_cp(fit2,full_model)