hist(mtcars$mpg)
hist(mtcars$wt)

par(mfrow=c(1,2))
hist(mtcars$mpg)
hist(mtcars$wt)

par(mfrow=c(2,1))
hist(mtcars$mpg)
hist(mtcars$wt)

par(mfrow=c(1,1)) # to reset it
