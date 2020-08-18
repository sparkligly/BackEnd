2019-10-22)문자열 함수 

3) LPAD (cl, n[,expr]),RPAD(cl, n[,expr])
    -  n 으로 정의된 공간에 cl에 저장된 자료를 삽입하고 남는 공간
    왼쪽(LPAD), 오른쪽(RPAD)에 'expr'로 정의된 문자열을 삽입        -- 자릿수의 차이 옆에 *아스트릭스 를 특별한 문자로 채워넣는 과정 
    
--    *** 앞으로 중요 사용도 표시 
  --  **
    --*
    
예)
    SELECT LPAD ('대전시 중구',20,'*'),
              RPAD ('대전시 중구',20,'*') FROM DUAL; 
              
              
예)
    SELECT LPAD ('ABCD',6,'*') FROM DUAL; 
    SELECT LPAD ('ABCD',6,'*') FROM DUAL; 
    
    
예) 사원테이블에서 사원이름과 이메일 칼럼을 우측정렬하시오

    SELECT LPAD ('EMP_NAME',30) 
    SELECT LPAD ('EMAIL',20) FROM EMPLOYEES;
    
    
    SELECT EMP_NAME,SALARY FROM EMPLOYEES;
    SELECT LPAD(EMP_NAME,30), RPAD(SALARY,7,'*') FROM EMPLOYEES;  -- 외쪽에  아스트릭스 * 문자 삽입시 다시는 변경할수없다. 
    
    SELECT LTPTM(c1[,c2]), RTPTM(c1[,c2]), TRIM(c1)(*)
        - 문자열 오른쪽 (RTPTM), 또는 왼쪽(LTPTM)에 또는 양쪽모두 존재하는 무효의 공백을  제거함
         -C1 에서 C2가 정의 되면 정의되면 C2문자를 찾아 제거하고  C2가 생략되면 공백을 제거  


--1은 무효의 공백 2는 문자사이의  유효의공백
--'   (1) 홍  (2) 길  (2)  동 (1)   '


SELECT RTRTM('  홍   길  동    '), --오른쪽 공백 자르기
              LTRTM('  홍   길  동    '), --왼쪽 공백 자르기
              TRTM('  홍   길  동    ') FROM DUAL;   --양쪽 공백 자르기
                


SELECT RTRIM('ILPOSTINO','INO'),
              LTRIM('ILPOSTINO','L')FROM DUAL;

5)SUBSTR(C,N[,M])       (***사용빈도수 높음)
    -   주어진 문자열 C에서 N번째에서 M개만큼 문자열을 추출하여 반환
    -   M이 생략되면 N번 이후 모든 문자열 반환
    -   N은 1부터 시작되는 인덱스값 
-- 오라클은 1번부터 카운팅 

SELECT SUBSTR('ABCDEFG',2,3) FROM DUAL; -- 전체 데이터에서 세글자를 떼어라 

SELECT SUBSTR('ABCDEFGHI',2,10) AS C1,
              SUBSTR('ABCDEFGHI',2) AS C2 FROM DUAL; -- 데이터 수를 안쓰면 나머지 다 가 된다. 

SELECT SUBSTR('ABCDEFGHI',2,10) AS C1,
              SUBSTR('ABCDEFGHI',2) AS C2,
              SUBSTR('ABCDEFGHI',-6,4) AS C3 FROM DUAL;  -- 뒤에서 여섯번째 자리에서 네글자를 떼어라
              
예) 신규 분류번호를 자동으로 생성
--GU가 두번째에서
INSERT INTO LPROD(LPEOD_ID,LPROD_GU,LPROD_NM)
SELECT MAX (LPROD_ID)+1),'P'|| (MAX (SUBSTR(LPROD_GU,2,3))+1)
              FROM LPROD
              WHERE LPROD_GU LIKE 'P3%';



SELECT 'P'|| (MAX (SUBSTR(LPROD_GU,2,3))+1) --두번째에서 세글짜를 떼어라 
              FROM LPROD
              WHERE LPROD_GU LIKE 'P3%';---P3으로 시작하는 모든 자료


