#나의 이름은 김아름이다 의 문자를 모두 쪼개서 역으로 만들고 붙여서 출력하시오(함수 이용)

reversed_f <- function(string){
  a<-strsplit(string,split='')
  reversed <- a[[1]][nchar(string):1]   #length 는 1차원 배열의 크기 nchar(str) str의 길이 
  reversed
  print(a)
  print(paste(reversed,collapse=""))    #print 함수를 사용해서 두가지 모두 출력하였음
}

reversed_f("My name is Kim ah-reum") 