# Embedded System 2주차 강의 내용 정리


---

## Linux 기본 명령어 정리
<mark>Linux는 Command Line Base 임</mark>

- `pwd `(Print Working Directory) : 현재 위치한 디렉토리 확인

-  `cd`(Change Directory): 디렉토리 이동

- `ls`(List): 현재 위치한 디렉토리에 있는 하위 디렉토리와 파일을 보여줌
    - `ls -a`: 모든 파일 보여줌(숨김파일까지)
    -  `ls -l` : 자세히 보기
    - `ls -al` : 환경파일 + 자세히보기

- `mkdir`(Make Directory)+디렉토리 이름: 디렉토리 생성
- `cp`(Copy) : 파일 혹은 디렉토리 복사
   - `cp test.txt test1.txt` ===> test.txt를 test1.txt로 복사 (file Copy)
   - `cp -r aaa aaa1`  ===> 폴더 aaa를 폴더 aaa1으로 복사(Directory Copy)
 
- `mv`(Move): 파일과 디렉토리의 이름을 변경하거나 이동
   - `mv test.txt test1.txt` ===> test 를 test1로 이름 바꾸기
   - `mv test2.txt aaa2`  ===> teset2를 aaa2로 이동
- `cat` : 파일의 내용을 보여주거나 여러 파일을 합침
   - `cat test.txt` ===> test.txt를 보여줌(more명령어를 더 자주 사용)
   - `cat test.txt test1.txt > test3.txt` ===> test+test1=test3
- `more` : 화면 하나의 양만큼 파일의 내용을 보여줌
   - 아주 긴 파일이 있을때 화면이 넘어가는게 있으면 멈춤
   - step by step 으로 user 명령에 따라 보여줌(space bar 누르면 다음 화면으로)
- `echo` : printf와 같음
   - 주어진 문자열을 문자열 사이에 포함된 공백과 줄 마지막에 개행문자를 포함하여 표준 출력으로 출력 ~~ㅋㅋ오..전문용어남발~~
- `rm` (ReMove): 파일이나 디렉토리 삭제
   - 한번 삭제되면 절대 복구 안됨
   - `rm -i test1.txt ` ===> 정말 tese1.txt를 지울꺼냐고 한번 더 물어봐줌
   - `rm -r `  ===> 비어있지 않은 디렉토리는 -r 옵션 없이는 삭제 불가능
- `chmod` :파일의 권한을 수정  (권한에 대한 내용은 명령어 내용이 끝난 후 다시 설명하겠음)
- `chown` : 파일의 소유자를 바꾸는 명령어
- `man` : 도움말 문서를 봄 (메뉴얼의 약자)
- `find 검색시작 위치 -name 파일이름` : 파일 검색
- `top` :cpu내 프로세스 동작을 모니터링 (윈도우 작업관리자 같은느낌rg)
    -  종료하려면 `ctrl+C`
- `ps`: cpu내 활동중인 모든 프로세스를 보여줌
   - `ps -f`: 좀 더 구체적으로 보여줌     
- `kill` : 프로세스 강제 종료
    - `kill -9 PID(Process Id)` : 해당 프로세스 무조건 종료 (9가 가장 우선순위가 높음)
- `gzip`,`gunzip`, `tar`:파일과 디렉토리의 압축 및 압축 해제시 사용
- `파이프, 파이프라인[|]`
     - 둘 이상의 명령을 묶어 출력과 결과를 다른 프로그램의 입력으로 전환
     - | 기호 앞의 명령 결과가 | 기호 뒤 명령에 입력 데이터로 사용
     - `grep`는 지정된 패턴을 검색하는 명령어
- `입출력 재지정[<,>]` : 표준 입출력을 사용하지 않고 다른경로, 주로 파일로 재지정함
    - `>`: 표준 입력 재지정
    - `<`: 표준 출력 재지정    
- `&  fg` : 백그라운드로 작업을 수행시킴
   - 여러 작업을 하나의 터미널에서 할 때 유용
- `alias` : 자주 사용하는 명령어를 별칭으로 만듬 (define 같은느낌 몬지rg)
   - `alias la ='ls -a'` : la 명령어는 이제부터 ls -a 의 별칭임
   - `alias rm ='rm -i'` : 이렇게 하면 삭제할때 무조건 물어보겠죵 ????ㄱㅇㄷ
- `date`: 시스템 날짜와 시간 확인
- `df`,`du` : 디스크 사용량 확인
    - `df -h` :    전체 시스템 대상 /드라이브를 얼마나 차지하냐(폴더 단위)
    - `du-h`:지정된 디렉토리 단위
- `history` : 이전에 입력했던 명령어를 봄
   - 위 아래 화살표 방향키로 사용 가능
   - ! 뒤에 history 번호나 명령어 일부를 입력하면 최근 명령이 재실행 됨
- `sudo`(Superuser Do):super uesr 권한으로 명령어 실행
   - 소프트웨어를 설치하거나 환경 파일을 수정할 때 필요

---

## 리눅스 파일 권한의 구성
    ![linux.png](linux.png)
