2019 - 10 - 18)where��
        --selectsys date from
        --select sysdate from dual;
        --select 305*12345 from dual;
        
        -������ �ο��Ͽ� ���ǿ� �´� ����� ����� select ������ ó��
        ������� 
        where �÷��� ���迬���� ��|�÷��� [and|or �÷��� ���迬���� ��|�÷���]
        
        1)���迬����
        
        - ���� ũ�⸦ ���ϴ� ������
        - >,<,= ,<=,>=,<>(!=)
        
        7/5
        
        ��) ȸ�����̺��� ���ϸ����� 3000�̻��� ȸ���� ��ȸ�Ͻÿ�
        ---------------------------------------------
        (ȸ����ȣ,ȸ����, ����,���ϸ���)
        ---------------------------------------------
        select MEM_ID AS ȸ����ȣ,
                    MEM_NAME AS ȸ����, 
                    MEM_JOB AS����,
                    MEM_MILEAGE AS ���ϸ���
            FROM MEMBER
        WHERE MEM_MILEAGE >= 3000;
        -------------------------------
        
        ��) ȸ�����̺��� ���ϸ����� 3000�̻��� ȸ���� ��ȸ�Ͻÿ�
        ---------------------------------------------
        (ȸ����ȣ,ȸ����, ����,���ϸ���)
        �Է�         AND      OR      EX-OR
        ---------------------------------------------
            A       B       S1       |   S2 |     S3
        ----------------------------------------------
            0       0        0         |   0    |    0
            0       1        0         |   1    |    1
            1       0        0         |   1    |    1
            1       1        1         |   1    |    0
        ----------------------------------------------
        
        
        ��) ȸ�����̺��� ���ϸ����� 3000�̻��̰� �ֺ� ȸ���� ��ȸ�Ͻÿ�
        ---------------------------------------------
        (ȸ����ȣ,ȸ����, ����,���ϸ���)
        ---------------------------------------------
        select MEM_ID AS ȸ����ȣ,
                    MEM_NAME AS ȸ����, 
                    MEM_JOB AS����,
                    MEM_MILEAGE AS ���ϸ���
            FROM MEMBER
           WHERE MEM_MILEAGE >= 3000 
                AND MEM_JOB = '�ֺ�'
        -------------------
        ��) ȸ�����̺��� ���ϸ����� 3000�̻��̰� �ڿ����̰� �Ǵ�  ������ ������ �� ��ȸ�Ͻÿ�
        
        (ȸ����ȣ,ȸ����, ����,���ϸ���)
        ---------------------------------------------
        select MEM_ID AS ȸ����ȣ,
                    MEM_NAME AS ȸ����, 
                    MEM_JOB AS����,
                    MEM_MILEAGE AS ���ϸ���
            FROM MEMBER
           WHERE MEM_MILEAGE >= 3000 AND MEM_JOB = '�ڿ���' OR SUBSTR(MEM_REGNO2,1,1)='2';
        -------------------
        
        select  MEM_NAME, MEM_MILEAGE, MEM_JOB,  SUBSTR(MEM_REGNO2,1,1) FROM MEMBER;
        
        
        ��) ������̺�(EMPLOYEE)���� ����ȣ(MANNAGER_ID)�� NULL�� �����  �����ȣ(EMPLOYEE_ID) �����(EMP_NAME), ��å�ڵ�(JOB_ID)�� ��ȸ
        
        select   EMPLOYEE_ID AS �����ȣ,
                    EMP_NAME AS �����,
                    JOB_ID AS ��å�ڵ�
            FROM EMPLOYEES
           WHERE MANAGER_ID IS NULL; --NULL���θ� �Ǵ��Ҷ� (IS NULL/IS NOT NULL) 
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
        
        ��) �������̺�(BUYPROD) ���� �������� 2005�� 5��6���ڷḦ ��ȸ�Ͻÿ�
        ()���� ��ǰ��ȣ ����)
        select   BUY_DATE AS ����,
                    BUY_PROD AS ��ǰ��ȣ,
                    BUY_QTY AS ����
            FROM BUYPROD
           WHERE BUY_DATE >= '20050501' AND BUY_DATE <= '20050630' ; 
        ------------------- '20050501'~'20050630'; 
        
        
        ��) �������̺�(BUYPROD) ���� �������� 2005�� 5��6���ڷḦ ��ȸ�Ͻÿ�
        ��ǰ�з����̺��� �з��ڵ尡 'P4XX' (P4XX) (P400)�� ��ȸ�ϱ�!
        
        
        select   LPROD_ID AS ����,
                    LPROD_GU AS �з��ڵ�,
                    LPROD_NM AS �з���
            FROM LPROD
           WHERE LPROD_GU >= 'P400' AND LPROD_GU <= 'P499' ; 
           
           
           select   LPROD_ID AS ����,
                    LPROD_GU AS �з��ڵ�,
                    LPROD_NM AS �з���
            FROM LPROD
           WHERE LPROD_GU LIKE '4P%';
           
        
        
        ---------------------------------------------------------------------------------------------------
        
        2018 10-18)��Ÿ������  ( IN,ANY,SOME,ALL,EXISTS,BETWEEN, LIKE...)
        1) IN 
        -�־��� ���� ()�ȿ� ','�и��Ͽ� ����ϰ� IN ���� �÷��� ����� ���� ()����  ���� ��� �ϳ��� �����ϸ� ��ü�� ��(TRUE)�� �Ǵ� ������
        (�������)
        �÷��� IN  (��1, ��2,.....)
        .OR�����ڳ� '=ANY','=SOME'�����ڷ� ��ȯ���� --=ANY','=SOME = IN 
        
        
        ��) �μ��ڵ尡 30,50,70 �� ��������� ��ȸ�Ͻÿ� 
        �����ȣ ����� �μ���ȣ �޿� �μ���ȣ ������ ����Ұ�
        --ASC ��������
        ����1)
        --SELECT EMPLOYEE_ID AS �����ȣ,
        --                EMP_NAME AS �����,
        --                DEPARTMENT_ID AS �μ���ȣ,
        --                SALARY AS �޿�
        --    FROM EMPLOYEES
        --   WHERE DEPARTMENT_ID IN (30,50,70)
        --   ORDER BY DEPARTMENT_ID ASC,SALARY DESC;
           
        ����2)
        --   SELECT EMPLOYEE_ID AS �����ȣ,
        --                EMP_NAME AS �����,
        --                DEPARTMENT_ID AS �μ���ȣ,
        --                SALARY AS �޿�
        --    FROM EMPLOYEES
        --   WHERE DEPARTMENT_ID = 30
        --                OR DEPARTMENT_ID = 50
        --                OR DEPARTMENT_ID = 70)
        --   ORDER BY DEPARTMENT_ID ASC,SALARY DESC;
        
        
        ����3) '=ANY','=SOME'�����ڻ�� �޵�� �տ����迬���ڰ� �ٴ´�.
           SELECT EMPLOYEE_ID AS �����ȣ,
                        EMP_NAME AS �����,
                        DEPARTMENT_ID AS �μ���ȣ,
                        SALARY AS �޿�
            FROM EMPLOYEES
        --   WHERE DEPARTMENT_ID = SOME(30,50,70)
            WHERE DEPARTMENT_ID = ANY(30,50,70)
           ORDER BY DEPARTMENT_ID ASC,SALARY DESC;
           
           
           
           1)ANY,SOME
        -IN �����ڿ� ���� ����� �����Ѵ�. 
        �������
        �÷��� ���迬���� ANY | SOME(��1,��2....)
        .���迬���ڰ�ANY | SOME������ ������ ��ġ�ؾ���
        
        ��) ��ȸ�����̺��� ������ '������'�� ȸ���� ���� ���ϸ���(900,1700,2200,3200)�� �����ִ� ȸ���� ��ȸ�Ͻÿ� 
        (ȸ����ȣ, ȸ����, ����)
        SELECT  MEM_ID AS ȸ����ȣ,
                    MEM_NAME AS ȸ����, 
                    MEM_JOB AS ����,
                    MEM_MILEAGE AS ���ϸ���
                     FROM MEMBER 
                        WHERE MEM_MILEAGE  =ANY(SELECT MEM_MILEAGE 
                                                                  FROM MEMBER 
                                                                  WHERE MEM_JOB='������');
            
        --SELECT MEM_MILEAGE FROM MEMBER WHERE MEM_JOB='������'  <- ����������� �Ѵ� �������ȿ� ������ ��
         �� )
        SELECT
            mem_id AS ȸ����ȣ,
            mem_name AS ȸ����,
            mem_job AS ����,
            mem_mileage AS ���ϸ���
        FROM member
        WHERE mem_mileage > ALL (
                SELECT  mem_mileage
                FROM
                    member
                WHERE
                    mem_job = '������'
            )
            AND   mem_job <> '������';
            
            3)LIKE������ 
            ���Ϻ񱳿� ���Ǵ� ������ 
           ' %'��'_' ���ϵ�ī�带 ����Ͽ� �� ���ڿ� ���� ����
           1)'%':'%'�� ���� ��ġ���� �� ���Ŀ� ����� ��� ���ڿ��� ����
            EX) '����%':'����'���� �����ϴ� ��� ���ڿ��� ���� 
            '%�浿':���� '�浿'���� ������ ��� ���ڿ��� �����Ǿ���
            '%��%':���ڿ� ���п� '��' ���ڸ� ������ ����
            '%'�� NULL���ڿ��� ����(���̸� �����ʴ� NULL���ڿ������� ����)
            2)'_' :'_'�� ���� ��ġ���� �� ���ڿ� ����
            EX)'_�浿' :������̵� �浿�̶�� ����!
            �������
            �÷��� LIKE '���Ϲ��ڿ�'
            
            
            ��)ȸ�����̺��� �������� '����'�� �ƴ� ȸ���� ��ȸ�Ͻÿ� 
            SELECT MEM_ID AS ȸ����ȣ, 
                            MEM_NAME AS ȸ����,
                            MEM_ADD1||' '|| MEM_ADD2 AS �ּ� 
                        FROM MEMBER
                        WHERE MEM_ADD1 NOT LIKE '����%';
                        
                 
            ��)ȸ�����̺��� �ֹι�ȣ�� �̿��ؼ� ȸ������ ���̸� ���Ͽ� ����Ͻÿ� ȸ����ȣ ȸ���� �ֹι�ȣ �����̸� �ֹι�ȣ�� XXXXX-XXXXX ��������  ����  ȸ���� ��ȸ�Ͻÿ�          
              ����⵵ ����  : STR(MEM_REGNO1, 1,2 )
            
            
