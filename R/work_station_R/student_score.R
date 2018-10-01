student <- read.table(file.choose(),header=T)
student
stu_num <- 50 # 학생의 수
avg_kor <- sum(student$kor)/stu_num수  # 국어평균점수
avg_kor
ceiling(avg_kor)

avg_eng <- sum(student$eng)/stu_num수  #영어평균점수
avg_eng
ceiling(avg_eng)

avg_math <- sum(student$math)/stu_num   #수학평균점수 
avg_math
ceiling(avg_math)

total <- student$kor+student$math+student$eng
which.max(total) # 총점 1위의 학생의 위치
student[which.max(total),]  #1위 학생의 이름과 성적 