--예1)장바구니는 년월일 세번째 사람에 부여할 장바구니 번호를 만들어라 

--SELECT MAX (CART_NO)+1 
--              FROM CART
--              WHERE CART_NO LIKE '20050405%';

--예2)장바구니는 년월일 세번째 사람에 부여할 장바구니 번호를 만들어라 
--SELECT MAX (CART_NO)+1 
--              FROM CART
--              WHERE CART_NO LIKE TO_CHAR(SYSDATE,'YYYYMMDD')||'%';
              
 --예3)장바구니는 년월일 세번째 사람에 부여할 장바구니 번호를 만들어라 
SELECT  TO_CHAR(TO_CHAR(SYSDATE,'YYYYMMDD')||MAX(SUBSTR(CART_NO,-5,5))+1)
           FROM CART
              WHERE CART_NO LIKE TO_CHAR(SYSDATE,'YYYYMMDD')||'%';             
             
예)회원테이블에서 회원의 생일이 1월에서 3월 사이인 회원정보를 조회 
(회원번호, 회원명,생일) 단,생일 판단은 주민등록번호 (MEM_REGNO1)를 이용하시요 
MEM_ID 
MEM_NAME              
MEM_REGNO1

SELECT MEM_ID AS 회원번호,
            MEM_NAME AS 회원명,
            MEM_BIR AS 생일
    FROM MEMBER
WHERE SUBSTR(MEM_REGNO1,3,2) BETWEEN '01' AND '03';--세번째에서 두글자

5)REPLACE(c1,c2[,c3])  (중요도**)
    -   주어진 문자열 C1에서 C2를 찾아서 C3 로  대치함 
    -   C3가 생략되면 찾은 C2문자열을 제거

예)
SELECT REPLACE('무궁화 꽃이 피었음', '궁화','화과') FROM DUAL;
--듀얼은 형식맞추기 위한 것_(가상의 테이블)무궁화는 테이블에 없지롱_형식적으로 테이블명을 써준다_내꺼아님
SELECT REPLACE('무궁화 꽃이 피었음', '궁화') FROM DUAL;
--연속해서 있는것은 바꾸거나 버림
    SELECT REPLACE('ILPOSTINO, ROE WHOM THE BELL','0') FROM DUAL;
 
 예)사원테이블의 사원명에 포함된 공백을 제거하시오
    
     SELECT EMOLOYEE_ID,
                REPLACE(ENO_NAME,' ')
    FROM EMOLOYEES;
 
 
 
  예)회원테이블에서 회원성씨가 '이'인 회원의 성씨를 '리'로 변경하시오

    SELECT MEM_NAME,
            REPLACE(SUBSTR(MEM_NAME,1,1),'이','리')||SUBSTR(MEM_NAME,2) 
    FROM MEMBER;

예)회원테이블에서 주소중 '대전시'를 찾아 '대전광역시'로 바꾸시오
 
-- 
-- 
--SELECT  MEM_ADD1 AS 주소,
--               FROM MEMBER
--               WHERE SUBSTR(MEM_ADD1,1,3) REPLACE'대전광역시';
--


    --  SELECT MEM_ID AS 회원번호,
    --  FROM MEMBER
    --  WHERE
    --  GROUB BY
    --  ORDER BY
    
    
    7)INSTR(c1, c2 [,m2[,n]])          (*중요도)
    -   주어진 문자열 C1에서 C2문자열이 처음 나온 위치값 반환 
    -   M은시작위치 N은 반복횟수 
    
    
    SELECT INSTR('ILPOSTINO, FOR WHOM THE BELL','O',1,3) FROM DUAL;
    
    8)LENGTH(c1), LENGTHB(c2) (**중요도)
    -   주어진 문자열 c1의 글자수 LENGTH, 바이트수 (LENGTHB)를 반환   
    
    
SELECT ENP_NAME, LENGTH (ENP_NAME), LENGTHB(ENP_NAME) FROM EMPLOYEES;

SELECT MEM_ADD1,LENGTH(MEM_ADD1), LENGTHB(MEM_ADD1) FROM MEMBER;  

--한글은 3바이트..  ^^ 중간에 낀 공백은 1바이트
-- 암호화
