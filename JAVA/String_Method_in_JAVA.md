# String Method in JAVA
---

## startsWith()
- 문자열이 주어진 접두 표현을 가지고 시작하는지를 확인하는 함수
- 대소문자 구분
- boolean 형 함수 (시작하면 true ,아니면 false)

~~~JAVA
String str="ahkong";
if(str.startsWith("a")) return true;
else return false;

//ahkong 이 a로 시작하기 때문에 결과는 true!
~~~
## endWith()
- 문자열 마지막에 지정한 문자가 있는지 확인 하는 함수
- 대소문자 구분
- boolean형 함수(끝나면 true,아니면 false)
~~~ JAVA
String str="ahkong";
if(str.startsWith("g")) return true;
else return false;
//ahkong이 g로 끝나기 때문에 결과 true!
~~~

## equals()
- 두개의 문자열의 값만을 비교
- 대소문자 구분
- 같으면 true,다르면 false
~~~JAVA
String str1="hello";
String str2="hello";
if(str.equals(str2)) return true;
else false;  // 같기 때문에 결과는 true
~~~

## indexOf()
- 찾고자 하는 문자가 문자열 몇번째에 있는지 알려주는 함수
~~~JAVA
String str="ahkong"
int indexOf=str.indexOf("k");
//indexOf == 2  
~~~

## lastindexOf()
- 찾고자 하는 문자가 2개 이상일때 마지막 몇번째에 있는지 알려주는 함수
~~~JAVA
String str="hello world";
int lastindexOf=str.lastindexOf("l");
// lastindexOf==9
~~~

## split()
- 구분자를 기준으로 문자열을 배열로 쪼개서 반환하는 함수
- 구분자는 따로 저장 안됨 사라진다구!!!!!
~~~JAVA
String str="a,b,c,dddd,dsf";
String[] split=str.split(",")
return split;
~~~
## substring()
- 문자열에 지정한 범위에 속하는 문자열을 반환
- 시작범위의 값은 포함하고 끝나는 범위는 값에 포함 하지 않음
~~~JAVA
String str="ahkong";
str.substring(0,2); // 0,1 index에 뭐 있는지 반환
~~~
## compareTo()
- 두개의 문자열을 앞에서 부터 순서대로 비교하다가 틀린 부분 있으면 비교하는 문자열의 문자를 반환
## contains()
 - 두개의 문자열을 비교해서 비교대상 문자열을 포함 하는지 알려주는 함수
 - 포함: true / 포함x :false
 ~~~ JAVA
String str1="abcd";
String str2="c";
str1.contains(str2); // true~!
 ~~~
## format()
- 서식 문자열을 이용해서 서식화된 문자열을 반환
~~말보단 코드로 보는게 훨 이해하기 수월~~
~~~JAVA
int i=123;
System.out.print("%,d",i);
//123 출력
//이게 어느 상황에 쓰이면 편할진 아직 의문 좀 더 알아보기
~~~
## replaceFirst()
 - 문자열에 지정한 문자 가 있다면 그 첫번째만 새로 지정한 문자로 바꿔줌

 ~~~ JAVA
 String str="Aman";
 str.replaceFirst("A","super") //superman
 ~~~
## charAt()
- 지장한 index의 문자 반환하는 함수
- 문자열을 한글자 한글자 뜯어보고 싶을때 주로 사용

## concat()
- 문자열과 문자열 결합
- `str1.concat(str2)`

## toLowerCase(),toUpperCase()
- 주어진 문자열을 전부 소문자/대문자로 바꿔주는 함수
## replace()
- 문자열에 있는 특정 문자를 다른 문자로 바꿔주는 함수
## trim()
- 문자열의 공백 제거

---
#### 오늘의 느낀점

문자열 ㅁㅔ소드를 모르면 코드가 길어지고 더러워진다...몸소 느끼고 정리하였다 이제부터 알고리즘을 풀다가 또 새로운 메소드를 알게 되면 정리하겠다. 아 그리고 ㅋㅋㅋㅋㅋㅋㅋㅋㅋ`Arrays.sort()`가 나는 문자열 길이로도 정렬이 자동으로 되는줄은
몰랐지.................몰라서 버블정렬 직접 했지.....바보지..뭐  
