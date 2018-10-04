mtcars  # R에서 제공하는 data

rownames(mtcars) 
colnames(mtcars)
cars <- rownames(mtcars)
nchar(cars)
a <- nchar(cars)
max(a)
b<-which(a==max(a))
b
cars[b]
