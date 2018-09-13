#vector
x = c(1,2,3)
x1=1:1000000000
x2=seq(1,100,2)
x2
?seq

#numeric Vector----

(marks = rnorm(30,60,10)) #round brackets assigns and prints
mean(marks)
median(marks)
mode(marks) #no mode
sd(marks)
var(marks)
summary(marks)

#properties of DS
length(marks)
range(marks)
str(marks)
class(marks)

hist(marks)
plot(density(marks))
#character vector----

(names =c('ram','shyam'))
summary(names)
#
gender = c('M','F','M')
summary(gender) #does not give appropriate answer
genderF=factor(gender)
summary(genderF)
#
(grades=c('A','B','D','C','A','C'))
gradesF=factor(grades, ordered=T)
summary(gradesF)
gradesF

gradesF1=factor(grades, ordered=T, levels=c('D','B','A','C'))#making your own order
summary(gradesF1)
gradesF1

table(gradesF1)
table(gender)
barplot(table(gradesF1))
pie(table(gradesF1))
#logical Vector----

(married=c(TRUE, FALSE, T, T, F, F))
sum(married)
table(married)
class(married)
summary(married)

#subset of marks
trunc(marks); round(marks,1); floor(marks); ceiling(marks)
marks1=trunc(marks)
marks1[-2] #skips the second value
marks1[c(1,3,8,24)]
mean(marks1[c(1,3,8,24)])
marks1[marks1>60] #marks1>60 gives T and F, accordingly is printed


set.seed(1234)#so we always get same pattern
gender2 = sample(c('M', 'F'), size = 30000, replace = T, prob = c(0.6, 0.4))
gender2
table(gender2)
prop.table(table(gender2))