--                SELECT MEM_ID AS ȸ����ȣ, 
--                            MEM_NAME AS ȸ����,
--                              MEM_REGNO1||' '|| MEM_REGNO2 �ֹι�ȣ 
--                        FROM MEMBER   
--       2019 - SUBSTR(MEM_REGNO1,1,2)+1900) AS ���� FROM MEMBER;
   -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------                   
--             SELECT MEM_ID AS ȸ����ȣ, 
--                            MEM_NAME AS ȸ����,
--                            MEM_REGNO1||'-'|| MEM_REGNO2 AS �ֹι�ȣ 
--                         2019 - (CASE WHEN (SUBSTR(MEM_REGNO2,1,1)='1' OR SUBSTR(MEM_REGNO2,1,1)='2')
--                                                THEN ( substr(mem_regno1,1,2) + 1900 
--                                                else substr(mem_regno1,1,2) + 2000 END) AS ���� 
--                    FROM MEMBER;
--            
--            
--            
--            UPDATE MEMBER
--            SET MEM_REGNO1='010305'
--                    MEM_REGNO2='3460420'
--                   WHERE  MEM_ID
--            
            
            
            ��)��ٱ��� ���̺��� 2005�� 5�� �Ǹ������� ��ȸ�ϼ��� (�Ǹ�����,��ǰ��ȣ,�����̰� ��¥������ ���)
    
            �Ǹ���¥ :(SUBSTR(CART_NO,1,8)  -- īƮ NO 8��° ����
            
            
            SELECT CART AS �Ǹ�����
                            CART_NO AS ��ǰ��ȣ
                            CART_QTY AS ����
                            FROM BUYPROD
           WHERE CART >= '20050501' AND BUY_DATE <= '20050530' ; 
        
            
            
COMMIT;
            
       