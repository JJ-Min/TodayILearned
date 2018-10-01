# R Programming 2번째 수업 내용 정리

## which와 기본함수

~~~
x < - c(1,2,5,7,-9,-6)
x >5 # 5보다 큰 값은 TRUE 출력, 작은 값은 FALSE를 출력함
sum(x>3) # 3보다 큰 값의 합이 아니라 TRUE의 개수의 합
         # TRUE = 1 ,FALSE =0 으로 바뀌기 때문의 개수의 합을 알 수 있음
sum(x[x>3]) # 3보다 큰 값들의 합
which(x>3) #3보다 큰 값들의 위치를 알려주셈~~~~
~~~


## DataFrame (like table)

table의 형태로 데이터를 관리하기 위하여 사용한다

~~~
name <- c('a','b','c','d')
sex <-c('f','f','m','m')
age <-c(19,20,21,22)

data.frame(name,sex,age)  #name->sex->age 순으로 table을 만듬
member <-data.frame(name,sex,age) # 변수에 담아서 출력함
member[행,열] # 이렇게 정보를 얻어올 수 있음
member[1,]  # a의 정보를 확인
member$name # 이름 출력
member$sex #성별 출력
member[1,2] <- m  # 데이터 수정 가능 ㅇㅇ
~~~

##파일 읽어오기
- **파일로 읽어와서 변수에 꼭 담아야함(중요)**
- .excel 파일은 .txt 혹은 .csv로 파일 확장자를 변경 해야함
- 첫 줄이 실제 데이터가 아닌 속성들의 이름 이라면 header는 트루임

~~~
read.table(file="url") # 방법 1 but 추천 x
read.table(file.choose(),header=T) #방법 2  파일 찾는 법(.txt)
read.csv(file.choose(),header=T)  # 방법 2  파일 찾는 법(.csv)

lungdata <- read.table(file.choose(),header=T) # 꼭 변수에 담으셈 제발!!
head(lungdata) # 첫번째부터 6번째 까지의 정보만 출력
tail(lungdata)  # 마지막부터 6번째 까지의 정보만 출력
str(lungdata)  # lungdate 전체 structure(구조)를 보여줌
max(lungdata.age) # 해당 데이터의 값들 중 최고 값
~~~

## Rolling a dice , 주사위 던지기 runiform
~~~
runif(100) # 0~1 사이에 있는 값들을 랜덤으로 100개 추출
roll <- 1000000000  # 주사위 던질 횟수
die <- ceiling(runif(roll)*6) //1~6까지 랜덤으로 roll개 뽑아서 die 에 저장
b <- table(die) # die 값을 table에 담아 변수 b 에 저장
barplot(b) <- table의 결과를 그래프로 보여줌
~~~
