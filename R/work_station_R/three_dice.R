roll <- 100000000 #주사위 던질 횟수 
dice <- ceiling(runif(roll)*6)+ceiling(runif(roll)*6)+ceiling(runif(roll)*6)
b<- table(dice) #주사위 3번 던졌을때 나올 수 있는 합들 마다의 갯수 
barplot(b)
(b/roll)   #주사위 3번 던졌을때 나올 수 있는 합의 확률 