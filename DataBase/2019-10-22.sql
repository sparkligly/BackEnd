2019-10-22)���ڿ� �Լ� 

3) LPAD (cl, n[,expr]),RPAD(cl, n[,expr])
    -  n ���� ���ǵ� ������ cl�� ����� �ڷḦ �����ϰ� ���� ����
    ����(LPAD), ������(RPAD)�� 'expr'�� ���ǵ� ���ڿ��� ����        -- �ڸ����� ���� ���� *�ƽ�Ʈ���� �� Ư���� ���ڷ� ä���ִ� ���� 
    
--    *** ������ �߿� ��뵵 ǥ�� 
  --  **
    --*
    
��)
    SELECT LPAD ('������ �߱�',20,'*'),
              RPAD ('������ �߱�',20,'*') FROM DUAL; 
              
              
��)
    SELECT LPAD ('ABCD',6,'*') FROM DUAL; 
    SELECT LPAD ('ABCD',6,'*') FROM DUAL; 
    
    
��) ������̺��� ����̸��� �̸��� Į���� ���������Ͻÿ�

    SELECT LPAD ('EMP_NAME',30) 
    SELECT LPAD ('EMAIL',20) FROM EMPLOYEES;
    
    
    SELECT EMP_NAME,SALARY FROM EMPLOYEES;
    SELECT LPAD(EMP_NAME,30), RPAD(SALARY,7,'*') FROM EMPLOYEES;  -- ���ʿ�  �ƽ�Ʈ���� * ���� ���Խ� �ٽô� �����Ҽ�����. 
    
    SELECT LTPTM(c1[,c2]), RTPTM(c1[,c2]), TRIM(c1)(*)
        - ���ڿ� ������ (RTPTM), �Ǵ� ����(LTPTM)�� �Ǵ� ���ʸ�� �����ϴ� ��ȿ�� ������  ������
         -C1 ���� C2�� ���� �Ǹ� ���ǵǸ� C2���ڸ� ã�� �����ϰ�  C2�� �����Ǹ� ������ ����  


--1�� ��ȿ�� ���� 2�� ���ڻ�����  ��ȿ�ǰ���
--'   (1) ȫ  (2) ��  (2)  �� (1)   '


SELECT RTRTM('  ȫ   ��  ��    '), --������ ���� �ڸ���
              LTRTM('  ȫ   ��  ��    '), --���� ���� �ڸ���
              TRTM('  ȫ   ��  ��    ') FROM DUAL;   --���� ���� �ڸ���
                


SELECT RTRIM('ILPOSTINO','INO'),
              LTRIM('ILPOSTINO','L')FROM DUAL;

5)SUBSTR(C,N[,M])       (***���󵵼� ����)
    -   �־��� ���ڿ� C���� N��°���� M����ŭ ���ڿ��� �����Ͽ� ��ȯ
    -   M�� �����Ǹ� N�� ���� ��� ���ڿ� ��ȯ
    -   N�� 1���� ���۵Ǵ� �ε����� 
-- ����Ŭ�� 1������ ī���� 

SELECT SUBSTR('ABCDEFG',2,3) FROM DUAL; -- ��ü �����Ϳ��� �����ڸ� ����� 

SELECT SUBSTR('ABCDEFGHI',2,10) AS C1,
              SUBSTR('ABCDEFGHI',2) AS C2 FROM DUAL; -- ������ ���� �Ⱦ��� ������ �� �� �ȴ�. 

SELECT SUBSTR('ABCDEFGHI',2,10) AS C1,
              SUBSTR('ABCDEFGHI',2) AS C2,
              SUBSTR('ABCDEFGHI',-6,4) AS C3 FROM DUAL;  -- �ڿ��� ������° �ڸ����� �ױ��ڸ� �����
              
��) �ű� �з���ȣ�� �ڵ����� ����
--GU�� �ι�°����
INSERT INTO LPROD(LPEOD_ID,LPROD_GU,LPROD_NM)
SELECT MAX (LPROD_ID)+1),'P'|| (MAX (SUBSTR(LPROD_GU,2,3))+1)
              FROM LPROD
              WHERE LPROD_GU LIKE 'P3%';



SELECT 'P'|| (MAX (SUBSTR(LPROD_GU,2,3))+1) --�ι�°���� ����¥�� ����� 
              FROM LPROD
              WHERE LPROD_GU LIKE 'P3%';---P3���� �����ϴ� ��� �ڷ�


--��1)��ٱ��ϴ� ����� ����° ����� �ο��� ��ٱ��� ��ȣ�� ������ 

