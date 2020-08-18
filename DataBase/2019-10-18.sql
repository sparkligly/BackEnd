2019 - 10 - 18)where절
        --selectsys date from
        --select sysdate from dual;
        --select 305*12345 from dual;
        
        -조건을 부여하여 조건에 맞는 행들의 결과를 select 절에서 처리
        사용형식 
        where 컬럼명 관계연산자 값|컬럼명 [and|or 컬럼명 관계연산자 값|컬럼명]
        
        1)관계연산자
        
        - 값의 크기를 비교하는 연산자
        - >,<,= ,<=,>=,<>(!=)
        
        7/5
        
        예) 회원테이블에서 마일리지가 3000이상인 회원을 조회하시오
        ---------------------------------------------
        (회원번호,회원명, 직업,마일리지)
        ---------------------------------------------
        select MEM_ID AS 회원번호,
                    MEM_NAME AS 회원명, 
                    MEM_JOB AS직업,
                    MEM_MILEAGE AS 마일리지
            FROM MEMBER
        WHERE MEM_MILEAGE >= 3000;
        -------------------------------
        
        예) 회원테이블에서 마일리지가 3000이상인 회원을 조회하시오
        ---------------------------------------------
        (회원번호,회원명, 직업,마일리지)
        입력         AND      OR      EX-OR
        ---------------------------------------------
            A       B       S1       |   S2 |     S3
        ----------------------------------------------
            0       0        0         |   0    |    0
            0       1        0         |   1    |    1
            1       0        0         |   1    |    1
            1       1        1         |   1    |    0
        ----------------------------------------------
        
        
        예) 회원테이블에서 마일리지가 3000이상이고 주부 회원을 조회하시오
        ---------------------------------------------
        (회원번호,회원명, 직업,마일리지)
        ---------------------------------------------
        select MEM_ID AS 회원번호,
                    MEM_NAME AS 회원명, 
                    MEM_JOB AS직업,
                    MEM_MILEAGE AS 마일리지
            FROM MEMBER
           WHERE MEM_MILEAGE >= 3000 
                AND MEM_JOB = '주부'
        -------------------
        예) 회원테이블에서 마일리지가 3000이상이고 자영업이고 또는  성별이 여성인 을 조회하시오
        
        (회원번호,회원명, 직업,마일리지)
        ---------------------------------------------
        select MEM_ID AS 회원번호,
                    MEM_NAME AS 회원명, 
                    MEM_JOB AS직업,
                    MEM_MILEAGE AS 마일리지
            FROM MEMBER
           WHERE MEM_MILEAGE >= 3000 AND MEM_JOB = '자영업' OR SUBSTR(MEM_REGNO2,1,1)='2';
        -------------------
        
        select  MEM_NAME, MEM_MILEAGE, MEM_JOB,  SUBSTR(MEM_REGNO2,1,1) FROM MEMBER;
        
        
        예) 사원테이블(EMPLOYEE)에서 상사번호(MANNAGER_ID)가 NULL인 사원의  사원번호(EMPLOYEE_ID) 사원명(EMP_NAME), 직책코드(JOB_ID)를 조회
        
        select   EMPLOYEE_ID AS 사원번호,
                    EMP_NAME AS 사원명,
                    JOB_ID AS 직책코드
            FROM EMPLOYEES
           WHERE MANAGER_ID IS NULL; --NULL여부를 판단할때 (IS NULL/IS NOT NULL) 
        -------------------
        select  MEM_NAME, MEM_MILEAGE, MEM_JOB,  SUBSTR(MEM_REGNO2,1,1) FROM MEMBER;
        
        
                ------                          -----
            -------------           ----                ----
          -----        ------    ----                -------
        -----                  ----                   ---------
        -----------                                   ---------
        ----------------                           ----------
                ----------------                --------    
                     -------------         ---------
                           -------      ------
                                 -------
                                    --
        
        예) 매입테이블(BUYPROD) 에서 매입일이 2005년 5월6월자료를 조회하시요
        ()일자 상품번호 수량)
        select   BUY_DATE AS 일자,
                    BUY_PROD AS 상품번호,
                    BUY_QTY AS 수량
            FROM BUYPROD
           WHERE BUY_DATE >= '20050501' AND BUY_DATE <= '20050630' ; 
        ------------------- '20050501'~'20050630'; 
        
        
        예) 매입테이블(BUYPROD) 에서 매입일이 2005년 5월6월자료를 조회하시요
        상품분류테이블에서 분류코드가 'P4XX' (P4XX) (P400)대 조회하깅!
        
        
        select   LPROD_ID AS 순번,
                    LPROD_GU AS 분류코드,
                    LPROD_NM AS 분류명
            FROM LPROD
           WHERE LPROD_GU >= 'P400' AND LPROD_GU <= 'P499' ; 
           
           
           select   LPROD_ID AS 순번,
                    LPROD_GU AS 분류코드,
                    LPROD_NM AS 분류명
            FROM LPROD
           WHERE LPROD_GU LIKE '4P%';
           
        
        
        ---------------------------------------------------------------------------------------------------
        
        2018 10-18)기타연산자  ( IN,ANY,SOME,ALL,EXISTS,BETWEEN, LIKE...)
        1) IN 
        -주어진 값을 ()안에 ','분리하여 기술하고 IN 앞의 컬럼에 저장된 갑이 ()안의  값중 어느 하나와 일피하면 전체가 참(TRUE)이 되는 연산자
        (사용형식)
        컬럼명 IN  (값1, 값2,.....)
        .OR연산자나 '=ANY','=SOME'연산자로 변환가능 --=ANY','=SOME = IN 
        
        
        예) 부서코드가 30,50,70 인 사원정보를 조회하시오 
        사원번호 사원명 부서번호 급여 부서번호 순으로 출력할것
        --ASC 오름차순
        예시1)
        --SELECT EMPLOYEE_ID AS 사원번호,
        --                EMP_NAME AS 사원명,
        --                DEPARTMENT_ID AS 부서번호,
        --                SALARY AS 급여
        --    FROM EMPLOYEES
        --   WHERE DEPARTMENT_ID IN (30,50,70)
        --   ORDER BY DEPARTMENT_ID ASC,SALARY DESC;
           
        예시2)
        --   SELECT EMPLOYEE_ID AS 사원번호,
        --                EMP_NAME AS 사원명,
        --                DEPARTMENT_ID AS 부서번호,
        --                SALARY AS 급여
        --    FROM EMPLOYEES
        --   WHERE DEPARTMENT_ID = 30
        --                OR DEPARTMENT_ID = 50
        --                OR DEPARTMENT_ID = 70)
        --   ORDER BY DEPARTMENT_ID ASC,SALARY DESC;
        
        
        예시3) '=ANY','=SOME'연산자사용 받드시 앞에관계연산자가 붙는다.
           SELECT EMPLOYEE_ID AS 사원번호,
                        EMP_NAME AS 사원명,
                        DEPARTMENT_ID AS 부서번호,
                        SALARY AS 급여
            FROM EMPLOYEES
        --   WHERE DEPARTMENT_ID = SOME(30,50,70)
            WHERE DEPARTMENT_ID = ANY(30,50,70)
           ORDER BY DEPARTMENT_ID ASC,SALARY DESC;
           
           
           
           1)ANY,SOME
        -IN 연산자와 같은 기능을 수행한다. 
        사용형식
        컬럼명 관계연산자 ANY | SOME(값1,값2....)
        .관계연산자가ANY | SOME연산자 좌측에 위치해야함
        
        예) ㅡ회원테이블에서 직업이 '공무원'인 회원과 같은 마일리지(900,1700,2200,3200)를 갖고있는 회원을 조회하시오 
        (회원번호, 회원명, 직업)
        SELECT  MEM_ID AS 회원번호,
                    MEM_NAME AS 회원명, 
                    MEM_JOB AS 직업,
                    MEM_MILEAGE AS 마일리지
                     FROM MEMBER 
                        WHERE MEM_MILEAGE  =ANY(SELECT MEM_MILEAGE 
                                                                  FROM MEMBER 
                                                                  WHERE MEM_JOB='공무원');
            
        --SELECT MEM_MILEAGE FROM MEMBER WHERE MEM_JOB='공무원'  <- 서브쿼리라고 한다 쿼리문안에 쿼리가 들어감
         예 )
        SELECT
            mem_id AS 회원번호,
            mem_name AS 회원명,
            mem_job AS 직업,
            mem_mileage AS 마일리지
        FROM member
        WHERE mem_mileage > ALL (
                SELECT  mem_mileage
                FROM
                    member
                WHERE
                    mem_job = '공무원'
            )
            AND   mem_job <> '공무원';
            
            3)LIKE연산자 
            패턴비교에 사용되는 연산자 
           ' %'와'_' 와일드카드를 사용하여 비교 문자열 패턴 생성
           1)'%':'%'이 사용된 위치에서 그 이후에 기술된 모든 문자열과 대응
            EX) '대전%':'대전'으로 시작하는 모든 문자열과 대응 
            '%길동':끝이 '길동'으로 끝나는 모든 문자열과 대응되어짐
            '%길%':문자열 내분에 '길' 문자만 있으면 대응
            '%'는 NULL문자열도 대응(길이를 갖지않는 NULL문자열까지도 대응)
            2)'_' :'_'이 사용된 위치에서 한 글자와 대응
            EX)'_길동' :어떤성씨이든 길동이라면 가능!
            사용형식
            컬럼명 LIKE '패턴문자열'
            
            
            예)회원테이블에서 거주지가 '대전'이 아닌 회원을 조회하시오 
            SELECT MEM_ID AS 회원번호, 
                            MEM_NAME AS 회원명,
                            MEM_ADD1||' '|| MEM_ADD2 AS 주소 
                        FROM MEMBER
                        WHERE MEM_ADD1 NOT LIKE '서울%';
                        
                 
            예)회원테이블에서 주민번호를 이용해서 회원들의 나이를 구하여 출력하시요 회원번호 회원명 주민번호 나이이며 주민번호는 XXXXX-XXXXX 형식으로  츨력  회원을 조회하시오          
              출생년도 추출  : STR(MEM_REGNO1, 1,2 )
            
            
