
marry=sample(c('Yes',"No"), size=100, replace=T)
selfGender=sample(c('M',"F"), size=100, replace=T)
selfAge=ceiling(runif(100, 23,30))
selfEdn=sample(c(1,2,3,4), size=100, replace=T, prob=c(.1,.3,.4,.2))
spouseAge=ceiling(rnorm(100, mean=26,sd=5))
spouseEdn=sample(c(1,2,3,4), size=100, replace=T, prob=c(.1,.3,.4,.2))
spouseSiblings=sample(c(0,1,2,3), size=100, replace=T, prob=c(.2,.3,.3,.2))
spouseCity=sample(c('Rural',"Urban"), size=100, replace=T)
spouseSalary= ceiling(runif(100, 0,100000))

df = data.frame(marry, selfGender, selfAge, selfEdn, spouseAge, spouseEdn, spouseSiblings, spouseCity, spouseSalary )

head(df)

library(rpart)

dtree1 = rpart(marry ~ . , data=df)
dtree1
library(rpart.plot)
rpart.plot(dtree1, cex=.8, nn=T)

df[spouseSalary > 36e+3 & spouseAge >=22 & marry=='Yes',c('spouseSalary','spouseAge', 'marry')]


dtree2 = rpart(marry ~ . , data=df, cp=-1)
dtree2
rpart.plot(dtree2)

printcp(dtree2) #cp value should be selected such that xerror is the least
ptree2 = prune(dtree2, cp=.115385)
rpart.plot(ptree2)

