#nomal distribution mean=80 sd=10 
# 평균 80에서 40을 더하고 뺀 정도를 범위로 한다 즉,40~120
x <- seq(40,120,length=300) #40~120 까지 300개로 쪼개라 
x
# 정규분포 곡선 
y <-dnorm(x,mean=80,sd=10)
y
plot(x,y) # 자료 선으로 나타내고 싶엉 
plot(x,y,type="l",col="red")

y1 <-dnorm(x,mean=80,sd=20)
y1
plot(x,y1) # 자료 선으로 나타내고 싶엉 
plot(x,y1,type="l",col="blue")
lines(x,y1,col="blue")

#probabiliy between 65-75

a<-pnorm(75,mean = 80,sd=10)
b<-pnorm(65,mean = 80,sd=10)
a-b ## 65~75 사이에 있을 확률 입니다. 

#the probablity of over 92
c <- pnorm(92,mean=80,sd=10)
1-c

# cutoff that separates the bottom 30%  (하위 30% 이하가 되는 점 )
qnorm(0.3,mean=80,sd=10)

#cutoffs that contain the middle 60%
qnorm(0.2,mean=80,sd=10)
qnorm(0.8,mean=80,sd=10)
