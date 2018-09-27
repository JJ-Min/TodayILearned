#자바스크립트 세번째 공부...

~~아 이거 정리 다해놨는데 저장안했다 그래서 다시한다 화난다~~

## 1. 자바스크립트 객체
- 자바스크립트는 **객체 기반** 언어  (객체 지향x)
- 여러개의 프로퍼티(property)와 메소드(method)로 구성
    - 프로퍼티 - 객체의 고유한 속성
~~~ js
var student={
  stu_num : "1234",
  name : "아콩",
  avg_score : function () {...}
};

stu_num , name : property    / avg_score : method
~~~

## 2. 자바스크립트 객체 종류

 - 코어 객체 : js가 실행되는 어디에서나 사용이 가능한 기본 객체
    - 기본 객체로 표준 객체
    - Array,Date,String,Math 등등등....
    - 웹 페이지 자바스크립트 코드에서 혹은 서버에서 사용 가능
 -  HTML DOM 객체 : html 문서에 작성된 각각의 html 태그들을 객체화 한 것
    - html 문서의 내용과 모양을 제어하기 위한 목적
    - W3C의 표준 객체
 - 브라우저 객체 : js로 브라우저를 제어하기 위해 제공 되는 객체
   - BOM(Brower Object Model)에 따르는 객체들
   - 비표준 객체

## 2-1 코어 객체

- 코어 객체 생성 : **new 키워드 이용**
   - 객체가 생성되면 객체 내부에 프로퍼티와 메소드들이 존재함
~~~js
var today =new Date(); // Date  타입의 객체 생성
var msg = new String("hello"); // "hello" 문자열을 담은 String 타입의 객체 생성
~~~
- 객체 접근 : **객체와 멤버 사이에 점 연산자(.) 이용**
~~~ js
obj.프로퍼티 = 값;    
변수 = obj.프로퍼티;
obj.메소드(매개변수들,,);
~~~

## 자바스크립트 배열

- 배열 :  전체를 하나의 단위로 다루는 데이터 구조
- 배열 생성
~~~ js
var week=["월","화","수","목","금","토","일",];
var num=[1,2,-5,6,7];
~~~
- 배열 접근 : 인덱스 이용하여 배열의 각 원소 접근


## 배열 만드는 방법

- []로 배열 만들기
   - [] 안에는 원소들의 초기 값 을 나열함
   - 배열의 크기는 고정되지 않고 마지막 원소 추가시 늘어남
   ~~~ js
   num[5]=21;
   num[6]=55;
   ~~~
- Array로 배열 만들기
   - 초기 값을 가진 배열 생성
    ~~~ js
    var week =new Array("월","화","수","귀차나");
     ~~~
   - 초기화되지 않은 배열 생성 : 일정 크기의 배열 생성 후 나중에 원소 값 저장
   ~~~js
   var week =new Array(7); // 생성 후 인덱스 이용 해서 값을 넣으면 됨.
   ~~~
  - 빈 배열 생성 : 원소 개수를 예상 할 수 없는 경우  
   ~~~ js
   var week =new Array(); // 인덱스 이용해서 값 넣을때 마다 크기 1씩 증가
   ~~~

   ~배열의 크기는 Array 객체의 length 프로퍼티(읽기전용)를 이용하여 알 수 있음~

- 배열의 특징
   - []로 생성해도 Array 객체로 다루어짐
   - 배열에 여러 타입의 데이터 섞여 저장 가능   

## String 객체 : 문자열을 담기 위한 객체
- 생성 되면 수정 불가능
~~~ js
var hello=new String("hello");
~~~
- 문자열 길이는 length 프로퍼티 이용하여 알아냄.
- 문자열을 배열 처럼 사용 :[index] 연산자를 사용하여 각 문자에 접근


## 사용자 객체 만들기
- new Object()이용
~~~ js

<script>
function avg_score(){...}
</script>
<script>
var student = new Object();
student.name="김아무개"; // 학생 이름 프로퍼티 생성 및 초기화
studnet.num="123";
student.avg_score=avg_score; // 평균 점수 구하는 메소드 작성
</scirpt>
~~~

- 리터럴 표기법 이용
~~~js
var student ={
  name : "김아무개",
  num : "123",
  avg_score : function(){...}
}
~~~
