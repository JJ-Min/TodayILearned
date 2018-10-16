# 문자 단어 순서 바꾸기 함수 

a<-strsplit('how are you?',split=' ') ## 공백!!!!!
a
class(a)
b<-a[[1]][3:1]
paste(b,collapse=" ")
length(a[[1]]) # 이땐 이걸 사용하겠음 
nchar(a[[1]])

reversed_wf <-function(string){
  a<-strsplit('how are you?',split=' ') ## 공백!!!!! 단어로 분류하기 
  str_length <-length(a[[1]])
  reversed <- a[[1]][str_length:1]
  paste(reversed,collapse = " ")
}

reversed_wf("hi my name is ahreum")