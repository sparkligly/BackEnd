2019-10-16)select 명령
- 데이터를 검색하는 명령

(사용형식)
select  컬럼명 [as["]별칭["],]
        컬럼명 [as["]별칭,],.....
    from 테이블명 [별칭]
    where[조건
    [and|or 조건]
    [group by 컬럼명[,컬럼명....]]
    [having 조건]
    [order by 컬럼명|컬럼인덱스[asc|desc],...];
    
   - 별칭:컬럼이나 체이블에 부여된 또 다른 이름 컬럼에 기술된 별칭은 결과의 제목으로 출력됨
   -컬럼별칭 기술방법:별칭에 공백과 같은 특수문자가 포함되는경유ㅠ 반드시 "" 로 묶어줘야함
   
    (1)컬럼명 as 별칭
    (2)컬럼명 as "별칭"
    (3)컬럼명  "별칭"
    (4)컬럼명  별칭
    - 컬럼명대신 '*'를 사용하면 해당 테이블의 모든 컬럼을 조회 
    
   select buyer_id as "거래처코드",
          buyer_name as 거래처명,
          buyer_lgu "분류 코드",
          buyer_add1 as 주소
     from buyer
    where buyer_add1 like '서울%';
    
--select substr(buyer_id,2,5) --select명에서 결과가 도출되어진다. 
--    form buyer

    
    --자바는 0부터 카운팅 오라클은 1부터 카운팅 
    
    예)  회원테이블에서 회원번호 회원명 마일리지를 조회하되 마일리지가 큰사람부터 출력하시오
select mem_id as 회원번호,
       mem_name as 회원명,
       mem_mileage as 마일리지
    from member
  order by 3 desc;
  
  
    --mem_mileage desc;
    
   -- 오라클주석
    한줄주석: --
    범위설정: /*~*/
    
    
    
    2019-10-16)오라클 자료형
    
    -오라클 자료형은 문자열,숫자,날짜,기타 자료형으로 구분
    
    1.문자자료형
    - 오라클에서 사용되는 모든 문자열은 ''하나짜리 따옴표로 묶여야합니다.
    -문자열과 숫자 자료형이 연산될땨 문자열이 숫자형으로 자동 변환됨

    '123'+23= 
    select '123'+23 from dual;   -- 문자 123이  숫자23과 만나서 숫자가 기본형인 오라클에서는 146이 나온다. (자바와 반대)
    
    1)char
    -고정길이 문자열을 저장하는 기억장소 정의 
    -왼쪽부터저장되고 남는 기억공간은 공백이 채워짐
    
    (사용형식)
    
    컬럼명 char(정수[char|byte])
    .기본은 byte임 (생략되면)
    .char(10) - 10 byte 기억 공간 확보 
    .char(10 char) -10 글자를 저장할 수 있는 기억 공간 확보 
    .최대 2000byte까지 저장 가능 
    .기본키등 같은길이 자료 처리에 사용
    
    예)
    
    create table temp01(
    COL1 char(10),
    COL2 char(10 char),
    COL3 char(10 byte));
    
    
    insert into temp01(COL1,COL2,COL3) 
    values('koreaseoul','대한민국서울특별시','대전시')
    
    insert into temp01(COL1,COL2,COL3) 
    values('korea','대한민국 서울시','중구')
    
    
select * from temp01;

select lengthb(COL1),lengthb(COL2),lengthb(COL3)from temp01;

2)varchar2
- 가변길이 문자열을 저장
(사용형식)
컬럼명 varchar2(정수[char|byte])
.4000byte사용가능
.char 옵션을 사용하던라도 전체공간은 4000byte를 초과할수없다


예)    create table temp02(
    COL1 varchar2(30),
    COL2 varchar2(30 char),
    COL3 varchar2(30 byte));
    
    
    insert into temp02(COL1,COL2,COL3) 
    values('koreaseoul','대한민국서울특별시','대전시')
    
    insert into temp02(COL1,COL2,COL3) 
    values('korea','대한민국 서울시','중구')
    
select * from temp02;

select lengthb(COL1),lengthb(COL2),lengthb(COL3)from temp02;

  -- 한글은 3byte  영어는1byte
--계산방법
--1.테이블 칸을 우선 지정  
--2.언어 지정 
--3.바이트수확인
--4.남은 바이트 수 확인 
--5.(지정테이블칸-공백칸빼기)
--6.3의 언어바이트갯수에서 5 더하기

**char은 기억공간이 남으면 공백이 삽입되므로 'A','A','A'이 모두 같은값으로 취급
--varchar2는 남는공간을 공백처리하지 않으므로 서로 다른값으로 취급


예)    create table temp03(
    COL1 char(15),
    COL2 varchar2(15));

    insert into temp03
    values('홍길동      ','홍길동      ');
    
select * from temp03 where trim(COL2)='홍길동';



3)LONG
-가변길이 문자열을 저장
-2GB까지의 자료 저장
-하나의 테이블에 하나의 칼럼만 long타입으로 설정가능
-select문의 select절update문의 set절 insert문의 values절에서만 사용가능
-기능개선 서빈스는 중지
(사용형식)
컬럼명LONG
    
    
    
예)    create table temp04(
    COL1 LONG,
    COL3 varchar2(4000));

    insert into temp04
    values('koreaseoul','대한민국서울특별시','대전시')
    
select * from temp04;

4)CLOB,NCLOB

-가변길이 문자열을 저장
-최대 4gb크기까지 저장가능
-long타입을 개선은 자료형
-한 테이블에 복수개의 clob타입컬럼 정의 기능
-일부기능은 DBMS_lob와 같은 특수 API를 사용해야함
-NCLOB는 다국어 언어 지원가능한 포맷으로 저장 (UTF_8,UTF_16)

(사용형식)
컬럼명 clob


예)    create table temp05(
    COL1 clob,
    COL2 clob,
    COL3 varchar2(30));

    insert into temp05(COL1,COL2,COL3) 
    values('대한민국은 민주 공화국인다','데이터베이스 SQL과 PL/SQL','ilpostino')

   select * from temp05; 
   
   select substr(COL1,5,10),DBMS_lob.getlength(COL2)from temp05; 
   
   
    