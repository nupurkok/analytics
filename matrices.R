#matrices
x = 1:9
b = matrix(x,3)
b
t(b)
?runif #uniform Distribution
marks3 = floor(runif(30,50,90))
b1 = matrix(marks3, 6) #fills by col
b1
(b2=matrix(marks3, nrow=6, byrow = T)) #fills by row
colSums(b2)
rowSums(b2)
rowMeans(b2)
colMeans(b2)
sum(b2)
b2[b2 > mean(b2)]
b2[3:4, 2:5]