--                SELECT MEM_ID AS 회원번호, 
--                            MEM_NAME AS 회원명,
--                              MEM_REGNO1||' '|| MEM_REGNO2 주민번호 
--                        FROM MEMBER   
--       2019 - SUBSTR(MEM_REGNO1,1,2)+1900) AS 나이 FROM MEMBER;
   -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------                   
--             SELECT MEM_ID AS 회원번호, 
--                            MEM_NAME AS 회원명,
--                            MEM_REGNO1||'-'|| MEM_REGNO2 AS 주민번호 
--                         2019 - (CASE WHEN (SUBSTR(MEM_REGNO2,1,1)='1' OR SUBSTR(MEM_REGNO2,1,1)='2')
--                                                THEN ( substr(mem_regno1,1,2) + 1900 
--                                                else substr(mem_regno1,1,2) + 2000 END) AS 나이 
--                    FROM MEMBER;
--            
--            
--            
--            UPDATE MEMBER
--            SET MEM_REGNO1='010305'
--                    MEM_REGNO2='3460420'
--                   WHERE  MEM_ID
--            
            
            
            예)장바구니 테이블에서 2005년 5월 판매정보를 조회하세여 (판매일자,상품번호,수량이고 날짜순으로 출력)
    
            판매일짜 :(SUBSTR(CART_NO,1,8)  -- 카트 NO 8번째 글자
            
            
            SELECT CART AS 판매일자
                            CART_NO AS 상품번호
                            CART_QTY AS 수량
                            FROM BUYPROD
           WHERE CART >= '20050501' AND BUY_DATE <= '20050530' ; 
        
            
            
COMMIT;
            
       