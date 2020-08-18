2019-10-15)create table
-테이블생성명령
(사용형식 )

CREATE TABLE 테이블명(
    컬럼명 타입[(크기)][NOT NULL| [NULL]], --불필요한경우에는 생략할수있다는 뜻 
        :
    컬럼명n 타입[(크기)][NOT NULL| [NULL]],-- n nulln두개중에 하나만사용가능
    [CONSTRAINT 기본키설정이름 PRIMARY KEY(컬럼명1[,컬럼명2...]),
    --기본키설정이름은 같은이름을 사용할수없다.  PK_테이블명
    --한글은 3byte 영문자는 1byte
    --데이터베이스안에서 유일한 값이어야한다 기본키설정이름을 보면 어느컬럼의 어느키인지알수있도록 유일한값
    CONSTRAINT 외래키설정이름 FOREIGN KEY(컬럼명1[,컬럼명2...]),
        REFERENCES 테이블명(컬럼명1[,컬럼명2...])];
        
    - '테이블명'은 고유한 명칭이어야 함 (중복 안됨)
    - '컬럼명'은 동일 테이블에서 유일한 명칭 테이블이 다르면 중복 되어도 됨
    - 'NOT NULL' 정의 항목은 자료 삽임시 반드시 값을 기술해야함
    생략하면 NULL로 취급(DEFAULT값이 NULL)
    
    -'기본키설정이름'은 유일한 명칭이어야한다. 보통작성방식은 'pk_테이블명'형식으로 작성
    -'외래키설정이름'은 유일한 명칭이어야한다. 보통작성방식은 'fk_테이블명'형식으로 작성    
    -'원본테이블명(컬럼명1)': 외래키가 선언된 원래 테이블명과 컬럼명 
    
    예)EMP 와 DEPT
    
    --EMP테이블 만들어줌
    CREATE TABLE EMP(
        EMP_NO CHAR(4) NOT NULL,
        EMP_NAME VARCHAR(20) NOT NULL,
        DEPT_ID NUMBER(4) NOT NULL,
        SALARY NUMBER(10) NOT NULL, 
        EMAIL VARCHAR2(50),
        
        CONSTRAINT pk_emp PRIMARY KEY(EMP_NO),
        CONSTRAINT fk_emp_dept FOREIGN KEY(DEPT_ID),
            REFERENCES DEPT(DEPT_ID));
    --DEPT테이블 만들어줌
    CREATE TABLE DEPT(
        DEPT_ID NUMBER(4) NOT NULL,
        DEPT_NAME VARCHAR2(50) NOT NULL,
        MIN_SAL NUMBER(10),
        MAX_SAL NUMBER(10),
        
        CONSTRAINT pk_DEPT PRIMARY KEY(DEPT_ID)); 
            
     2)INSERT문
        -신규데이터를 삽입할때 사용
        -기본키가 중복값이거나 NULL값이어서는 안됨
        -컬럼의 제약사항이 NOTNULL인 컬럼은 반드시 데이터를 정의해야함
        (사용형식)
        
         INSERT INTO 테이블명(컬럼명1[,컬럼명2...)]
            VALUES(값1,값2,.....);
        -'[(컬럼명1[,컬럼명2...)]'은 생략 가능, 생략하면 테이블내의 모든 컬럼에 정의된 순서 대로 VALUES 절에서 값을 정의해야함
        -'VALUES(값1,값2,.....);':사용된 컬럼의 갯수와 순서에 맞는 데이터정의 
        
예)DEPT 테이블에서 다음값을 저장하시오
----------------------------------------
DEPT_ID DEPT_NAME   MIN_SAL MAX_SAL
----------------------------------------
 100     총무부   2000000     6000000
 200     영업부
 300     개발부
 400     생산부   25000000    8000000
----------------------------------------------

INSERT INTO DEPT(DEPT_NAME,MIN_SAL,MAX_SAL,DEPT_ID)
        VALUES('총무부',20000000,60000000,100);

    INSERT INTO DEPT VALUES(200,'영업부',0,0);
    INSERT INTO DEPT(DEPT_ID,DEPT_NAME) VALUES(300,'개발부');
    INSERT INTO DEPT VALUES(400,'생산부',25000000,8000000);
    
    SELECT * FROM DEPT;--항상 검증할때는 검증하는 방법은
--낫널이 아니더라도 반드시 데이터를 기입해서 갯수를 맞춰주어야함 0이라도 데이터 기입 
/*create or replace view v_lprod;

as

select * from lprod;

select * from v_lprod; 

*/

예) 사원테이블(EMP)에 다음자료를 저장하시요
-----------------------------------------------------
EMP_MO  EMP_NAME    DEPT_ID SALARY  EMAIL
-----------------------------------------------------
'P101'  홍길동      100  3000000     gdhonf@naver.com
'P102'  강감찬       400  3500000     
'P103'  지원희       300  2800000    wjdf@naver.com
-----------------------------------------------------




public class Exam_03 extends 
p
public class Exam_03 extends Exam_02 {
	public static void main(String[] args) {}
    
 System.out.println(c);
 }
 
 
 
 
INSERT INTO EMP(EMP_NO,EMP_NAME,DEPT_ID,SALARY,EMAIL)
        VALUES('P101','홍길동',100,3000000,'gdhonf@naver.com');
INSERT INTO EMP
    VALUES('P102','강감찬',400,3500000,'');        
        
    SELECT * FROM EMP;
    
INSERT INTO EMP(EMP_NO,EMP_NAME,DEPT_ID,SALARY,EMAIL)
        VALUES('P103','지원희',300,2800000,'wjdf@naver.com');
        
    3)DELETE문
    테이블에 저장된 자료를 삭제 사용형식 
    DELETE FROM 테이블명 --테이블이름
    [WHERE 조건]; --필드이름=데이터값
    
    
    -'조건': '컬럼명 관계연산자 값'의 형태로 정의 
    --관계연산자 6가지--조건의 맞는 연산자만 삭제합니다.
    
    -WHERE 절이 생략되면 '테이블'내의 모든 자료가 삭제 
    
    SELECT *FROM PROD;
    DELETE PROD; --PROD참조되는 테이블이 있기때문에 삭제되지않습니다.
    
    SELECT * FROM CART;
    COMMIT; -- 지금까지한것을 저장
    DELETE CART;
    ROLLBACK;  -- 잘못을 되돌릴수있는
    
    
    예)dept테이블에서 dept_id가 400번인 자료를 삭제 
    
   
   
    DELETE DEPT
     WHERE DEPT_ID=400;
        
    ALTER TABLE EMP
    DROP CONSTRAINT FK_EMP_DEPT;
    
    SELECT * FROM DEPT;
    
   






