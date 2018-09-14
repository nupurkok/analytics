women

str(women)
cor(women$height, women$weight)
cov(women$height, women$weight)
plot(women)


#create linear model
fit1 = lm (formula=weight ~ height,data = women)
summary(fit1)
fitted(fit1)
cbind(women, fitted(fit1), residuals(fit1))

ndata1 = data.frame(height = c(62.5, 63.5))
predict(fit1, newdata = ndata1)


#multiple linear regression
#predict mpg vs wt, hp
mtcars

fit2 = lm(mpg ~ wt + hp, data = mtcars)
summary(fit2)
range(mtcars$wt) ; range(mtcars$hp)
ndata2=data.frame(wt=c(2.5,3.4), hp=c(100,250))
predict(fit2, newdata = ndata2)

