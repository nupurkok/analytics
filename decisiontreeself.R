#decision tree : predict proofbability  selection

df =  read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")

df$rank = factor(df$rank)
df$admit = factor(df$admit)
dim(df)
dtree3=rpart(admit ~ gre + gpa + rank, data=df)

#print tree
dtree3
#plot tree
rpart.plot(dtree3)
#print cp table
printcp(dtree3) #min xerror is forcp=0.023622
#prune the tree
ptree3=prune(dtree3, cp=0.05)
rpart.plot(ptree3)
#predict the class for any sample value

ndata3= sample_n(df,10)
predict(ptree3, newdata = ndata3, type='class')
df[15,]
