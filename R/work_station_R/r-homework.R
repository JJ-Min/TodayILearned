# 숫자를 입력하여 그 수보다 작은 짝 수 출력
a <-function(m){
  for(n in 1:m-1){
    if(n %% 2 == 0){
      print(n)    # skip 넘어감. continue와 비슷
    }
  }
}
{a(10)



# 3개의 점수를 입력하여 평균을 구하는 함수 
avg_score<-function(a,b,c){
  score <-c(a,b,c)
  SUM<-sum(score)
  avg<-SUM/3
  print(avg)

}
avg_score(80,70,90)

