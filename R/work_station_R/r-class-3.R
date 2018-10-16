#nomal distribution mean=80 sd=10 
# ��� 80���� 40�� ���ϰ� �� ������ ������ �Ѵ� ��,40~120
x <- seq(40,120,length=300) #40~120 ���� 300���� �ɰ��� 
x
# ���Ժ��� � 
y <-dnorm(x,mean=80,sd=10)
y
plot(x,y) # �ڷ� ������ ��Ÿ���� �;� 
plot(x,y,type="l",col="red")

y1 <-dnorm(x,mean=80,sd=20)
y1
plot(x,y1) # �ڷ� ������ ��Ÿ���� �;� 
plot(x,y1,type="l",col="blue")
lines(x,y1,col="blue")

#probabiliy between 65-75

a<-pnorm(75,mean = 80,sd=10)
b<-pnorm(65,mean = 80,sd=10)
a-b ## 65~75 ���̿� ���� Ȯ�� �Դϴ�. 

#the probablity of over 92
c <- pnorm(92,mean=80,sd=10)
1-c

# cutoff that separates the bottom 30%  (���� 30% ���ϰ� �Ǵ� �� )
qnorm(0.3,mean=80,sd=10)

#cutoffs that contain the middle 60%
qnorm(0.2,mean=80,sd=10)
qnorm(0.8,mean=80,sd=10)