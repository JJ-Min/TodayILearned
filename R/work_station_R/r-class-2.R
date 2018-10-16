x <- 1:10
x
y<- x-1 
y
plot(y) # 그림을 그려주는 함수 plot 

mtcars  
mtcars$mpg #mpg 에 관련된 정보만 보고싶ㅍ어
plot(mtcars$mpg)# yㅍ축은 mpg x축은 걍 자동차 이름을 숫자로 나타냄 1번 = 1번째 데이터 
dotchart(mtcars$mpg) # x축과 y축 바뀜 행을 나타내고 싶어!!!!!
row.names(mtcars)  #행의 이름을 나타냄 
dotchart(mtcars$mpg,labels=row.names(mtcars),cex=0.7) # 이름 드럽게 출력 글씨 지정 하고 싶어!!cex로 조정 


#mpg와 실린더의 관계가 있는지 나 알고싶어!! 
#mpg 를 작은 순 부터 정렬하고 싶음   order 키워드를 사용하자 
mtcars[order(mtcars$mpg),] # mpg를 작은거에서 큰 순서대로 재정렬
carmpg<-mtcars[order(mtcars$mpg),] # 쉼표 꼭 붙여야 함 
carmpg$cyl  # mpg가 작을수록 cyl이 큼 (거의)
dotchart(carmpg$mpg,labels=row.names(mtcars),cex=0.7)
carmpg$color[carmpg$cyl==4]<-"blue"
carmpg$color[carmpg$cyl==6]<-"green"
carmpg$color[carmpg$cyl==8]<-"red"

dotchart(carmpg$mpg,label=row.names(carmpg),cex=0.7,color=carmpg$color) # 표 제목 하고싶 어!!!

dotchart(carmpg$mpg,label=row.names(carmpg),cex=0.7,color=carmpg$color,main="나는 제목이다0") 

