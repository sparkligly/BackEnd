2019-10-15)create table
-���̺�������
(������� )

CREATE TABLE ���̺��(
    �÷��� Ÿ��[(ũ��)][NOT NULL| [NULL]], --���ʿ��Ѱ�쿡�� �����Ҽ��ִٴ� �� 
        :
    �÷���n Ÿ��[(ũ��)][NOT NULL| [NULL]],-- n nulln�ΰ��߿� �ϳ�����밡��
    [CONSTRAINT �⺻Ű�����̸� PRIMARY KEY(�÷���1[,�÷���2...]),
    --�⺻Ű�����̸��� �����̸��� ����Ҽ�����.  PK_���̺��
    --�ѱ��� 3byte �����ڴ� 1byte
    --�����ͺ��̽��ȿ��� ������ ���̾���Ѵ� �⺻Ű�����̸��� ���� ����÷��� ���Ű�����˼��ֵ��� �����Ѱ�
    CONSTRAINT �ܷ�Ű�����̸� FOREIGN KEY(�÷���1[,�÷���2...]),
        REFERENCES ���̺��(�÷���1[,�÷���2...])];
        
    - '���̺��'�� ������ ��Ī�̾�� �� (�ߺ� �ȵ�)
    - '�÷���'�� ���� ���̺��� ������ ��Ī ���̺��� �ٸ��� �ߺ� �Ǿ ��
    - 'NOT NULL' ���� �׸��� �ڷ� ���ӽ� �ݵ�� ���� ����ؾ���
    �����ϸ� NULL�� ���(DEFAULT���� NULL)
    
    -'�⺻Ű�����̸�'�� ������ ��Ī�̾���Ѵ�. �����ۼ������ 'pk_���̺��'�������� �ۼ�
    -'�ܷ�Ű�����̸�'�� ������ ��Ī�̾���Ѵ�. �����ۼ������ 'fk_���̺��'�������� �ۼ�    
    -'�������̺��(�÷���1)': �ܷ�Ű�� ����� ���� ���̺��� �÷��� 
    
    ��)EMP �� DEPT
    
    --EMP���̺� �������
    CREATE TABLE EMP(
        EMP_NO CHAR(4) NOT NULL,
        EMP_NAME VARCHAR(20) NOT NULL,
        DEPT_ID NUMBER(4) NOT NULL,
        SALARY NUMBER(10) NOT NULL, 
        EMAIL VARCHAR2(50),
        
        CONSTRAINT pk_emp PRIMARY KEY(EMP_NO),
        CONSTRAINT fk_emp_dept FOREIGN KEY(DEPT_ID),
            REFERENCES DEPT(DEPT_ID));
    --DEPT���̺� �������
    CREATE TABLE DEPT(
        DEPT_ID NUMBER(4) NOT NULL,
        DEPT_NAME VARCHAR2(50) NOT NULL,
        MIN_SAL NUMBER(10),
        MAX_SAL NUMBER(10),
        
        CONSTRAINT pk_DEPT PRIMARY KEY(DEPT_ID)); 
            
     2)INSERT��
        -�űԵ����͸� �����Ҷ� ���
        -�⺻Ű�� �ߺ����̰ų� NULL���̾�� �ȵ�
        -�÷��� ��������� NOTNULL�� �÷��� �ݵ�� �����͸� �����ؾ���
        (�������)
        
         INSERT INTO ���̺��(�÷���1[,�÷���2...)]
            VALUES(��1,��2,.....);
        -'[(�÷���1[,�÷���2...)]'�� ���� ����, �����ϸ� ���̺��� ��� �÷��� ���ǵ� ���� ��� VALUES ������ ���� �����ؾ���
        -'VALUES(��1,��2,.....);':���� �÷��� ������ ������ �´� ���������� 
        
��)DEPT ���̺��� �������� �����Ͻÿ�
----------------------------------------
DEPT_ID DEPT_NAME   MIN_SAL MAX_SAL
----------------------------------------
 100     �ѹ���   2000000     6000000
 200     ������
 300     ���ߺ�
 400     �����   25000000    8000000
----------------------------------------------

INSERT INTO DEPT(DEPT_NAME,MIN_SAL,MAX_SAL,DEPT_ID)
        VALUES('�ѹ���',20000000,60000000,100);

    INSERT INTO DEPT VALUES(200,'������',0,0);
    INSERT INTO DEPT(DEPT_ID,DEPT_NAME) VALUES(300,'���ߺ�');
    INSERT INTO DEPT VALUES(400,'�����',25000000,8000000);
    
    SELECT * FROM DEPT;--�׻� �����Ҷ��� �����ϴ� �����
--������ �ƴϴ��� �ݵ�� �����͸� �����ؼ� ������ �����־���� 0�̶� ������ ���� 
/*create or replace view v_lprod;

as

select * from lprod;

select * from v_lprod; 

*/

��) ������̺�(EMP)�� �����ڷḦ �����Ͻÿ�
-----------------------------------------------------
EMP_MO  EMP_NAME    DEPT_ID SALARY  EMAIL
-----------------------------------------------------
'P101'  ȫ�浿      100  3000000     gdhonf@naver.com
'P102'  ������       400  3500000     
'P103'  ������       300  2800000    wjdf@naver.com
-----------------------------------------------------




public class Exam_03 extends 
p
public class Exam_03 extends Exam_02 {
	public static void main(String[] args) {}
    
 System.out.println(c);
 }
 
 
 
 
INSERT INTO EMP(EMP_NO,EMP_NAME,DEPT_ID,SALARY,EMAIL)
        VALUES('P101','ȫ�浿',100,3000000,'gdhonf@naver.com');
INSERT INTO EMP
    VALUES('P102','������',400,3500000,'');        
        
    SELECT * FROM EMP;
    
INSERT INTO EMP(EMP_NO,EMP_NAME,DEPT_ID,SALARY,EMAIL)
        VALUES('P103','������',300,2800000,'wjdf@naver.com');
        
    3)DELETE��
    ���̺� ����� �ڷḦ ���� ������� 
    DELETE FROM ���̺�� --���̺��̸�
    [WHERE ����]; --�ʵ��̸�=�����Ͱ�
    
    
    -'����': '�÷��� ���迬���� ��'�� ���·� ���� 
    --���迬���� 6����--������ �´� �����ڸ� �����մϴ�.
    
    -WHERE ���� �����Ǹ� '���̺�'���� ��� �ڷᰡ ���� 
    
    SELECT *FROM PROD;
    DELETE PROD; --PROD�����Ǵ� ���̺��� �ֱ⶧���� ���������ʽ��ϴ�.
    
    SELECT * FROM CART;
    COMMIT; -- ���ݱ����Ѱ��� ����
    DELETE CART;
    ROLLBACK;  -- �߸��� �ǵ������ִ�
    
    
    ��)dept���̺��� dept_id�� 400���� �ڷḦ ���� 
    
   
   
    DELETE DEPT
     WHERE DEPT_ID=400;
        
    ALTER TABLE EMP
    DROP CONSTRAINT FK_EMP_DEPT;
    
    SELECT * FROM DEPT;
    
   






