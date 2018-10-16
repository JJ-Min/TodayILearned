strsplit ('How are you?',split = '') #원래 문자를 하나하나 쪼개
a <- strsplit('How are you' ,split='')
a
length(a)
nchar(a)
class(a)
a[[1]]
a[1]
paste(a[[1]])
paste(a[[1]],collapse="") #원래 문자 다시 붙힘 ㅋㅋ

#뒤에서 부터 쪼깨서 붙혀서 출력 하려면 ?
b<-a[[1]][11:1] # 거꾸로 출력 된다 
paste(b,collapse = "") # 거꾸로 출력 완료! 
# 이 방법으로 하면 몇 글자인지 매번 세야 하는 단점이 있음 그러면?
# 함수를 만들어서 어떤 문자열이 만들어 와도 바로 바로 알 수 있게 하자 책에 110p에 나옴 

reversed_f <- function(string){
  a<-strsplit(string,split='')
  reversed <- a[[1]][nchar(string):1]   ##length 는 1차원 배열의 크기 nchar(str) str의 길이 
  reversed
  paste(reversed,collapse="")
}

reversed_f("I am Fine")


string = c(" How are you ?", 'apple')
length(string)
nchar(string)