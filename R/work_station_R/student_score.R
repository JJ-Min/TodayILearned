student <- read.table(file.choose(),header=T)
student
stu_num <- 50 # �л��� ��
avg_kor <- sum(student$kor)/stu_num��  # �����������
avg_kor
ceiling(avg_kor)

avg_eng <- sum(student$eng)/stu_num��  #�����������
avg_eng
ceiling(avg_eng)

avg_math <- sum(student$math)/stu_num   #����������� 
avg_math
ceiling(avg_math)

total <- student$kor+student$math+student$eng
which.max(total) # ���� 1���� �л��� ��ġ
student[which.max(total),]  #1�� �л��� �̸��� ���� 
