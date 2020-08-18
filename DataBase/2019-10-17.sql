2019-10-17)숫자자료형
** number
-정수와 실수 자료를 저장한다. 
-표현범위 :1,0 x10^130 ~9.999 x 10^125
(사용형식)
 컬럼명 number[ (정밀도[,스케일] ) ]
 1) 정밀도 >스케일인경우 

 -정밀도:전체기억간의 크기 1~38 사이의 정수 사용 
 - 스케일 : 소수점 이하의 자리수 ,-84~127               
 
 number(N1,N2)=> (N2 양의 정수) 소숫점 N2+1자리에서 반올림하여 N2자리까지 저장
                        (N2 음수인 경우 ) 정수부분 N2자리에서 반올림하여 저장 
 
 예)
 입력값            선언                저장값
 ----------------------------------------------------------
 
7456123.89      number          7456123.89
7456123.89      number(*,1)     7456123.9
7456123.89      number()         7456123.8 --0을 쓴것과 마찬가지고  소숫점 첫째짜리에서 반올림되어 없애시오]
7456123.89      number(9,2)     7456123.89
7456123.89      number(9,1)     7456123.9 
7456123.89      number(7-2)     7456100


2)정밀도 <스케일인 경우
-잘 사용되는 경우는 아님
-(스케일-정밀도)만큼의 '0'이 0. 이하에 존재해야함
-정밀도는'0'이 아닌 유효 숫자 갯수

 입력값            선언                저장값
 ----------------------------------------------------------
 1.234       number(4,5)        에러(정수부분의 유효숫자('1')
                                        0.0으로 시작되는 자료가 아님

0.01234     number(4,5)        에러(정수부분의 유효숫자('1')
                                        0.0으로 시작되는 자료가 아님

0.01234     number(3,5)        0.00123
--------------------------------------------------------------------



예)
CREATE TABLE TEMPO06(
    COL1 NUMBER,
    COL2 NUMBER(5),
    COL3 NUMBER(6,2),
    COL4 NUMBER(3,5));

INSERT INTO TEMPO06 VALUES(3.1415926,234.8999,123.0556,0.002555);
SELECT * FROM TEMPO06;

3.날짜형
-DATE타입과 TIMESTAMP타입이 제공
1)DATE타입
. 기본 날짜정보 (년월일시분초)저장
.범위 : - 4712/01/01~9999/12/31
(입력)
-날짜자료는 sysdate함수나 to_date함수로 날짜형으로 변환된자료
기본날짜타입은'YYYY/MM/DD HH24:MI:SS'형임

(계산)

-날짜형 자료는 '+','-'의 대상이 될수 있으면 셜과는 정의된 정수만큼 더해지거나 뺄셈된 (이전 날짜 날짜 형식으로 반환)



예)
CREATE DATE TEMPO07(
    COL1 DATE,
    COL2 DATE,
    COL3 DATE(6,2),
    COL4 DATE(3,5));

INSERT INTO TEMPO07 
                    VALUES(sysdate,to_date('2018/10/17 YYYY/MM/DD'));
                    
SELECT * FROM TEMPO07;

SELECT to_char(col1,'YYYY-MM-DD HH24:MI:SS') FROM TEMPO07;
SELECT to_char(col1,'YYYY-MM-DD HH24:MI:SS') FROM TEMPO07;
SELECT col1+15, col2-17 FROM TEMPO07;
SELECT mod(trunc(to_date('20171217')-to_date('00010101'))-1,7)
    FROM dual;
    
    2)timestamp
    timezone 정보를 포함하는정보를 저장
    timestamp :시간대에 상관이 없음
10억분의 1초단위로 시간저장

예)CREATE TABLE TEMPO08(
    COL1 timestamp,
    COL2 timestamp,
    COL3 timestamp with time zone,
    COL4 timestamp with local time zone,

INSERT INTO TEMPO08 
                    VALUES(sysdate,sysdate,sysdate);
                    
SELECT * FROM TEMPO08;

4.기타 자료형
 raw, longraw, bfile 타입등이 존재
1)bfile
이전 자료를 저장함 
이전 데이터를 데이터제이스 외부에 저장
(사용형식)
컬럼명 bfile
이전 자료를 데이터베이스 외부에 저장하기 때문에 디렉토리 (directory)별칭을 이용하여 디렉토리를 먼저 지정해야함
(1)디렉토리생성
디렉토리 별칭:30byte, 파일명:256byte,  파일은:4GB
예)
CREATE directory TEST_DTR AS 'D:\D_Other\Oracle';
 
 CREATE  TABLE TEMP10(
 COL1 BFILE);
 
 INSERT INTO TEMP10(COL1)
                    VALUES(bfileNAME('TEST_DIR','640678248_1_550'));
                                 
SELECT * FROM TEMP10;       


2)BLOB
-이전자료저장
-원본자료를 테이블내부에 이진형태로 저장
-4GB까지 자효저장가능
이진자료의 변환은 별도의 모둘로 처리해야함
(사용형식)

컬럼명
 CREATE  TABLE TEMP11(
 COL1 BLOB);
 
 DECLARE
 
V_DIR VARCGAR2()10 :='TEST_DTR';
v_file VARCGAR2(20) :='640678248_1_550';--이미지이름
v_file BFILE()10 :='TEST_DTR';
V_BLOB BLOB;

BEGIN
INSERT INTO TEMP11(COL1) VALES (EMPTY_BLOB())
RETURN COL1 INTO V_BLOB;
v_bfile:= BFILE(V_DIR,v_bfile);
DBMS_LOB.FILEOPEN(v_bfile,DBMS_LOB.FILE_READONLY);
DBMS_LOB.LOADFROMFILE(V_LOB,V_FILLE,DBMS_LOB.GETLENGTH(v_bfile));
DBMS_LOB.FILECLOSE(v_bfile);
COMMIT;
END;

SELECT *FROM TEM11;




