getwd()
#ȸ�͸��������� ������
##�������, �����������, �����������
data(trees)
summary(trees)
head(trees)
dim(trees)
str(trees)
#ȸ�ͺм� ���Ӻ��� ����, �������� �ѷ�
##���̿� �ѷ�
fit<-lm(formula = trees$Height~trees$Girth, data = trees)
summary(trees)
cor(trees)
##���̿� ����
fit2<-lm(trees$Height~trees$Volume, data = trees)
summary(fit)
#CP�� ���ϱ�
library(olsrr)
full_model<-fit
ols_mallows_cp(fit1,full_model)
ols_mallows_cp(fit2,full_model)