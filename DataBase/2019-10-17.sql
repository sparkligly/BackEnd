2019-10-17)�����ڷ���
** number
-������ �Ǽ� �ڷḦ �����Ѵ�. 
-ǥ������ :1,0 x10^130 ~9.999 x 10^125
(�������)
 �÷��� number[ (���е�[,������] ) ]
 1) ���е� >�������ΰ�� 

 -���е�:��ü��ﰣ�� ũ�� 1~38 ������ ���� ��� 
 - ������ : �Ҽ��� ������ �ڸ��� ,-84~127               
 
 number(N1,N2)=> (N2 ���� ����) �Ҽ��� N2+1�ڸ����� �ݿø��Ͽ� N2�ڸ����� ����
                        (N2 ������ ��� ) �����κ� N2�ڸ����� �ݿø��Ͽ� ���� 
 
 ��)
 �Է°�            ����                ���尪
 ----------------------------------------------------------
 
7456123.89      number          7456123.89
7456123.89      number(*,1)     7456123.9
7456123.89      number()         7456123.8 --0�� ���Ͱ� ����������  �Ҽ��� ù°¥������ �ݿø��Ǿ� ���ֽÿ�]
7456123.89      number(9,2)     7456123.89
7456123.89      number(9,1)     7456123.9 
7456123.89      number(7-2)     7456100


2)���е� <�������� ���
-�� ���Ǵ� ���� �ƴ�
-(������-���е�)��ŭ�� '0'�� 0. ���Ͽ� �����ؾ���
-���е���'0'�� �ƴ� ��ȿ ���� ����

 �Է°�            ����                ���尪
 ----------------------------------------------------------
 1.234       number(4,5)        ����(�����κ��� ��ȿ����('1')
                                        0.0���� ���۵Ǵ� �ڷᰡ �ƴ�

0.01234     number(4,5)        ����(�����κ��� ��ȿ����('1')
                                        0.0���� ���۵Ǵ� �ڷᰡ �ƴ�

0.01234     number(3,5)        0.00123
--------------------------------------------------------------------



��)
CREATE TABLE TEMPO06(
    COL1 NUMBER,
    COL2 NUMBER(5),
    COL3 NUMBER(6,2),
    COL4 NUMBER(3,5));

INSERT INTO TEMPO06 VALUES(3.1415926,234.8999,123.0556,0.002555);
SELECT * FROM TEMPO06;

3.��¥��
-DATEŸ�԰� TIMESTAMPŸ���� ����
1)DATEŸ��
. �⺻ ��¥���� (����Ͻú���)����
.���� : - 4712/01/01~9999/12/31
(�Է�)
-��¥�ڷ�� sysdate�Լ��� to_date�Լ��� ��¥������ ��ȯ���ڷ�
�⺻��¥Ÿ����'YYYY/MM/DD HH24:MI:SS'����

(���)

-��¥�� �ڷ�� '+','-'�� ����� �ɼ� ������ �Ȱ��� ���ǵ� ������ŭ �������ų� ������ (���� ��¥ ��¥ �������� ��ȯ)



��)
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
    timezone ������ �����ϴ������� ����
    timestamp :�ð��뿡 ����� ����
10����� 1�ʴ����� �ð�����

��)CREATE TABLE TEMPO08(
    COL1 timestamp,
    COL2 timestamp,
    COL3 timestamp with time zone,
    COL4 timestamp with local time zone,

INSERT INTO TEMPO08 
                    VALUES(sysdate,sysdate,sysdate);
                    
SELECT * FROM TEMPO08;

4.��Ÿ �ڷ���
 raw, longraw, bfile Ÿ�Ե��� ����
1)bfile
���� �ڷḦ ������ 
���� �����͸� ���������̽� �ܺο� ����
(�������)
�÷��� bfile
���� �ڷḦ �����ͺ��̽� �ܺο� �����ϱ� ������ ���丮 (directory)��Ī�� �̿��Ͽ� ���丮�� ���� �����ؾ���
(1)���丮����
���丮 ��Ī:30byte, ���ϸ�:256byte,  ������:4GB
��)
CREATE directory TEST_DTR AS 'D:\D_Other\Oracle';
 
 CREATE  TABLE TEMP10(
 COL1 BFILE);
 
 INSERT INTO TEMP10(COL1)
                    VALUES(bfileNAME('TEST_DIR','640678248_1_550'));
                                 
SELECT * FROM TEMP10;       


2)BLOB
-�����ڷ�����
-�����ڷḦ ���̺��ο� �������·� ����
-4GB���� ��ȿ���尡��
�����ڷ��� ��ȯ�� ������ ��ѷ� ó���ؾ���
(�������)

�÷���
 CREATE  TABLE TEMP11(
 COL1 BLOB);
 
 DECLARE
 
V_DIR VARCGAR2()10 :='TEST_DTR';
v_file VARCGAR2(20) :='640678248_1_550';--�̹����̸�
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




