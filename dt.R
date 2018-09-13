#data frame ----

#rollno, name, batch, gender, marks1, marks2

(rollno=1:30)
(name=paste('student', 1:30, sep = '_'))
(batch=sample(c('2016','2017','2018'), size = 30,replace = T))
table(batch)
(gender=sample(c('M','F'), size = 30,replace = T))
table(gender)
(marks1=rnorm(30, mean = 65, sd = 7))
(marks2=rnorm(30, mean = 60, sd = 10))

df=data.frame(rollno, name, batch, gender, marks1, marks2, stringsAsFactors = F)
df #stringsAsFactors important
df$batch
df$gender = factor(df$gender)
df$batch = factor(df$batch, ordered = T, levels = c('2016', '2017', '2018'))
df$rollno = as.character(df$rollno)

str(df)
summary(df)

head(df) # first 6 rows
tail(df) # last 6 rows
head(df, n=2)
dim(df)
nrow(df)
ncol(df)
names(df) #names of cols

df[1:2,1:4]
df[c(3,6,8,25), c(2,4)]
(df[df$gender=='M',]) # males in all columns
df[df$gender=='M', 1:3]
df[df$gender=='M' & marks1 > 70, 3:5]

sort(df$marks1) #just sorts the values
order(df$marks1) #shows the postion of sorting in ascending order according to marks1
df [order(df$marks1), ] # everything in ascending order of marks1
rev(sort(df$marks1))

df[order(df$gender, df$batch), ]
df[order(gender, - batch), ] # reverses batch order


#summary/aggregating ----

aggregate(df$marks1, by=list(df$batch), FUN=mean)
aggregate(marks1 ~ batch, data=df, FUN=mean)
aggregate(cbind(marks1, marks2) ~ batch, data=df, FUN=mean)
aggregate(cbind(marks1, marks2) ~ batch + gender, data=df, FUN=mean)
aggregate(cbind(marks1, marks2) ~ gender + batch, data=df, FUN=mean)

aggregate(cbind(marks1, marks2) ~ gender + batch, data=df, FUN=max)