--SELECT MAX (CART_NO)+1 
--              FROM CART
--              WHERE CART_NO LIKE '20050405%';

--��2)��ٱ��ϴ� ����� ����° ����� �ο��� ��ٱ��� ��ȣ�� ������ 
--SELECT MAX (CART_NO)+1 
--              FROM CART
--              WHERE CART_NO LIKE TO_CHAR(SYSDATE,'YYYYMMDD')||'%';
              
 --��3)��ٱ��ϴ� ����� ����° ����� �ο��� ��ٱ��� ��ȣ�� ������ 
SELECT  TO_CHAR(TO_CHAR(SYSDATE,'YYYYMMDD')||MAX(SUBSTR(CART_NO,-5,5))+1)
           FROM CART
              WHERE CART_NO LIKE TO_CHAR(SYSDATE,'YYYYMMDD')||'%';             
             
��)ȸ�����̺��� ȸ���� ������ 1������ 3�� ������ ȸ�������� ��ȸ 
(ȸ����ȣ, ȸ����,����) ��,���� �Ǵ��� �ֹε�Ϲ�ȣ (MEM_REGNO1)�� �̿��Ͻÿ� 
MEM_ID 
MEM_NAME              
MEM_REGNO1

SELECT MEM_ID AS ȸ����ȣ,
            MEM_NAME AS ȸ����,
            MEM_BIR AS ����
    FROM MEMBER
WHERE SUBSTR(MEM_REGNO1,3,2) BETWEEN '01' AND '03';--����°���� �α���

5)REPLACE(c1,c2[,c3])  (�߿䵵**)
    -   �־��� ���ڿ� C1���� C2�� ã�Ƽ� C3 ��  ��ġ�� 
    -   C3�� �����Ǹ� ã�� C2���ڿ��� ����

��)
SELECT REPLACE('����ȭ ���� �Ǿ���', '��ȭ','ȭ��') FROM DUAL;
--����� ���ĸ��߱� ���� ��_(������ ���̺�)����ȭ�� ���̺� ������_���������� ���̺���� ���ش�_�����ƴ�
SELECT REPLACE('����ȭ ���� �Ǿ���', '��ȭ') FROM DUAL;
--�����ؼ� �ִ°��� �ٲٰų� ����
    SELECT REPLACE('ILPOSTINO, ROE WHOM THE BELL','0') FROM DUAL;
 
 ��)������̺��� ����� ���Ե� ������ �����Ͻÿ�
    
     SELECT EMOLOYEE_ID,
                REPLACE(ENO_NAME,' ')
    FROM EMOLOYEES;
 
 
 
  ��)ȸ�����̺��� ȸ�������� '��'�� ȸ���� ������ '��'�� �����Ͻÿ�

    SELECT MEM_NAME,
            REPLACE(SUBSTR(MEM_NAME,1,1),'��','��')||SUBSTR(MEM_NAME,2) 
    FROM MEMBER;

��)ȸ�����̺��� �ּ��� '������'�� ã�� '����������'�� �ٲٽÿ�
 
-- 
-- 
--SELECT  MEM_ADD1 AS �ּ�,
--               FROM MEMBER
--               WHERE SUBSTR(MEM_ADD1,1,3) REPLACE'����������';
--


    --  SELECT MEM_ID AS ȸ����ȣ,
    --  FROM MEMBER
    --  WHERE
    --  GROUB BY
    --  ORDER BY
    
    
    7)INSTR(c1, c2 [,m2[,n]])          (*�߿䵵)
    -   �־��� ���ڿ� C1���� C2���ڿ��� ó�� ���� ��ġ�� ��ȯ 
    -   M��������ġ N�� �ݺ�Ƚ�� 
    
    
    SELECT INSTR('ILPOSTINO, FOR WHOM THE BELL','O',1,3) FROM DUAL;
    
    8)LENGTH(c1), LENGTHB(c2) (**�߿䵵)
    -   �־��� ���ڿ� c1�� ���ڼ� LENGTH, ����Ʈ�� (LENGTHB)�� ��ȯ   
    
    
SELECT ENP_NAME, LENGTH (ENP_NAME), LENGTHB(ENP_NAME) FROM EMPLOYEES;

SELECT MEM_ADD1,LENGTH(MEM_ADD1), LENGTHB(MEM_ADD1) FROM MEMBER;  

--�ѱ��� 3����Ʈ..  ^^ �߰��� �� ������ 1����Ʈ
-- ��ȣȭ
