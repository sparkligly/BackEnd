2019-10-16)select ���
- �����͸� �˻��ϴ� ���

(�������)
select  �÷��� [as["]��Ī["],]
        �÷��� [as["]��Ī,],.....
    from ���̺�� [��Ī]
    where[����
    [and|or ����]
    [group by �÷���[,�÷���....]]
    [having ����]
    [order by �÷���|�÷��ε���[asc|desc],...];
    
   - ��Ī:�÷��̳� ü�̺� �ο��� �� �ٸ� �̸� �÷��� ����� ��Ī�� ����� �������� ��µ�
   -�÷���Ī ������:��Ī�� ����� ���� Ư�����ڰ� ���ԵǴ°����� �ݵ�� "" �� ���������
   
    (1)�÷��� as ��Ī
    (2)�÷��� as "��Ī"
    (3)�÷���  "��Ī"
    (4)�÷���  ��Ī
    - �÷����� '*'�� ����ϸ� �ش� ���̺��� ��� �÷��� ��ȸ 
    
   select buyer_id as "�ŷ�ó�ڵ�",
          buyer_name as �ŷ�ó��,
          buyer_lgu "�з� �ڵ�",
          buyer_add1 as �ּ�
     from buyer
    where buyer_add1 like '����%';
    
--select substr(buyer_id,2,5) --select���� ����� ����Ǿ�����. 
--    form buyer

    
    --�ڹٴ� 0���� ī���� ����Ŭ�� 1���� ī���� 
    
    ��)  ȸ�����̺��� ȸ����ȣ ȸ���� ���ϸ����� ��ȸ�ϵ� ���ϸ����� ū������� ����Ͻÿ�
select mem_id as ȸ����ȣ,
       mem_name as ȸ����,
       mem_mileage as ���ϸ���
    from member
  order by 3 desc;
  
  
    --mem_mileage desc;
    
   -- ����Ŭ�ּ�
    �����ּ�: --
    ��������: /*~*/
    
    
    
    2019-10-16)����Ŭ �ڷ���
    
    -����Ŭ �ڷ����� ���ڿ�,����,��¥,��Ÿ �ڷ������� ����
    
    1.�����ڷ���
    - ����Ŭ���� ���Ǵ� ��� ���ڿ��� ''�ϳ�¥�� ����ǥ�� �������մϴ�.
    -���ڿ��� ���� �ڷ����� ����ɋx ���ڿ��� ���������� �ڵ� ��ȯ��

    '123'+23= 
    select '123'+23 from dual;   -- ���� 123��  ����23�� ������ ���ڰ� �⺻���� ����Ŭ������ 146�� ���´�. (�ڹٿ� �ݴ�)
    
    1)char
    -�������� ���ڿ��� �����ϴ� ������ ���� 
    -���ʺ�������ǰ� ���� �������� ������ ä����
    
    (�������)
    
    �÷��� char(����[char|byte])
    .�⺻�� byte�� (�����Ǹ�)
    .char(10) - 10 byte ��� ���� Ȯ�� 
    .char(10 char) -10 ���ڸ� ������ �� �ִ� ��� ���� Ȯ�� 
    .�ִ� 2000byte���� ���� ���� 
    .�⺻Ű�� �������� �ڷ� ó���� ���
    
    ��)
    
    create table temp01(
    COL1 char(10),
    COL2 char(10 char),
    COL3 char(10 byte));
    
    
    insert into temp01(COL1,COL2,COL3) 
    values('koreaseoul','���ѹα�����Ư����','������')
    
    insert into temp01(COL1,COL2,COL3) 
    values('korea','���ѹα� �����','�߱�')
    
    
select * from temp01;

select lengthb(COL1),lengthb(COL2),lengthb(COL3)from temp01;

2)varchar2
- �������� ���ڿ��� ����
(�������)
�÷��� varchar2(����[char|byte])
.4000byte��밡��
.char �ɼ��� ����ϴ��� ��ü������ 4000byte�� �ʰ��Ҽ�����


��)    create table temp02(
    COL1 varchar2(30),
    COL2 varchar2(30 char),
    COL3 varchar2(30 byte));
    
    
    insert into temp02(COL1,COL2,COL3) 
    values('koreaseoul','���ѹα�����Ư����','������')
    
    insert into temp02(COL1,COL2,COL3) 
    values('korea','���ѹα� �����','�߱�')
    
select * from temp02;

select lengthb(COL1),lengthb(COL2),lengthb(COL3)from temp02;

  -- �ѱ��� 3byte  �����1byte
--�����
--1.���̺� ĭ�� �켱 ����  
--2.��� ���� 
--3.����Ʈ��Ȯ��
--4.���� ����Ʈ �� Ȯ�� 
--5.(�������̺�ĭ-����ĭ����)
--6.3�� ������Ʈ�������� 5 ���ϱ�

**char�� �������� ������ ������ ���ԵǹǷ� 'A','A','A'�� ��� ���������� ���
--varchar2�� ���°����� ����ó������ �����Ƿ� ���� �ٸ������� ���


��)    create table temp03(
    COL1 char(15),
    COL2 varchar2(15));

    insert into temp03
    values('ȫ�浿      ','ȫ�浿      ');
    
select * from temp03 where trim(COL2)='ȫ�浿';



3)LONG
-�������� ���ڿ��� ����
-2GB������ �ڷ� ����
-�ϳ��� ���̺� �ϳ��� Į���� longŸ������ ��������
-select���� select��update���� set�� insert���� values�������� ��밡��
-��ɰ��� ���󽺴� ����
(�������)
�÷���LONG
    
    
    
��)    create table temp04(
    COL1 LONG,
    COL3 varchar2(4000));

    insert into temp04
    values('koreaseoul','���ѹα�����Ư����','������')
    
select * from temp04;

4)CLOB,NCLOB

-�������� ���ڿ��� ����
-�ִ� 4gbũ����� ���尡��
-longŸ���� ������ �ڷ���
-�� ���̺� �������� clobŸ���÷� ���� ���
-�Ϻα���� DBMS_lob�� ���� Ư�� API�� ����ؾ���
-NCLOB�� �ٱ��� ��� ���������� �������� ���� (UTF_8,UTF_16)

(�������)
�÷��� clob


��)    create table temp05(
    COL1 clob,
    COL2 clob,
    COL3 varchar2(30));

    insert into temp05(COL1,COL2,COL3) 
    values('���ѹα��� ���� ��ȭ���δ�','�����ͺ��̽� SQL�� PL/SQL','ilpostino')

   select * from temp05; 
   
   select substr(COL1,5,10),DBMS_lob.getlength(COL2)from temp05; 
   
   
    