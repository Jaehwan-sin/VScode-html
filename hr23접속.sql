-----------------------------------------------------------------------------230616---------------------------------------------------------------------------------------------
--DBMS (database management system)
--���� : oracle, mysql, mariadb, mssql
--RDB : (Relational Database) ������ �����ͺ��̽�
--���̺� ��� :  row(record, tuple), columm(attribute, field)
-- UPDATE ���̺�� SET �����÷��� = �������� WHERE �÷�����;
-- DELETE FROM ���̺�� WHERE ����;

create table addr(
name varchar2(20),
address varchar2(100),
tel varchar2(20),
memo varchar2(300));
-- ���̺� ����Ȯ��
desc addr;
-- ���̺� ����
drop table addr;
select * from addr;
drop table addr purge; --������ ���ÿ� ���������

--������ ����
insert into addr values('hong', 'seoul', '111-111', '������');
insert into addr values('hong2', 'seoul', '111-111', '������2');
commit; --�޸𸮿� ��ϵ� �����͸� ������ DB����ҿ� ����

select * from addr; --������ ��ȸ

delete from addr where memo='������3';-- ���̺� �� ����

-- memo�ʵ� ������ ����ΰ� �����ͻ���
insert into addr values('hong3', 'busan', '222-222', null);
update addr set memo = 'null' where memo=������3;
insert into addr(name,address,tel) values('hong4','busan','333-333');

--name�� memo �ʵ忡�� ������ �Է�
insert into addr(name,memo) values('hong5','������5');
insert into addr(memo,name) values('������5','hong5');-- �Է� ���� ���� ���������� ���������ʴ´�.
insert into addr values('hong6','incheon','111-111','null');

commit;

--sql(structured query language) ����ȭ�� ���� ���
--type
--char varchar2, number, date, timestamp

create table sample(
name char(10),-- ��������
addr varchar2(50),-- ��������
regdate date,
birth timestamp);

select * from sample;

insert into sample values('ȫ�浿','����',sysdate,sysdate);
insert into sample values('ȫ�浿2','����',sysdate,sysdate);
insert into sample values('ȫ�浿3','����','2000-01-08','1999-01-01');
insert into sample values('ȫ�浿5','����','2000-01-08','1999-01-01 15:30:05');
insert into sample values('ȫ�浿5','����','2000-01-08','1999-01-01 15:30:05.0000060');

commit;

create table emp(
empno number(4) not null,--���
ename varchar2(10),--����̸�
job varchar2(9),--��å
mgr number(4),--�����ȣ
hiredate date,--�Ի���
sal number(7,2),--�޿�
comm number(7,2),--Ŀ�̼�
deptno number(2));--�μ���ȣ

commit;
desc emp;
select * from emp;

drop table emp;

-- ���� ������
insert into emp (empno,ename,job,mgr,hiredate,sal,deptno) values ('7369','SMITH','CLERK','7902','1980-12-17','800','20');
insert into emp values ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600','300','30');
insert into emp values ('7521','WARD','SALESMAN','7698','1981-02-22','1250','500','30');
insert into emp (empno,ename,job,mgr,hiredate,sal,deptno) values ('7566','JONES','MANAGER','7839','1981-04-02','2975','20');
insert into emp values('7654','MARTIN','SALESMAN','7698','1981-09-28','1250','1400','30');
insert into emp (empno,ename,job,mgr,hiredate,sal,deptno) values ('7698','BLAKE','MANAGER','7839','1981-05-01','2850','30');
insert into emp (empno,ename,job,mgr,hiredate,sal,deptno) values ('7782','CLARK','MANAGER','7839','1981-06-09','2450','10');
insert into emp (empno,ename,job,mgr,hiredate,sal,deptno) values ('7788','SCOTT','ANALYST','7566','1982-12-09','3000','20');
insert into emp (empno,ename,job,hiredate,sal,deptno) values ('7839','KING','PRESIDENT','1981-11-17','5000','10');
insert into emp (empno,ename,job,mgr,hiredate,sal,deptno) values ('7844','TURNER','SALESMAN','7698','1981-09-08','1500','30');
insert into emp (empno,ename,job,mgr,hiredate,sal,deptno) values ('7876','ADAMS','CLERK','7788','1983-01-12','1100','20');
insert into emp (empno,ename,job,mgr,hiredate,sal,deptno) values ('7900','JAMES','CLERK','7698','1981-12-03','950','30');
insert into emp (empno,ename,job,mgr,hiredate,sal,deptno) values ('7902','FORD','ANALYST','7566','1981-12-03','3000','20');
insert into emp (empno,ename,job,mgr,hiredate,sal,deptno) values ('7934','MILLER','CLERK','7782','1982-01-23','1300','10');
insert into emp (empno,ename,job,mgr,hiredate,sal,deptno) values ('7901','����ȯ','ANALYST','7782','2023-10-30','1300','10');

--�����
INSERT INTO EMP VALUES(7369,'SMITH','CLERK',7902,TO_DATE('17-12-1980','dd-mm-yyyy'),800,NULL,20);
INSERT INTO EMP VALUES (7499, 'ALLEN',  'SALESMAN',7698,TO_DATE('20-02-1981', 'DD-MM-YYYY'), 1600,  300, 30);
INSERT INTO EMP VALUES(7521, 'WARD',   'SALESMAN',7698,TO_DATE('22-02-1981', 'DD-MM-YYYY'), 1250,  500, 30);
INSERT INTO EMP VALUES(7566, 'JONES',  'MANAGER',7839,TO_DATE('02-04-1981', 'DD-MM-YYYY'),  2975, NULL, 20);
INSERT INTO EMP VALUES(7654, 'MARTIN', 'SALESMAN',7698,TO_DATE('28-09-1981', 'DD-MM-YYYY'), 1250, 1400, 30);
INSERT INTO EMP VALUES(7698, 'BLAKE',  'MANAGER',7839,TO_DATE('01-05-1981', 'DD-MM-YYYY'),  2850, NULL, 30);
INSERT INTO EMP VALUES(7782, 'CLARK',  'MANAGER',7839,TO_DATE('09-06-1981', 'DD-MM-YYYY'),  2450, NULL, 10);
INSERT INTO EMP VALUES(7788, 'SCOTT',  'ANALYST',7566,TO_DATE('09-12-1982', 'DD-MM-YYYY'), 3000, NULL, 20);
INSERT INTO EMP VALUES(7839, 'KING',   'PRESIDENT', NULL,TO_DATE('17-11-1981', 'DD-MM-YYYY'), 5000, NULL, 10);
INSERT INTO EMP VALUES(7844, 'TURNER', 'SALESMAN',  7698,TO_DATE('08-09-1981', 'DD-MM-YYYY'),  1500, NULL, 30);
INSERT INTO EMP VALUES(7876, 'ADAMS',  'CLERK',7788,TO_DATE('12-01-1983', 'DD-MM-YYYY'), 1100, NULL, 20);
INSERT INTO EMP VALUES(7900, 'JAMES',  'CLERK',7698,TO_DATE('03-12-1981', 'DD-MM-YYYY'),   950, NULL, 30);
INSERT INTO EMP VALUES (7902, 'FORD',   'ANALYST',7566,TO_DATE('03-12-1981', 'DD-MM-YYYY'),  3000, NULL, 20);
INSERT INTO EMP VALUES(7934, 'MILLER', 'CLERK',7782,TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);

INSERT INTO EMP VALUES(7934, 'MILLER', 'CLERK',7782,TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300.54, NULL, 10);
INSERT INTO EMP VALUES(7934, 'MILLER', 'CLERK',7782,TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);
INSERT INTO EMP VALUES(7934, 'MILLER', 'CLERK',7782,TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300.5678, NULL, 10);
commit;

--���̺� Ȯ��
select * from emp;
--������ ����
delete from emp;
--�Ϻ� ����
delete from emp where empno=7499;
--scott ���� �����Ͱ��� ��ҹ��ڸ� ������
delete from emp where ename='SCOTT';
--��å���� ���� �������� ����
DELETE FROM EMP WHERE JOB='CLERK';

create table dept(
deptno number,
dname varchar2(14),
loc varchar2(13));

--Ÿ�� Ȯ��
desc dept;
select * from dept;

insert into dept values(10,'ACCOUNTING','NEW YORK');
insert into dept values(20,'RESEARCH','DALLAS');
insert into dept values(30,'SALES','CHICAGO');
insert into dept values(40,'OPERATIONS','BOSTON');

--��ҹ��� ���� ����Ű ALT + ' 
select * from emp;

--not null�� null�� ������� �ʰڴٴ� ��
--���̺��� ���Ἲ�� �����ϱ� ���� ��������
--������ ���Ἲ�� �������� ��Ȯ��, �ϰ���, ��ȿ���� �����Ǵ� ���� �ǹ��մϴ�. 
--���⼭ ��Ȯ���̶� �ߺ��̳� ������ ���� ���¸� ���ϰ�, �ϰ����� ���ΰ� ����� �ǹ̰� ���������� ����Ǿ� ������ �ʴ� ���¸� ���մϴ�.

create table address2(
name varchar2(20) not null,
addr varchar2(100) not null,
tel varchar2(20));

insert into address2 values('hong','seoul',null);
insert into address2 values(null,'seoul',null);-- not null �������� ����
insert into address2 values('hong',null,'111-1111');-- not null �������� ����

--���̺� ��ȸ
select * from address2;
select * from emp;
select * from dept;

--aliasing ��Ī ��, select ������ ��밡���ϴ�.
select * from emp;
select empno from emp;-- emp���̺��� empno�� Ȯ���ϰڴ�
select empno as "���" from emp;-- emp���̺��� empno�� ������� �ٲ�.

--emp���̺� aliasing�� �̿��� �ٲٱ�
select empno as "���", 
ename as "����̸�", job as "��å", mgr as "�����ȣ",
hiredate as "�Ի���", sal as "�޿�", comm as "Ŀ�̼�", deptno as "�μ���ȣ" 
from emp;

--"", as ��������
select empno as ���, ename as ����̸� from emp;
select empno ���, ename ����̸� from emp;
--�ܾ ����� ������ �� "" ���
select empno ���, ename "��� �̸�" from emp;
select empno "emp number", ename "emp name" from emp;

--���Ῥ���� ||
select ename from emp;
select ename || '''s job is ' || job from emp;
select ename || '''s job is ' || job "emp's job" from emp;

--SMITH�� �޿��� 800�޷��̴�.
select ename || '''s �� �޿���' || sal from emp; 

--SMITH�� �Ŵ��� ��ȣ�� 7902�̴�.
select ename || ''' �Ŵ��� ��ȣ�� ' || mgr "managerno" from emp;

commit;
--�ߺ��� ���� distinct �ڡ�
select * from emp;
select distinct job from emp;
select distinct deptno from emp;

--�����Լ� count
select * from emp;
select count(job) from emp;-- �ߺ��� ���� �����ش�.
select count(distinct job) from emp;-- �ߺ��� �� �����ؼ� �����ش�.
select count(*) from emp;-- ���ڵ� ����
select count(comm) from emp;-- null ������ �����ʴ´�. �����Ұ�!!

--�μ��� ������ ��ϱ� (�ߺ��� ����)
select count(distinct deptno) from emp;

-- ���� / AR's�� ���ܾ�� Arhentina�̴�.
select * from countries;
select country_id || '''s �� �� �ܾ�� ' || country_name from countries;
select country_id || '''s �� �� �ܾ�� ' || country_name || '�̰� ������ȣ�� ' || region_id || '�̴�' from countries;

--steven�� �̸����� SKING�̰� ���ѹ��� 515.123.4567�̴�.
select * from employees;
select EMAIL || ''' �̸����� SKING�̰�' || PHONE_NUMBER  from employees;
select first_name || '''s �̸����� ' || email || '�̰� ���ѹ��� ' || phone_number || '�̴�' from employees;

--employees�� ���̺��� �μ���ȣ�ڵ带 �ߺ������Ͽ� ������ ��ȸ�Ͻÿ�.
select * from employees;
select count(department_id) from employees;-- null��, �ߺ��� ����
select count(distinct department_id) from employees;-- null��,�ߺ��� ����

--primary key �⺻Ű �ڡڡڡڡ�
select * from emp;
drop table emp;

create table emp(
empno number(4) primary key,--��� primary key�� UNIQUE�ϸ� NULL���� ���� �ȵǰ� �ߺ��� �����Ͱ��� ���� �ȵȴ�.
ename varchar2(10),--����̸�
job varchar2(9),--��å
mgr number(4),--�����ȣ
hiredate date,--�Ի���
sal number(7,2),--�޿� �Ҽ��� 2���� ���
comm number(7,2),--Ŀ�̼�
deptno number(2));--�μ���ȣ

INSERT INTO EMP VALUES(7369,'SMITH','CLERK',7902,TO_DATE('17-12-1980','dd-mm-yyyy'),800,NULL,20);
INSERT INTO EMP VALUES (7499, 'ALLEN',  'SALESMAN',7698,TO_DATE('20-02-1981', 'DD-MM-YYYY'), 1600,  300, 30);
INSERT INTO EMP VALUES(7521, 'WARD',   'SALESMAN',7698,TO_DATE('22-02-1981', 'DD-MM-YYYY'), 1250,  500, 30);
INSERT INTO EMP VALUES(7566, 'JONES',  'MANAGER',7839,TO_DATE('02-04-1981', 'DD-MM-YYYY'),  2975, NULL, 20);
INSERT INTO EMP VALUES(7654, 'MARTIN', 'SALESMAN',7698,TO_DATE('28-09-1981', 'DD-MM-YYYY'), 1250, 1400, 30);
INSERT INTO EMP VALUES(7698, 'BLAKE',  'MANAGER',7839,TO_DATE('01-05-1981', 'DD-MM-YYYY'),  2850, NULL, 30);
INSERT INTO EMP VALUES(7782, 'CLARK',  'MANAGER',7839,TO_DATE('09-06-1981', 'DD-MM-YYYY'),  2450, NULL, 10);
INSERT INTO EMP VALUES(7788, 'SCOTT',  'ANALYST',7566,TO_DATE('09-12-1982', 'DD-MM-YYYY'), 3000, NULL, 20);
INSERT INTO EMP VALUES(7839, 'KING',   'PRESIDENT', NULL, TO_DATE('17-11-1981', 'DD-MM-YYYY'), 5000, NULL, 10);
INSERT INTO EMP VALUES(7844, 'TURNER', 'SALESMAN',7698,TO_DATE('08-09-1981', 'DD-MM-YYYY'),  1500, NULL, 30);
INSERT INTO EMP VALUES(7876, 'ADAMS',  'CLERK',7788,TO_DATE('12-01-1983', 'DD-MM-YYYY'), 1100, NULL, 20);
INSERT INTO EMP VALUES(7900, 'JAMES',  'CLERK',7698,TO_DATE('03-12-1981', 'DD-MM-YYYY'),   950, NULL, 30);
INSERT INTO EMP VALUES (7902, 'FORD',   'ANALYST',7566, TO_DATE('03-12-1981', 'DD-MM-YYYY'),  3000, NULL, 20);
INSERT INTO EMP VALUES(7934, 'MILLER', 'CLERK',7782, TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);
--PRIMARY KEY�� Į���� �����Ͱ� �����ؾ��Ѵ�. UNIQUE NOT NULL

--WHERE�� �������̶�� �Ѵ�.
--select ����� Į�� from ���̺�� where ����� ����

--empno 7900�� ������ ��ȸ
SELECT * FROM emp WHERE empno=7902;

--�̸��� martin�� ��� ��ȸ �����Ͱ��� ��ҹ��ڸ� �����Ѵ�.
SELECT * FROM EMP WHERE ENAME='MARTIN';

--job�� clerk�� ������ ��ȸ
select * from emp where job='CLERK';
select * from emp where job='SALESMAN';

--����� Į�� ����
SELECT ENAME,EMPNO,HIREDATE FROM EMP WHERE JOB='CLERK';

--�Ի��� ��ȸ ��� �̸� �޿� �Ի��� ������ ��ȸ
--�Ի����� 81�� 12�� 3��
SELECT EMPNO,ENAME,SAL,HIREDATE FROM EMP WHERE HIREDATE='1981-12-3';

--SQL ��� ����
--���� �޿����� 10% �λ��� ���� "�λ�� �޿�"�� ���
SELECT SAL*1.1 "�λ�� �޿�" FROM EMP;
SELECT SAL "�λ� �� �޿�", SAL*1.1 "�λ�� �޿�" FROM EMP;

--�޿��� 150% ���ʽ� ���� "���ʽ� �ݾ�" ��ȸ
SELECT SAL "�޿�", SAL*1.5 "���ʽ� �ݾ�", SAL+(SAL*1.5) "���ʽ� �հ� �� �޿�" FROM EMP;

--SQL �� ����
--SAL 2000�̻��� ������ ��ȸ
SELECT * FROM EMP WHERE SAL>=2000;

--SAL 1500������ ������ ��ȸ
SELECT * FROM EMP WHERE SAL<=1500;

--�μ���ȣ�� 20�� ������ ��ȸ
SELECT * FROM EMP WHERE DEPTNO=20;

--������ �������϶� ��ȸ
--SAL 1500 �̻��̰� �μ���ȣ�� 20�� ������ ��ȸ
SELECT * FROM EMP WHERE SAL>=1500 AND DEPTNO=20;

--SAL 1500 �̻��̰ų� �μ���ȣ�� 20�� ������ ��ȸ
SELECT * FROM EMP WHERE SAL>=1500 OR DEPTNO=20;

--�ϱ� ����
--��������
--SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY �ڡڡڡڡ�

--�������
--FROM WHERE GROUP BY HAVING SELECT ORDER BY �ڡڡڡڡ�

--��¥ ��
--�Ի����� 81�� 12�� 3�� ������ �Ի��� ������ ��ȸ
SELECT * FROM EMP WHERE HIREDATE<='1981-12-3';

--���� ��
--�̸��� SMITH ���� ���� ��������ȸ
SELECT * FROM EMP WHERE ENAME<'SMITH';

--BETWEEN A AND B : A���� B����
--SAL 2000~3000������ ������ ��ȸ
SELECT * FROM EMP WHERE SAL BETWEEN 2000 AND 3000;
SELECT * FROM EMP WHERE SAL BETWEEN 3000 AND 2000;-- ū ���� �� �ʿ� ��ġ�ϸ� �˻��� �ȵȴ�. �����Ұ�!!

--����¡ ó�� ����� ����

--�� ������ �� �������� ����
SELECT * FROM EMP WHERE SAL>=2000 AND SAL<=3000;

--BETWEEN JAMES MARTIN����
SELECT * FROM EMP WHERE ENAME BETWEEN 'JAMES' AND 'MARTIN';
SELECT * FROM EMP;

--IN ������ �����ϰ� ���� ���� �˻� �ڡڡ� �߿�!
--�μ���ȣ�� 20, 30�� ������ ��ȸ
--OR ���
SELECT * FROM EMP WHERE DEPTNO=20 OR DEPTNO=30;
--IN ���
SELECT * FROM EMP WHERE DEPTNO IN(20,30);

--��å�� CLERK, ANALYST ��������ȸ
SELECT * FROM EMP WHERE JOB IN ('CLERK','ANALYST');

COMMIT;

--like ������ ����� ������ ��ȸ �ڡڡ� �߿�!
--sal 1�� �����ϴ� ������ ��ȸ
select * from emp where sal like '1%';

--���� �̸��� w�� �����ϴ� ������ ��ȸ
select * from EMP where ename like 'W%';

--���� �̸��� R�� ������ ��� ������ ��ȸ
select * from emp where ename like '%R';

--A�� ���Ե� ��� ������ ��ȸ
select * from emp where ename like '%A%';

--���� �̸� �߿� �ι�° ���ڰ� L�� ������ ��ȸ
select * from emp where ename like '_L%';

--3��° ���ڰ� R�� ������ ���
select * from emp where ename like '__R%';

--�̸� �� ������ ����° ���ڰ� N�� ������ ��ȸ
select * from emp where ename like '%N__';

-- ERD (Entity Reationship Diagram, ��ü���赵)
-- erd ����� ����Ʈ : https://www.erdcloud.com/

--select from where group by having order by
--from where group by having select order by

-----------------------------------------------------------------------------230619---------------------------------------------------------------------------------------------
--null ��ȸ null �� ��ȸ �� is null �� ��ȸ�Ѵ�.
select * from emp;
select * from emp where comm is null;

--mgr�� null ��ȸ
select * from emp where mgr is null;

--null�� �ƴ� �� ��ȸ is not null ���
select * from emp where comm is not null;

--���� �Ի����� 82 1 1 �����̰� sal�� 1300 �̻��� ����� ���� ��ȸ
select * from emp where hiredate >= '1982-1-1' and sal >= 1300;

--�޿��� 1000 �ʰ��ϰ� Ŀ�̼��� 1000 �̸��̰ų� Ŀ�̼��� null�� ���, �̸�, �޿�, Ŀ�̼� ��ȸ
select * from emp where sal > 1000 and (comm < 1000 or comm is null);

-- �ѹ� = �ǵ����� ������ commit �� �ѹ��� �ȵȴ�.
select * from emp;
INSERT INTO EMP VALUES (8902, 'FORD',   'ANALYST',7566, TO_DATE('03-12-1981', 'DD-MM-YYYY'),  3000, NULL, 20);
INSERT INTO EMP VALUES(8934, 'MILLER', 'CLERK',7782, TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);

rollback;
commit;

delete from emp where empno in(8902,8934);

--�ܺ��� sql ������ import ��Ű�� ���
@c:\stuprodep.sql
select * from student;
select count(*) from student;
select * from department;
select * from professor;

select * from emp;
select * from dept;

--union ������ student,professor ���̺��� ������ �ְ� �� ���ǿ� �ش��ϴ� �����͸� ���
select studno,name,deptno1 from student where deptno1 = 101
union
select profno,name,deptno from professor
where deptno = 101;

--��Ī�ο�
select studno "pno sno",name,deptno1 from student where deptno1 = 101
union
select profno,name,deptno from professor
where deptno = 101;

select 1,ename from emp;

--1�� ������ student ���̺��� �����°� 2�� ������ professor���� �����°�
select studno,name,deptno1,1 from student where deptno1 = 101
union -- �ߺ��� ����
select profno,name,deptno,2 from professor
where deptno = 101;

select studno,name,deptno1,1 from student where deptno1 = 101
union all -- ��� ���
select profno,name,deptno,2 from professor
where deptno = 101;

--���̳��� ������
select studno, name from student where deptno1 = 101
union -- �ߺ��� ��� �� ��
select studno, name from student where deptno2 = 201;

select studno, name,1 from student where deptno1 = 101
union all -- ��� ���
select studno, name,2 from student where deptno2 = 201;

-- ������ intersect
select studno, name from student where deptno1 = 101
intersect -- �������� �� ���
select studno, name from student where deptno2 = 201;

-- ������ minus
select studno, name from student where deptno1 = 101
minus -- �������� �κ� ���� �� ���
select studno, name from student where deptno2 = 201;

-- EMP���� MINUS�� �̿��ؼ� �޿��� 2500�޷� ������ ����� �޿��� 10�޷� �λ��Ͻÿ�.
select * from emp;

select empno,ename,sal,sal*1.1 from emp 
minus
select empno,ename,sal,sal*1.1 from emp where sal >= 2500;
-- ��� �� ������ �ڡ�
-- Į���� ����,Ÿ���� ��ġ�ؾ���.

-- ����
--select 
--from 
--where 
--group by --�׷�ȭ 
--having -- �׷��� ����
--order by -- ����
-- ����
--from 
--where 
--group by --�׷�ȭ 
--select 
--having -- �׷��� ����
--order by -- ����

--order by ���� �������� a,b,c 1,2,3 / ��������(desc) �ڡڡ�
select * from emp;
--emp ���̺��� ename���� �������� ����
--order by�� �⺻���� ���������̶� asc ��������
select * from emp order by ename;
select * from emp order by ename asc;
--emp ���̺��� ename���� �������� ����
select * from emp order by ename desc;

--���� �ʵ忡 ����
--job ��������, empno ��������
select * from emp order by job asc, empno desc;-- 1�� ���� 2�� ���� 1�� ���� �� 2�� ������ �ȴ�.

select job,empno,ename from emp order by job asc, empno desc;

select * from emp order by empno asc, job desc;-- empno�� primary key�̱� ������ 2�� ������ �ص� �ǹ̰� ����.
--deptno desc 1�� ����, sal asc 2�� ����
select * from emp order by deptno desc, sal;

--���� 20,30���� ���
select * from emp where deptno in(20,30) order by deptno desc, sal;

--���� ���̺��� �̸��� ù���ڰ� M �̰ų� �μ���ȣ�� 102�� �����͸� ������ȣ�� ���������Ͽ�
--������ȣ, �̸�, ���̵�, �μ���ȣ, �̸����� ����Ͻÿ�.
select * from professor;
select profno,name,id,deptno,email from professor where name like 'M%' or deptno = 102 order by profno desc;

--������ �Լ� �ѹ��� �ϳ��� ó���ϴ� �Լ�
--initcap ù���� �빮�ڷ� ó���ϴ� �Լ�
select ename,initcap(ename) from emp where deptno = 10;

--���� ���̺��� �̸��� ù ���� �빮�� ���� deptno = 101
select name,initcap(name) from professor where deptno = 101;

--Lower = �ҹ��� / Upper = �빮��
select * from emp;
select ename,lower(ename) lowername,upper(ename) uppername from emp;

--length ���ڱ���, lengthb byte�� ����
select ename,length(ename) from emp;
select ename,lengthb(ename) from emp;
INSERT INTO EMP VALUES(9000, 'ȫ�浿', 'CLERK', 7782, TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300.5678, NULL, 10);
select 'ȫ�浿',length('ȫ�浿'),lengthb('ȫ�浿'),length('��'),lengthb('�˪۪�') from dual;

--dual ���̺� ( ����Ŭ ��ü���� �����Ǵ� ���̺� )
--�� Dual ���̺��� ���뵵
-- - dual ���̺��� ����ڰ� �Լ�(���)�� ������ �� �ӽ÷� ����ϴµ� �����ϴ�.
-- - �Լ��� ���� ������ �˰� ������ Ư�� ���̺��� ������ �ʿ���� dual ���̺��� �̿��Ͽ� �Լ��� ���� ����(return)���� �� �ִ�.
   
--concat �Լ� ���ڿ� ���� ||
select * from emp;
select ename || '''s �� ������ ' || job || '�̴�' from emp;
select concat(ename,job) from emp;
select concat(concat(ename,','),job) from emp;
select concat(concat(ename,'�� ��å�� '),job) from emp;

--substr ���ڿ� Ư������ ���� �ڡڡڡڡ�
--substr(���ڿ�,��ġ,���ڰ���);
select 'ABCDEFG' from dual;
select 'ABCDEFG', substr ('ABCDEFG',3) from dual; -- 3��° ��ġ���� ������
select 'ABCDEFG', substr ('ABCDEFG',3,2) from dual; -- 3��° ��ġ���� 2��° ������ŭ
select 'ABCDEFG', substr ('ABCDEFG',-3,2) from dual; -- �ڿ��� 3��° ��ġ���� 2��° ������ŭ
select 'ABCDEFG', substr ('ABCDEFG',-3,2) from dual; -- �ڿ��� 3��° ��ġ���� 2��° ������ŭ

--emp ���̺� ����
select ename,substr(ename,2,3),job,substr(job,2,3) from emp;
--�� ������ �ҹ��ڷ� ��ȯ
select ename,lower(substr(ename,2,3)),job,lower(substr(job,2,3)) from emp;

--instr Ư�� ���ڿ� ��ġ�� ��ȯ �ڡڡڡڡ�
--instr(���ڿ�, ã�¹���,������ġ,ã�� ���ڹ�°) = ã�� ���ڰ� ��ġ�ϴ� ���ڸ� ����
select 'A-B-C-D' from dual;
select 'A-B-C-D',instr('A-B-C-D','A') from dual;
select 'A-B-C-D',instr('A-B-C-D','-',1,1) from dual;-- ó������ �˻��ؼ� '-'�� ã�Ƽ� ù��° ������ ��ġ
select 'A-B-C-D',instr('A-B-C-D','-',1,2) from dual;-- ó������ �˻��ؼ� '-'�� ã�Ƽ� �ι�° ������ ��ġ
select 'A-B-C-D',instr('A-B-C-D','-',3,2) from dual;-- 3��° ���ں��� �˻��� �ؼ� '-'�� ã�Ƽ� �ι�° ������ ��ġ
select 'A-B-C-D',instr('A-B-C-D','-',3,5) from dual;-- ã�� ����� ���� ���� 0���� ����

-- ������ȣ ���� ������ȣ�� ���̰� �ٸ�
-- ���̰� �����Ҷ� ����
select * from student;
select concat(19,substr(jumin,1,2)) jumin from student group by substr(jumin,1,2) order by jumin;
select substr(tel,1,3) from student;
--��ġ�� ��ȯ
select tel,instr(tel,')',1,1) from student;
--����
select substr(tel,1,instr(tel,')',1,1)-1) ������ȣ from student;

--EMAIL�� ���̵� ����
select * from professor;
select instr(email,'@',1,1) from professor;-- @�� ��ġ ���
select substr(email,1,instr(email,'@',1,1)-1) �̸��� from professor;

--lpad ���ʿ� ä���. ��
--lpad(ä�� ��,�� ����,ä�� ���) �� ���̸�ŭ ä�� ���� ä������.
select name,id,lpad(id,10,'*') from student where deptno1 = 201;

--12345 lpad ����
select name,id,lpad(id,10,'123456789') from student where deptno1 = 201;

--rpad �����ʿ� ä���
select ename,rpad(ename,10,'-') from emp where deptno = 10;

--����
select ename,rpad(ename,10,'123456789') from emp where deptno = 10;
select ename,instr(ename,substr(ename,-1)),rpad(ename,10,'456789') from emp;

--CLARK12345 -> CLARK56789 MILLER6789 �����غ���
select ename,rpad(ename,10,substr('123456789',6)) from emp where ename='MILLER';
select ename,rpad(ename,10,substr('123456789',4)) from emp where ename='FORD';
select ename,rpad(ename,10,substr('123456789',length(ename))) from emp where ename='FORD';

-----------------------------------------------------------------------------230620---------------------------------------------------------------------------------------------
--replace ���ڿ� ��ġ �ڡڡ�
--replace(Į��, ����1, ����2) Į������ ����1�� ����2�� �ٲٰڴٴ� �ǹ�
select * from emp;
commit;

--ename�� �տ� 2���ڸ� �ڴ�ġ
select ename, replace(ename,'SM','�ڡ�') from emp;
select ename, replace(ename,substr(ename,1,2),'�ڡ�') from emp;

--job �տ� 2���ڸ� --�� ��ȯ
select job, replace(job,substr(job,1,2),'�ڡ�') replacejob from emp;

select * from student;
-- tel�� -�� �����ϱ�
select tel, instr(tel,'-') from student;
select tel, replace(tel,substr(tel,8),'*') replacetel from student;
select tel, replace(tel,substr(tel,instr(tel,'-')),' ') replacetel from student;
select tel, replace(tel,substr(tel,instr(tel,'-'),1),' ') replacetel from student;

--JUMIN - �߰�
select jumin, concat(concat(jumin,'-'),substr(jumin,6,11)) replacejumin from student;

select jumin,substr(jumin,1,6),substr(jumin,7) from student;
select jumin,concat(substr(jumin,1,6),'-'),substr(jumin,7) from student;
select jumin,concat(concat(substr(jumin,1,6),'-'),substr(jumin,7)) replacejumin from student;

--���� ���� �Լ�
--round �ݿø� �Լ� �ڡ�
select 987.456,round(987.456,2) from dual; --�Ҽ��� 2°�ڸ����� ǥ��
select 987.456,round(987.556,0) from dual; --�Ҽ��� 0��°�ڸ����� ǥ��
select 987.456,round(987.556,-1) from dual; --10�������� ǥ��
select 987.456,round(987.556,-2) from dual; --100�������� ǥ��

--trunc �����Լ� �ڡ�
select 987.456,trunc(987.456,2) from dual; --�ڸ��� �ڷ� ����
select 987.456,trunc(987.456,0) from dual; --�ڸ��� �ڷ� ����
select 987.456,trunc(987.456,-1) from dual; --�ڸ��� �ڷ� ����

--mod ceil floor
select mod(121,10) from dual;--120/10 �� ������
select ceil(100.123) from dual;
select floor(100.123) from dual;
select floor(-100.123) from dual;

--ceil �Լ�����
select rownum,empno,ename from emp;
--�� ����
select rownum,ceil(rownum/3) || '��' team,ename from emp;

--power �Լ�
select power(2,3) from dual;--2�� 3��

--��¥�Լ� sysdate �ڡڡ� ���糯¥ : ����Ŭ�� ��ġ�� �ý����� ��¥
select sysdate from dual;

--months_between �ڡ� Ư���Ⱓ ������
select months_between('23/6/20','23/2/5') from dual;
select ceil(months_between('23/6/20','23/1/5')) from dual;
select floor(months_between('23/6/20','23/1/5')) from dual;

--add_months ���� ���� �߰�
select sysdate,add_months(sysdate,5) from dual;

--next_day �ٰ����� ��¥
select sysdate,next_day('23/6/20','������') from dual;-- �ٰ����� ���� �������� ��¥ ���

--last_day ���� ������ ��
select sysdate,last_day(sysdate) from dual;

--������ ����ȯ, �ڵ� ����ȯ
select '2'+'2' from dual;
select 2+'2' from dual;
select 2+to_number(2) from dual;-- ����� ����ȯ

--year format
select sysdate from dual;
select sysdate,to_char(sysdate,'yyyy-MM-dd') from dual;
select sysdate,to_char(sysdate,'yy-mm-dd') from dual;
select sysdate,to_char(sysdate,'year') from dual;

--month format
select sysdate,to_char(sysdate,'MM') from dual;
select sysdate,to_char(sysdate,'MON') from dual;
select sysdate,to_char(sysdate,'MONTH') from dual;
select sysdate,to_char(sysdate,'MONTH','NLS_DATE_LANGUAGE=ENGLISH') from dual;

--DAY FORMAT
select sysdate,to_char(sysdate,'DD') from dual;
select sysdate,to_char(sysdate,'DAY') from dual;-- �ѱ۷� ����
select sysdate,to_char(sysdate,'DDTH') from dual;-- dayTH

--HOUR FOMAT
select sysdate,to_char(sysdate,'RRRR-MM-DD HH24:MI:SS') from dual;

--�������� ���������� ��ȯ �ڡڡ�
select ename, sal, comm, sal+comm from emp;
select ename, sal, comm, sal+comm*12,to_char(sal+comm*12,'$999,999,999') from emp;

--to_number �ڡڡ�
select to_number('55') from dual;

--nvl �ڡڡڡڡڡ� null value
--nvl(comm,0) comm�� null�϶� 0���� �ٲ��ش�.
select comm from emp;
select sal,comm,sal+comm from emp;-- sal ���� null�� ��� sal+comm�� ���ϴ� ����� ��Ÿ�����ʴ´�.
select sal,comm,sal+nvl(comm,0) salcomm from emp;

--nvl2 �ڡڡڡڡڡ�
--nvl2(col1,col2,col3) col1�� null�� �ƴϸ� col2 ���, col1�� null �̸� col3 ���
--nvl2 �������Ʈ https://gent.tistory.com/189
select ename,sal from emp;
select ename,sal,nvl2(comm,sal+comm,sal+0)  from emp;
select empno,ename,comm as comm, nvl2(comm,'Y','N') as comm2 from emp;

select * from student;
--student���� deptno2�� null���� 0���� nv1�� Ȱ���ؼ� ġȯ�ϰ�
--�̸� ���̵� �ֹ� deptno2�� ���
--���� deptno1�� 201�̰ų� 103�� ������
select name,id,jumin,nvl(deptno2,0) deptno2 from student where deptno1 in (201,103);

--decode �Լ� if���� �����ϴ�. �ڡڡ�
--decode(deptno,101,'computer engineering','etc') deptno�� 101�̸� 'computer engineering'��� ����ϰ� �������� 'etc' ���
select deptno,name from professor;
select deptno,name,decode(deptno,101,'Computer Enginerring','ETC') from professor;

 --���ÿ� �����ϱ�
select deptno,name,decode(deptno,
101,'Computer Enginerring',
102,'Multi Enginerring',
103,'Software Enginerring',
201,'Electronic Enginerring',
202,'Mechanic Enginerring',
203,'Chemical Enginerring',
301,'Infomation science',
'ETC') job
from professor;

--emp ���̺� �����ϱ�
select * from emp;
select * from dept;

 --decode�� ����ؼ� emp ���̺� �μ��̸��� ����ϱ�
select ename,job,deptno,decode(deptno,
10,'ACCOUNTING',
20,'RESEARCH',
30,'SALES',
40,'OPERATIONS',
'ETC') decode
from emp;
 
--case ���� when ��� then ��� �ڡڡ�
select * from student;
--tel�� ������ȣ�� �´� case �� ����
select substr(tel,1,instr(tel,')',1,1)-1) ������ȣ from student where deptno1=201;
 
select substr(tel,1,instr(tel,')',1,1)-1) ������ȣ,
case(substr(tel,1,instr(tel,')',1,1)-1))
    when '02' then 'seoul'
    when '031' then 'gyeongi'
    when '051' then 'busan'
    when '053' then 'daegu'
    when '033' then 'gangwondo'
    else 'etc'
end loc
from student 
where deptno1=201;
 
--�������Լ� �׷��Լ� �ڡڡ�
select count(*),count(comm) from emp;
 
--sum�Լ�
select count(comm), sum(comm) from emp;
 
--average �Լ�
select count(comm), sum(comm), round(avg(comm),0) from emp;
select count(comm), sum(comm), round(avg(nvl(comm,0)),2) from emp;

--max min
select max(sal),min(sal) from emp;
 
-- stddev variance ǥ������,�л�
select stddev(sal) ǥ������, variance(sal) �л� from emp;
select round(stddev(sal),2) ǥ������, round(variance(sal),2) �л� from emp;
 
--group by �ڡڡڡڡڡ� �׷�ȭ
select * from emp;
--deptno�� �׷�ȭ = �μ����� �׷���
select deptno from emp group by deptno;

--�μ����� sal�� �հ踦 ���ϱ�
--select from ���̿� �׷��� ����� �Լ��� ��밡���ϴ�.
select deptno,sum(sal) from emp group by deptno;
 
--group by�� ������ ǥ�� 
select deptno,sum(sal) from emp group by deptno having sum(sal)>9000;
 
select deptno,sum(sal)
from emp
where deptno in (20,30)
group by deptno 
having sum(sal)>9000 
order by deptno desc;

-- ����
-- from 
-- where 
-- group by --�׷�ȭ 
-- select 
-- having -- �׷��� ����
-- order by -- ����
 
select * from student; 
--deptno1�� weight�� �̿��� �׷�ȭ����
select deptno1,sum(weight)
from student
where deptno1 like '1%'
group by deptno1
having sum(weight)>200
order by sum(weight) asc;

--2���׷���
select * from emp;
--deptno, job���� 2�� �׷���
select deptno,job,sum(sal),avg(sal),count(sal) from emp group by deptno,job order by deptno asc;

select deptno,job,sum(sal),avg(sal),count(sal) from emp group by deptno,job having count(sal)<=3 order by deptno asc;

select * from professor;
--�������̺��� �оߺ���(deptno) ���ʽ��� ���� ����� ���� ���ʽ� �հ�
--������ deptno
select deptno,count(bonus),sum(bonus)
from professor
group by deptno
order by deptno asc;

--�׷��ʵ带 �⵵���
select * from professor;
--�⵵ ��ȸ
select to_char(hiredate,'yyyy') from professor;
--�⵵���� �׷�ȭ �� ����
select to_char(hiredate,'yyyy') from professor group by to_char(hiredate,'yyyy') order by to_char(hiredate,'yyyy');

--10�� ������ ǥ��
select round(to_number(to_char(hiredate,'yyyy')),-1) ,count(pay),sum(pay)
from professor
group by round(to_number(to_char(hiredate,'yyyy')),-1)
order by round(to_number(to_char(hiredate,'yyyy')),-1);

--��Ī ���
select round(to_number(to_char(hiredate,'yyyy')),-1) tenyear,count(pay),sum(pay)
from professor
group by round(to_number(to_char(hiredate,'yyyy')),-1)
order by tenyear;

select * from student;
--jumin�ʵ��� �⵵���� ���� �л��� ��� Ű ��� ������ �հ� Ű ����ϱ�
select concat(concat(19,substr(jumin,1,2)),'���') yyjumin,sum(height),sum(weight),round(avg(height),0),round(avg(weight),0)
from student
group by substr(jumin,1,2)
order by yyjumin;

-----------------------------------------------------------------------------230621---------------------------------------------------------------------------------------------
--���� ���� �ڡڡڡڡ�
create table one(
no number,
name varchar2(10));

create table two(
num number,
addr varchar2(30));

select * from one;
select * from two; 

insert into one values(10,'seoul1');
insert into one values(20,'seoul2');
insert into one values(30,'seoul3');
insert into one values(40,'seoul4');
insert into one values(50,'seoul5');

insert into two values(10,'busan1');
insert into two values(20,'busan2');
insert into two values(30,'busan3');
insert into two values(40,'busan4');
insert into two values(500,'busan5');
---������� ���� �� ��Ȳ����---
-- �������ִ� ���̺� ���� ���� �Ұ�
drop table one;
drop table two;

delete from one;
delete from two;
--���� �����ϱ�
alter table one add constraint pk_one_no primary key(no); -- one ���̺� primary key�� no �ʵ忡 pk_one_no��� �̸����� ���������� �߰��ϰڴ�. / no �ʵ忡 pk ����
alter table two add constraint fk_two_num foreign key(num) references one(no);-- two ���̺� foreign key�� num�ʵ忡 fk_two_num �̸����� ���������� �߰��ϴµ� one���̺��� no�ʵ带 �����ض�.

--���� ���� ��ȸ
select * from all_constraints where table_name='TWO';
select * from all_constraints where table_name='ONE';

--���� ���� ����
alter table two drop constraint FK_TWO_NUM;
alter table one drop constraint PK_ONE_NO;

--��������
create table regions3(
region_id number,
region_name varchar2(50));

create table countries3(
country_id varchar2(30),
country_name varchar2(100),
region_id number);

select * from regions3;
select * from countries3;

insert into regions3 values (1,'Europe');
insert into regions3 values (2,'Americas');
insert into regions3 values (3,'Asia');
insert into regions3 values (4,'Middle East and Africa');

insert into countries3 values ('AR','Argentina',2);
insert into countries3 values ('AU','Australia',3);
insert into countries3 values ('BE','Belgium',1);
insert into countries3 values ('BR','Brazil',2);
insert into countries3 values ('CA','Canada',2);

insert into countries3 values ('CA','Canada',20);
delete from countries3 where region_id=20;

--���� �����ϱ�
alter table regions3 add constraint pk_rg3_id primary key(region_id);
alter table countries3 add constraint fk_ct3_id foreign key(region_id) references regions3(region_id);

--���� ���� ��ȸ
select * from all_constraints where table_name='REGIONS3';
select * from all_constraints where table_name='COUNTRIES3';
select * from all_constraints where table_name IN ('REGIONS3','COUNTRIES3');

--���� ���� ����
alter table REGIONS3 drop constraint PK_RG3_ID;
alter table countries3 drop constraint FK_CT3_ID;

create table emp(
empno number(4) not null,--��� UNIQUE NOT NULL
ename varchar2(10),--����̸�
job varchar2(9),--��å
mgr number(4),--�����ȣ
hiredate date,--�Ի���
sal number(7,2),--�޿�
comm number(7,2),--Ŀ�̼�
deptno number(2));--�μ���ȣ
desc emp; -- ���̺� ��������
select * from emp;

delete from emp;

INSERT INTO EMP VALUES(7369,'SMITH','CLERK',7902,TO_DATE('17-12-1980','dd-mm-yyyy'),800,NULL,20);
INSERT INTO EMP VALUES (7499, 'ALLEN',  'SALESMAN',  7698,TO_DATE('20-02-1981', 'DD-MM-YYYY'), 1600,  300, 30);
INSERT INTO EMP VALUES(7521, 'WARD',   'SALESMAN',  7698,TO_DATE('22-02-1981', 'DD-MM-YYYY'), 1250,  500, 30);
INSERT INTO EMP VALUES(7566, 'JONES',  'MANAGER',   7839,TO_DATE('02-04-1981', 'DD-MM-YYYY'),  2975, NULL, 20);
INSERT INTO EMP VALUES(7654, 'MARTIN', 'SALESMAN',  7698,TO_DATE('28-09-1981', 'DD-MM-YYYY'), 1250, 1400, 30);
INSERT INTO EMP VALUES(7698, 'BLAKE',  'MANAGER',   7839,TO_DATE('01-05-1981', 'DD-MM-YYYY'),  2850, NULL, 30);
INSERT INTO EMP VALUES(7782, 'CLARK',  'MANAGER',   7839,TO_DATE('09-06-1981', 'DD-MM-YYYY'),  2450, NULL, 10);
INSERT INTO EMP VALUES(7788, 'SCOTT',  'ANALYST',   7566,TO_DATE('09-12-1982', 'DD-MM-YYYY'), 3000, NULL, 20);
INSERT INTO EMP VALUES(7839, 'KING',   'PRESIDENT', NULL, TO_DATE('17-11-1981', 'DD-MM-YYYY'), 5000, NULL, 10);
INSERT INTO EMP VALUES(7844, 'TURNER', 'SALESMAN',  7698, TO_DATE('08-09-1981', 'DD-MM-YYYY'),  1500, NULL, 30);
INSERT INTO EMP VALUES(7876, 'ADAMS',  'CLERK',     7788,TO_DATE('12-01-1983', 'DD-MM-YYYY'), 1100, NULL, 20);
INSERT INTO EMP VALUES(7900, 'JAMES',  'CLERK',     7698, TO_DATE('03-12-1981', 'DD-MM-YYYY'),   950, NULL, 30);
INSERT INTO EMP VALUES (7902, 'FORD',   'ANALYST',   7566, TO_DATE('03-12-1981', 'DD-MM-YYYY'),  3000, NULL, 20);
INSERT INTO EMP VALUES(7934, 'MILLER', 'CLERK',     7782, TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);

create table dept(
deptno number,
dname varchar2(14),
loc varchar2(13));
desc dept;
select * from dept;

insert into dept values(10,'ACCOUNTING','NEW YORK');
insert into dept values(20,'RESEARCH','DALLAS');
insert into dept values(30,'SALES','CHICAGO');
insert into dept values(40,'OPERATIONS','BOSTON');

delete from emp;

drop table emp purge;
drop table dept purge;

select * from emp;
select * from dept;

--���輳�� dept ���̺� deptno�� emp ���̺��� deptno�� �����ϱ�
alter table dept add constraint pk_dept_deptno primary key(deptno);
alter table emp add constraint fk_emp_deptno foreign key(deptno) references dept(deptno);

select * from all_constraints where table_name in ('EMP','DEPT');

-- JOIN �ڡڡڡڡڡڡڡڡڡڡڡ� ���̺�� ���̺��� ����
create table tbl1(
id number,
name varchar2(10));

create table tbl2(
id number,
car varchar2(10));

insert into tbl1 values(1,'AAA');
insert into tbl1 values(2,'BBB');
insert into tbl1 values(3,'CCC');
insert into tbl1 values(4,'DDD');
insert into tbl1 values(5,'EEE');
select * from tbl1;

insert into tbl2 values(2,'AVANTE');
insert into tbl2 values(3,'SONATA');
insert into tbl2 values(2,'MINI');
insert into tbl2 values(6,'PONY');
select * from tbl2;
commit;

--ansi join style / �ٸ� �����ͺ��̽� ���α׷������� ��� ����
select a.id,a.name,b.car-- ��������� from���� select�� �ʰ� ����Ǽ� ��Ī�� �ᵵ�ȴ�.
from tbl1 a inner join tbl2 b
on a.id = b.id;

select a.id,name,car --�ߺ��� ������ ��Ī�� ���ش�.
from tbl1 a inner join tbl2 b
on a.id = b.id;

--oracle join / Oracle������ ��밡��
select a.id,a.name,b.car
from tbl1 a , tbl2 b
where a.id = b.id;

--left outer join ���� ���̺� ��ü ������ ���̺� ������
--ansi join
select t1.id, t2.car from tbl1 t1 left outer join tbl2 t2 on t1.id=t2.id;
--oracle join
select t1.id, t2.car from tbl1 t1, tbl2 t2 where t1.id=t2.id(+);

--RIGHT OUTER JOIN ���� ���̺� ��ü ������ ���̺� ������
--ANSI JOIN
select t1.id, t2.car from tbl1 t1 right outer join tbl2 t2 on t1.id=t2.id;
--ORACLE JOIN
select t1.id, t2.car from tbl1 t1, tbl2 t2 where t1.id(+)=t2.id;

--����κ� ����
select t1.id, t2.car from tbl1 t1 right outer join tbl2 t2 on t1.id=t2.id where t1.id is null;

--����κи� ��ȸ
select t1.id, t2.car from tbl1 t1 right outer join tbl2 t2 on t1.id=t2.id where t1.id is not null;
select t1.id, t2.car from tbl1 t1 right outer join tbl2 t2 on t1.id=t2.id where t1.id = t2.id;

--FULL OUTER JOIN (���̺� ��� ��ȸ)
--ANSI JOIN
select t1.id,name, t2.car from tbl1 t1 full outer join tbl2 t2 on t1.id=t2.id;
--ORACLE JOIN
select t1.id,name, t2.car from tbl1 t1, tbl2 t2 where t1.id=t2.id(+);
union
select t1.id,name, t2.car from tbl1 t1, tbl2 t2 where t1.id(+)=t2.id;

--����κ� ����
select T1.id,name, t2.CAR from TBL1 T1 full outer join TBL2 t2 on T1.id=t2.id where t2.Car Is Null Or T1.Id Is Null;

--join Ȱ�� ( emp,dept ���̺� Ȱ�� )
--��� ���̺��� �μ��ڵ忡 ��Ī�Ǵ� �μ��� �̸��� ���
--empno,ename,deptno,dname ���
select * from emp;
select * from dept;
select e.empno,e.ename,e.deptno, d.dname from emp e inner join dept d on e.deptno=d.deptno order by dname;
select e.empno,e.ename,e.deptno,d.dname,d.loc from emp e inner join dept d on e.deptno = d.deptno order by deptno;

--�л��� �������̺��� join�Ͽ� �л��̸�, ����������ȣ, ���������̸��� ��ȸ
select * from student;
select * from professor;
select s.name,s.profno,p.name from student s inner join professor p on s.profno=p.profno order by profno;

--�� ������ ����Ŭ �������� ó��
select s.name,s.profno,p.name from student s, professor p where s.profno=p.profno order by profno;

--update ���� ����
--update ���̺� set col1='value',col2='value2' where ����;
select * from emp;
--table copy
create table emp2
as
select * from emp;

select * from emp2;
--allen�� �޿��� 500 �λ�
update emp2 set sal=sal+500 where ename='ALLEN';
--JAMES�� �޿��� 1000 �λ�
update emp2 set sal=sal+1000 where ename='JAMES';
--martin,blake �޿� 500 �λ�
update emp2 set sal=sal+500 where ename in ('MARTIN','BLAKE');

drop table emp2;
--SAL�� 2000 ������ ����� �޿� 1000 �λ�
update emp2 set sal=sal+1000 where sal<=2000;

--�����÷� ����
--sal 3000�̻��� ����� sal 100 �λ�, comm�� 1000���� ����
update emp2 set sal=sal+100, comm=1000 where sal>=3000;
select * from emp2 where sal>=3000;

--sal 2000 �̻��̰� deptno 20�� ����� sal 1000�λ�, comm 2000 ����
select * from emp2 where sal>=2000 and deptno=20;
update emp2 set sal=sal+1000, comm=2000 where sal>=2000 and deptno=20;

--������ ������ assistant professor ���ʽ��� 200���� �λ�
select * from professor;
update professor set bonus=nvl(bonus,0)+200 where position='assistant professor';-- bonus���� null�̸� 0���� ����
update professor set bonus=nvl2(bonus,bonus-200,0+200) where position='assistant professor';-- bonus���� null �̸� 0+200, null�� �ƴϸ� bonus+200
select * from professor where position='assistant professor';
rollback;

create table player(
player_id number,
player_name varchar2(20),
team_id varchar2(50));

insert into player values (2012137,'�̰�','K05');
insert into player values (2012136,'����','K08');
insert into player values (2012135,'������','K03');

create table stadium(
stadium_id varchar2(30),
stadium_name varchar2(100),
seat_count number);

insert into stadium values ('D03','���ֿ����Ű����',28000);
insert into stadium values ('B02','�������տ��',27000);
insert into stadium values ('C06','���׽�ƿ�ߵ�',25000);

create table team(
team_id varchar2(20),
team_name varchar2(200),
region_name varchar2(50),
stadium_id varchar2(100));

delete from player;

drop table player;
drop table stadium;
drop table team;

insert into team values ('K05','������ͽ�','����','D03');
insert into team values ('K08','��ȭõ��','����','B02');
insert into team values ('K03','��ƿ����','����','C06');

select * from player;
select * from stadium;
select * from team;

commit;
--���� �����ϱ�
alter table stadium add constraint pk_stadium_stadium_id primary key(stadium_id);
alter table team add constraint fk_team_stadium_id foreign key(stadium_id) references stadium(stadium_id);

alter table team add constraint pk_team_team_id primary key(team_id);
alter table player add constraint fk_player_team_id foreign key(team_id) references team(team_id);

select * from all_constraints where table_name in ('STADIUM','TEAM','PLAYER');
-----------------------------------------------------------------------------230622---------------------------------------------------------------------------------------------
--�������� ( subquery ) �ڡڡڡڡڡ� ���� �ӿ� ����
--select * from emp where ���� (select sal from emp where ~~~)

--������ �������� ���������� ����� �������̴�. ����� �ϳ��� ���´ٴ� ��
select ename,sal from emp where ename='SCOTT';

select * from emp 
where sal<3000;--soctt �޿��� �λ��� �Ǹ� �߸��� ���� ���

--scott�� sal���� ���� �޿��� �޴� ����� ������ ����Ͻÿ�.
select * from emp where sal<(select sal from emp where ename='SCOTT');

--emp���̺��� ward���� comm�� ���� �޴� ����� �̸��� comm ���
select * from emp;
select * from emp where comm<(select comm from emp where ename='WARD');

--professor ���̺��� sharon stone ������ ���ް� ������ ���� �� ����޿��� 250�� �ȵǴ� ������ �޿��� 20% �λ�
select * from professor;
--���� ���
select position from professor where name='Sharon Stone';
--������ ���� ����
select * from professor
where position=(
select position 
from professor 
where name='Sharon Stone'
) and pay < 250;

update professor
set pay = pay*1.2
where position=(
select position 
from professor 
where name='Sharon Stone'
) and pay < 250;

select * from professor where position='instructor';
rollback;

--subquery�� ������
--1. ���� ���� �κ��� where���� ������ �����ʿ� ��ġ�ϰ� �ݵ�� ()�� ���´�.
--2. Ư���� ��츦 �����ϰ� ���� ���� ���� order by ������� ���Ѵ�.
--3. ������ ��������, ������ ���������� ������.
--������ �������� ������ : =, <> �����ʴ�, >, >=, <, <=

--student ���̺�� department ���̺��� ����Ͽ� 'Anthony Hopkins'�л��� 1����(deptno1)��
--������ �л����� �̸��� 1���� �̸��� ���
--'Anthony Hopkins'�л��� 1����
select * from student;
select * from department;
--Hopkins�� ������ȣ ���
select deptno1 from student where name = 'Anthony Hopkins';
--�����ؼ� Hopkins�� 1�����̸� ���
--oracle join
select s.name,s.deptno1,d.dname from student s , department d where s.deptno1 = d.deptno and s.deptno1=103;
--ansi join
select s.name,s.deptno1,d.dname from student s inner join department d on s.deptno1 = d.deptno and s.deptno1=103;
--�� �ڵ带 �������� ����
select s.name,s.deptno1,d.dname from student s , department d where s.deptno1 = d.deptno and s.deptno1=(select deptno1 from student where name = 'Anthony Hopkins');

--student ���̺��� 1������ 201���� �а���� �����Ժ��� �����԰� ���� �л��� �̸��� ������ ���
--���̺��� 1������ 201���� �а���� ������
select * from student where deptno1=201;
select avg(weight) from student where deptno1=201;

select name,weight from student where weight>(select avg(weight) from student where deptno1=201);

--������ �������� / ������� 2���̻�
-- IN ����� ���ο��� ��� �˻�
-- EXISTS ���� ������
-- >ANY �ּҰ�����ū
-- <ANY �ִ밪���� ����
-- <ALL �ּҰ����� ����
-- >ALL �ִ밪���� ū
select sal from emp where deptno=20;

create table dept2(
dcode varchar2(6) primary key,
dname varchar2(30) not null,
pdept varchar2(6),
area varchar2(30));

INSERT INTO DEPT2 VALUES ('0001','President','','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1000','Management Support Team','0001','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1001','Financial Management Team','1000','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1002','General affairs','1000','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1003','Engineering division','0001','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1004','H/W Support Team','1003','Daejeon Branch Office');
INSERT INTO DEPT2 VALUES ('1005','S/W Support Team','1003','Kyunggi Branch Office');
INSERT INTO DEPT2 VALUES ('1006','Business Department','0001','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1007','Business Planning Team','1006','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1008','Sales1 Team','1007','Busan Branch Office');
INSERT INTO DEPT2 VALUES ('1009','Sales2 Team','1007','Kyunggi Branch Office');
INSERT INTO DEPT2 VALUES ('1010','Sales3 Team','1007','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1011','Sales4 Team','1007','Ulsan Branch Office');

create table emp2(
empno number primary key,
name varchar2(30) not null,
birthday date,
deptno varchar2(6) not null,
emp_type varchar2(30),
tel varchar2(15),
hobby varchar2(30),
pay number,
position varchar2(30),
pempno number);

INSERT INTO EMP2 VALUES (19900101,'Kurt Russell',TO_DATE('19640125','YYYYMMDD'),'0001','Permanent employee','054)223-0001','music',100000000,'Boss',null);
INSERT INTO EMP2 VALUES (19960101,'AL Pacino',TO_DATE('19730322','YYYYMMDD'),'1000','Permanent employee','02)6255-8000','reading',72000000,'Department head',19900101);
INSERT INTO EMP2 VALUES (19970201,'Woody Harrelson',TO_DATE('19750415','YYYYMMDD'),'1000','Permanent employee','02)6255-8005','Fitness',50000000,'Section head',19960101);
INSERT INTO EMP2 VALUES (19930331,'Tommy Lee Jones',TO_DATE('19760525','YYYYMMDD'),'1001','Perment employee','02)6255-8010','bike',60000000,'Deputy department head',19960101);
INSERT INTO EMP2 VALUES (19950303,'Gene Hackman',TO_DATE('19730615','YYYYMMDD'),'1002','Perment employee','02)6255-8020','Marathon',56000000,'Section head',19960101);
INSERT INTO EMP2 VALUES (19966102,'Kevin Bacon',TO_DATE('19720705','YYYYMMDD'),'1003','Perment employee','052)223-4000','Music',75000000,'Department head',19900101);
INSERT INTO EMP2 VALUES (19930402,'Hugh Grant',TO_DATE('19720815','YYYYMMDD'),'1004','Perment employee','042)998-7005','Climb',51000000,'Section head',19966102);
INSERT INTO EMP2 VALUES (19960303,'Keanu Reeves',TO_DATE('19710925','YYYYMMDD'),'1005','Perment employee','031)564-3340','Climb',35000000,'Deputy Section chief',19966102);
INSERT INTO EMP2 VALUES (19970112,'Val Kilmer',TO_DATE('19761105','YYYYMMDD'),'1006','Perment employee','054)223-4500','Swim',68000000,'Department head',19900101);
INSERT INTO EMP2 VALUES (19960212,'Chris O''Donnell',TO_DATE('19721215','YYYYMMDD'),'1007','Perment employee','054)223-4600',null,49000000,'Section head',19970112);
INSERT INTO EMP2 VALUES (20000101,'Jack Nicholson',TO_DATE('19850125','YYYYMMDD'),'1008','Contracted Worker','051)123-4567','Climb', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000102,'Denzel Washington',TO_DATE('19830322','YYYYMMDD'),'1009','Contracted Worker','031)234-5678','Fishing', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000203,'Richard Gere',TO_DATE('19820415','YYYYMMDD'),'1010','Contracted Worker','02)2345-6789','Baduk', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000334,'Kevin Costner',TO_DATE('19810525','YYYYMMDD'),'1011','Contracted Worker','053)456-7890','Singing', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000305,'JohnTravolta',TO_DATE('19800615','YYYYMMDD'),'1008','Probation','051)567-8901','Reading book', 22000000,'',19960212);
INSERT INTO EMP2 VALUES (20006106,'Robert De Niro',TO_DATE('19800705','YYYYMMDD'),'1009','Probation','031)678-9012','Driking',   22000000,'',19960212);
INSERT INTO EMP2 VALUES (20000407,'Sly Stallone',TO_DATE('19800815','YYYYMMDD'),'1010','Probation','02)2789-0123','Computer game', 22000000,'',19960212);
INSERT INTO EMP2 VALUES (20000308,'Tom Cruise',TO_DATE('19800925','YYYYMMDD'),'1011','Intern','053)890-1234','Golf', 20000000,'',19960212);
INSERT INTO EMP2 VALUES (20000119,'Harrison Ford',TO_DATE('19801105','YYYYMMDD'),'1004','Intern','042)901-2345','Drinking',   20000000,'',19930402);
INSERT INTO EMP2 VALUES (20000210,'Clint Eastwood',TO_DATE('19801215','YYYYMMDD'),'1005','Intern','031)345-3456','Reading book', 20000000,'',19960303);

select * from dept2;
select * from emp2;
COMMIT;
--emp2 ���̺�� dept2 ���̺��� �����Ͽ� �ٹ�����(dept2 ���̺��� area �÷�)�� 'Pohang Main Office'�� ��� ������� ����� �̸�, �μ���ȣ ���

--�ٹ�����(dept2 ���̺��� area �÷�)�� 'Pohang Main Office'��
select dcode from dept2 where area='Pohang Main Office';

select empno,name,deptno from emp2 where deptno in (select dcode from dept2 where area='Pohang Main Office');

--emp2 ���̺��� ��ü ���� �� 'Section head'������ �ּ� �����ں��� ������ ���� ����� �̸��� ����, ������ ���
--emp2 ���̺��� ��ü ���� �� 'Section head' ������ ������?

select * from emp2;
select pay from emp2 where position='Section head';
50000000
56000000
51000000
49000000

-- >ANY �ּҰ�����ū
select name,position,pay from emp2 where pay > any (select pay from emp2 where position='Section head');

-- <ANY �ִ밪���� ����
select name,position,pay from emp2 where pay < any (select pay from emp2 where position='Section head');

-- <all �ּҰ����� ����
select name,position,pay from emp2 where pay < all (select pay from emp2 where position='Section head');

-- >all �ִ밪���� ū
select name,position,pay from emp2 where pay > all (select pay from emp2 where position='Section head');

--exists=�����ϴ�. Ȱ��
select * from dept where deptno=20;

--������� ������ �����ϰ� ������ ���� �� ��.
select * from dept where exists(select * from dept where deptno=50);

--���� �÷� ��������
select * from student;

select grade,max(weight) from student group by grade order by grade;

--�г⺰�� �����԰� ���� ���� ������ �л��� �̸� ������ ���
select grade,name,weight from student where (grade,weight) in (select grade,max(weight) from student group by grade);

--professor, department ���̺��� �� �а����� �Ի����� ���� ������ ������ ���� ��ȣ�� �̸�, �а��� ���
select * from professor;
select * from department;
select deptno from professor group by deptno;

select profno,name,deptno from professor where (deptno,hiredate) in (select deptno,min(hiredate) from professor group by deptno);

--�� �а����� �Ի����� ���� ������ ����
select deptno,min(hiredate) from professor group by deptno order by deptno;

--���� ��ȣ�� �̸�, �а��� ���
select p.profno,p.name,d.dname from professor p , department d where p.deptno = d.deptno;

--�� �ΰ� ����
select p.profno,p.name,d.dname 
from professor p , department d 
where p.deptno = d.deptno 
and (p.deptno,p.hiredate) in (
select deptno,min(hiredate)
from professor 
group by deptno)
order by p.deptno;

--------------------------------------
--����� ����� �ý��� �������� ����� �ڡڡڡڡڡ�
show user;

commit;

show user;
-- ����� �����
create user blue IDENTIFIED by 123456;
-- ���� ����
grant connect, resource, dba to blue;

conn blue;

show user;

--����� ����
drop user blue cascade;

---------------------------
--view Ȱ�� �ڡڡ�
--view�� �������̺��� �ǹ�, ���� ���̺��� �����Ͱ� ��������� �信�� �����Ͱ� ����
--���� ���̺��� �����͸� �ҷ����� ������ ����
--�Ϲ������� �����͸� ��ȸ�� �������� ���

create view aview
as
select empno,ename,hiredate from emp;

select * from aview;

--view ����
drop view aview;

create table o_table(
a number,
b number);

select * from o_table;

--o_table �������� �� �����
create view view1
as
select a,b
from o_table;

--view1�� ������ �Է�
insert into view1 values(1,2);

select * from view1;
select * from o_table;
rollback;

insert into o_table values(1,2);

create view view2
as
select a,b
from o_table
with read only;

insert into view2 values(3,4);--read-only �� ������ ������ ���� �Ұ�
insert into o_table values(7,8);

select * from o_table;
select * from view2;-- �б� ����

create view view3
as
select a,b
from o_table
where a=5-- a�� 5�� ���� ����ϰڴ�.
with check option;

insert into view3 values(3,4);--check option�� �ɸ�
insert into view3 values(5,6);--����

select * from view3;

update view3 set a=50;--check option�� �ɸ�

--view join�� �Բ� Ȱ��
--emp dept ���̺� ���ΰ���� view�� ����

create view empdeptview
as
select e.empno,e.ename,e.job,d.dname
from emp e inner join dept d
on e.deptno=d.deptno
order by e.ename;

select * from empdeptview;
select * from empdeptview where empno=7499;

update emp set job = 'clerk2222' where ename='ADAMS';

--sequence ������ �ڡڡڡڡ� �ڵ�����
create table s_order(
ord_no number(4),
ord_name varchar2(10),
p_name varchar2(20),
p_qty number);

select * from s_order;

insert into s_order values(1,'ja','apple',5);

--������ ���� �� ���̺� ������ �Է¿� Ȱ��
--sequence : ������ ���������� �����ϴ� ������ �ϴ� ��ü
create sequence sorer_ordno_seq
increment by 1
start with 100
maxvalue 110
minvalue 90
cycle
cache 2;

select * from s_order;
insert into s_order values(sorer_ordno_seq.nextval,'ja','apple',5);-- ������ȣ
select sorer_ordno_seq.currval from dual;--���� ������ ��ȣ Ȯ��

/
begin
    for i in 1..100 loop
        insert into s_order values(sorer_ordno_seq.nextval,'ja','apple',5);
    end loop;
end;
/

--�Խ��ǿ� ���̺� ����
create table board10(
num number,--�� ��ȣ
title varchar2(100),--�� ����
memo varchar2(300)); 

--nextval : ���������� ���� ���� �������� �Լ��� �ڵ����� �����ǰ� ��ȯ
--currval : �������� ���簪�� �������� �Լ�
create sequence board10_seq;
/
begin
    for i in 1..100 loop
        insert into board10 values(board10_seq.nextval,'ja','apple');
    end loop;
end;
/
select * from board10;

delete from board10;

--������ �˻�
select * from user_sequences
where sequence_name = 'BOARD10_SEQ';
--������ ����
alter sequence board10_seq
increment by 1;

desc user_sequences;

--������ �ʱ�ȭ
/
create or replace procedure re_seq
(
    SNAME in varchar2
)
is
    VAL number;
begin
   EXECUTE IMMEDIATE 'SELECT ' || SNAME || '.NEXTVAL FROM DUAL ' INTO  VAL;
   EXECUTE IMMEDIATE 'ALTER SEQUENCE ' || SNAME || ' INCREMENT BY -' || VAL || ' MINVALUE 0';
   EXECUTE IMMEDIATE 'SELECT ' || SNAME || '.NEXTVAL FROM DUAL ' INTO VAL;
   EXECUTE IMMEDIATE 'ALTER SEQUENCE ' || SNAME || ' INCREMENT BY 1 MINVALUE 0';    
end;
/
;

select BOARD10_SEQ.currval from dual;

exec re_seq('BOARD10_SEQ');

--������ ����
drop sequence board10_seq;

--* NEXTVAL �� CURRVAL�� ����� �� �ִ� ���
-- - ���������� �ƴ� SELECT��
-- - INSERT���� SELECT��
-- - INSERT���� VALUE��
-- - UPDATE���� SET��

--* NEXTVAL �� CURRVAL�� ����� �� ���� ���
-- - VIEW�� SELECT��
-- - DISTINCT Ű���尡 �ִ� SELECT��
-- - GROUP BY, HAVING, ORDER BY���� �ִ� SELECT��
-- - SELECT, DELETE, UPDATE�� ��������
-- - CREATE TABLE, ALTER TABLE ����� DEFAULT��

 -----------------------------------------------------------------------------230623---------------------------------------------------------------------------------------------
--������ ���뿹��
--addrmemo ���̺� ��ȣ(ano), �̸�(aname), �ּ�(addr), ��ȭ��ȣ(atel)
--��ȣ�� ������ ����(ano_seq)
--������ 5�� ���� �Է�

create table addrmemo(
ano number,
aname varchar2(30),
addr varchar2(200),
atel varchar2(200));

--������ ����
create sequence ano_seq
increment by 1
start with 1
maxvalue 100
minvalue 1
cycle
cache 2;

drop sequence ano_seq;
select * from addrmemo;
insert into addrmemo values(ano_seq.nextval,'ȫ�浿','�����','010-1111-1111');-- ������ȣ
select ano_seq.currval from dual;--���� ������ ��ȣ Ȯ��

/
begin
    for i in 1..5 loop
        insert into addrmemo values(ano_seq.nextval,'ȫ�浿','�����','010-1111-1111');
    end loop;
end;
/

delete from addrmemo;

--������ ���� Ǯ��
CREATE TABLE ADDRMEMO(
ANO NUMBER PRIMARY KEY
,ANAME VARCHAR2(50)
,ADDR VARCHAR2(100)
,ATEL VARCHAR2(50)
);

SELECT *FROM ADDRMEMO;

CREATE SEQUENCE ANO_SEQ
INCREMENT BY 1
START WITH 1
MAXVALUE 999999999
NOCYCLE
CACHE 20;

INSERT INTO ADDRMEMO VALUES(ANO_SEQ.NEXTVAL, 'AAA','����Ư���� ��õ�� ~~', '010-1234-5678');
INSERT INTO ADDRMEMO VALUES(ANO_SEQ.NEXTVAL, 'BBB','����Ư���� ���α� ~~', '010-8888-4234');
INSERT INTO ADDRMEMO VALUES(ANO_SEQ.NEXTVAL, 'CCC','����Ư���� ���۱� ~~', '010-7677-2243');
INSERT INTO ADDRMEMO VALUES(ANO_SEQ.NEXTVAL, 'DDD','��õ������ �ҷ����� ~~', '010-5432-1358');

SELECT *FROM ADDRMEMO;

--�������ν��� precedure pl/sql(procedure language/sql) ����Ŭ���� �����ϴ� ���α׷��� ���
create table board2(
bid number,
btitle varchar2(30),
bcontent varchar2(100),
bwriter varchar2(20),
bstep number);

desc board2;

--������ �����
create sequence board2_seq;

--������ ����
drop sequence board2_seq;
select board2_seq.currval from dual;

select board2_seq.nextval from dual;

--������ �Է�
insert into board2 values(board2_seq.nextval,'big data','������ ����','hong1',3);

select * from board2;
commit;

--���ۿ� �޽��� ��µǵ��� ����
set serveroutput on;

insert into board2 values(board2_seq.nextval,'big data','������ ����','hong1',3);
--�� ������ ���ν��� �����ϸ鼭 ����
/
create or replace procedure brd2_insert(
    title varchar2,bcontent varchar2,writer varchar2,step number
)
is
begin
    insert into board2 values(board2_seq.nextval,title,bcontent,writer,step);
    dbms_output.put_line(title || ',' || writer);
end;
/

select * from board2;

--���ν��� ����
exec brd2_insert('big data2','bbbb','hong2',5);
exec brd2_insert('big data5','bbbb5','hong5',5);

--���ν��� ����
--emp ���̺� ����
select * from emp;
--emp_insert
--8000 n TOM v ANALYST v 7839 n ��¥ 3500 n 500 n 20 n
--INSERT INTO EMP VALUES(7369,'SMITH','CLERK',7902,TO_DATE('17-12-1980','dd-mm-yyyy'),800,NULL,20);
create or replace procedure emp_insert(
    empno number,ename varchar2,job varchar2,mgr number,sal number,comm number,deptno number
)
is
begin
    INSERT INTO EMP VALUES(empno,ename,job,mgr,sysdate,sal,comm,deptno);
--    dbms_output.put_line(title || ',' || writer);
end;
/

exec emp_insert(111, 'hong1', 'hong1',111,111,111,11);
desc emp;

--update : emp_update
--ford sal 10000 ����
update emp set sal=10000 where ename='FORD';

create or replace procedure emp_update(
    selname varchar2
)
is
begin
    update emp set sal=30000 where ename=selname;
    dbms_output.put_line(selname);
end;
/
exec emp_update('FORD')
select * from emp;

--�̼� ����
--emp ���̺� ����
select * from emp;
--emp_insert
--8000 n TOM v  ANALYST v 7839 n  ���ó�¥  3500 n  500 n  20 n
--INSERT INTO EMP VALUES (7499, 'ALLEN',  'SALESMAN',  7698,TO_DATE('20-02-1981', 'DD-MM-YYYY'), 1600,  300, 30);

/
create or replace procedure emp_insert(
    col1 number,col2 varchar2,col3 varchar2,col4 number,col5 number,col6 number,col7 number 
)
is
begin
    insert into emp values(col1,col2,col3,col4,sysdate,col5,col6,col7);
    dbms_output.put_line(col1 || ',' || col2);
end;
/
select * from emp;
exec emp_insert(8001,'tom','analyst',8000,3000,500,20);

--SELECT ���ν��������
select * from employees;

--extract �����ϴ�.
select extract(year from hire_date),hire_date from employees;

--�Ի����� 2003���� �����
select employee_id,last_name,hire_date from employees where extract(year from hire_date)=2003;

--���ν��� �̸� yearselect
--STEP1
/
create or replace procedure yearselect(
    
)
is
begin
    select employee_id,last_name,hire_date from employees where extract(year from hire_date)=2003;
end;
/

--STEP2
/
create or replace procedure yearselect(
    p_year number   
)
is
--���� ����
    id employees.employee_id%type; --employees ���̺��� employee_id�� Ÿ���� �״�� ����ϰڴ�.
    name employees.last_name%type;
    hiredate employees.hire_date%type;
begin
    select employee_id,last_name,hire_date
-- into�� �ʿ�
    into id,name,hiredate
    from employees 
    where extract(year from hire_date)=p_year;
-- ��ũ��Ʈ�� ���
    dbms_output.put_line(id || ':' || name);
end;
/

exec yearselect(2001); -- 1�� ���ڵ� ����
exec yearselect(2003); -- ������ ���ڵ� �б� �Ұ�

select * from employees;

--STEP3
/
create or replace procedure yearselect(
    p_year number   
)
is
--���� ����
    emp employees%ROWTYPE;--���̺� ������ Ÿ�԰�������
--Ŀ�� ���
    CURSOR EMP_CUR IS select employee_id,last_name,hire_date
    from employees 
    where extract(year from hire_date)=p_year;
begin
    LOOP
    
    END LOOP;
-- ��ũ��Ʈ�� ���
    dbms_output.put_line(id || ':' || name);
end;
/

exec yearselect(2001); -- 1�� ���ڵ� ����
exec yearselect(2003); -- ������ ���ڵ� �б� �Ұ�

--STEP4
/
create or replace procedure yearselect(
    P_YEAR NUMBER
)
is
-- ��������
    emp employees%ROWTYPE;--���̺� ������ Ÿ�԰�������
-- Ŀ�����
    CURSOR EMP_CUR IS SELECT EMPLOYEE_ID,LAST_NAME,HIRE_DATE
    FROM EMPLOYEES
    WHERE EXTRACT(YEAR FROM HIRE_DATE)=P_YEAR;
    
begin
-- Ŀ������
    OPEN EMP_CUR;
    LOOP
-- ������ �б�
        FETCH EMP_CUR INTO EMP.EMPLOYEE_ID,EMP.LAST_NAME,EMP.HIRE_DATE;
        EXIT WHEN EMP_CUR%NOTFOUND;
        dbms_output.put_line(EMP.EMPLOYEE_ID || ':' || EMP.LAST_NAME || ':' || EMP.HIRE_DATE); 
    END LOOP;
-- CURSOR CLOSE
    CLOSE EMP_CUR;
end;
/

desc employees;
exec YEARSELECT(2001);
--1�� ���ڵ� ����
exec YEARSELECT(2003); 
--������ ���ڵ� �б� �Ҵ�

--ALTER �ڡڡڡڡ�
--���̺�� ���� ������ ������ �����ϴµ� ���Ǵ� ��ɾ��� (����,����,����,�̸�����)
--������ ������ ���õ� ��ɾ���� ����.

CREATE TABLE USERS(
DEPTNAME VARCHAR2(50) NOT NULL,
USERNAME VARCHAR2(50),
ID NUMBER PRIMARY KEY,
SALARY NUMBER);

INSERT INTO USERS VALUES('������','�迵��',101,5000000);
INSERT INTO USERS VALUES('������','�ڿ���',102,3000000);
INSERT INTO USERS VALUES('������','���λ�',103,6000000);
INSERT INTO USERS VALUES('������','�ֿ���',104,2000000);
INSERT INTO USERS VALUES('������','���ѹ�',105,5000000);

--���̺� �̸� ����
ALTER TABLE USERS RENAME TO USERNAME;
ALTER TABLE USERNAME RENAME TO USERS;

SELECT * FROM USERNAME;
SELECT * FROM USERS;

--Į�� �߰�
ALTER TABLE USERS ADD(ADDR VARCHAR2(1000));

DESC USERS;

ALTER TABLE USERS ADD (POINT NUMBER);

--Į�� ����
ALTER TABLE USERS DROP COLUMN ADDR;
ALTER TABLE USERS DROP COLUMN POINT;

--Į�� �̸�����
--SALARY > SAL
ALTER TABLE USERS RENAME COLUMN SALARY TO SAL;

--SAL > PAY
ALTER TABLE USERS RENAME COLUMN SAL TO PAY;
ALTER TABLE USERS RENAME COLUMN PAY TO SALARY;
SELECT * FROM USERS;
DESC USERS;

--Į�� Ÿ�Ժ��� Ÿ���� VARCHAR2���� NUMBER�� �ٲ� �� �ȿ� �����Ͱ� ������Ѵ�.
ALTER TABLE USERS MODIFY SALARY VARCHAR2(30);
ALTER TABLE USERS MODIFY SALARY NUMBER;

--USERNAME�� Ÿ�Ժ��� ���� Ÿ�������� ũ�⸦ ������ �� �����Ͱ� �־ ���� ����
ALTER TABLE USERS MODIFY USERNAME VARCHAR2(60);
SELECT * FROM USERS;
DESC USERS;
-----------------------------------------------------------------------------------------
--�������� ����
CREATE TABLE SALGRADE
        (GRADE NUMBER,
         LOSAL NUMBER,
         HISAL NUMBER);

INSERT INTO SALGRADE VALUES (1,  700, 1200);
INSERT INTO SALGRADE VALUES (2, 1201, 1400);
INSERT INTO SALGRADE VALUES (3, 1401, 2000);
INSERT INTO SALGRADE VALUES (4, 2001, 3000);
INSERT INTO SALGRADE VALUES (5, 3001, 9999); 
COMMIT;
SELECT * FROM SALGRADE;

--�������� FROM���� ���
SELECT * FROM EMP WHERE DEPTNO=10;

SELECT E10.EMPNO,E10.ENAME,E10.DEPTNO
FROM (SELECT * FROM EMP WHERE DEPTNO=10) E10;

--JOIN ����
SELECT E10.EMPNO,E10.ENAME,E10.DEPTNO,D.DNAME,D.LOC
FROM (SELECT * FROM EMP WHERE DEPTNO=10) E10,
(SELECT * FROM DEPT) D
WHERE E10.DEPTNO = D.DEPTNO;

--SELECT ���� ����ϱ�
SELECT GRADE FROM SALGRADE
WHERE E.SAL BETWEEN LOSAL AND HISAL;

--EMP���̺� �޿��� SALGRADE�� �޿��������� ���� GRADE�� �����ؼ� EMP���̺��� �޿��� GRADE�� ���
SELECT EMPNO,ENAME,(SELECT GRADE FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE
FROM EMP E ORDER BY SALGRADE;

SELECT * FROM SALGRADE;
SELECT * FROM EMP;

-----------------------------------------------------------------------------230626---------------------------------------------------------------------------------------------
-- ���ν���2 if��
SET SERVEROUTPUT ON;-- ���ν��� ����� ���� ����� ����ϱ����� �ϴ� ��ɾ� �⺻���� off
/
declare--=�����ϴ�
    vnum number:=15;
begin
    if mod(vnum,2) = 1 then
        dbms_output.put_line(vnum || '�� Ȧ��');
    else
        dbms_output.put_line(vnum || '�� ¦��');
    end if;
end;
/

--case��
/
declare
    vnum number:=80;
begin
    case
        when vnum>=90 then dbms_output.put_line(vnum || ' : A���');
        when vnum>=80 then dbms_output.put_line(vnum || ' : B���');
        when vnum>=70 then dbms_output.put_line(vnum || ' : C���');
        when vnum>=60 then dbms_output.put_line(vnum || ' : D���');
        
    end case;
end;
/

--loop�� exitŰ���尡 �ִ�.
/
declare
    vnum number:=4;
begin
    loop
           dbms_output.put_line('���� vnum : ' || vnum);
           vnum := vnum + 1;-- :=�� ���� ������
           exit when vnum > 5;
    end loop;
end;
/

--while�� exitŰ���尡 ����.
/
declare
    vnum number:=0;
begin
    while vnum < 5 loop
        dbms_output.put_line('���� while vnum : ' || vnum);
        vnum := vnum + 1;
    end loop;
end;
/

--for�� vnum ������ ����.
/
declare
    
begin
    for i in 0..5 loop
        dbms_output.put_line('���� for vnum : ' || i);
    end loop;
end;
/

--����ó�� vwrong�� numberŸ������ �����߱⶧���� dname�� varchar2Ÿ���̶� �����ϸ� ���ܹ߻�
desc dept;
/
declare
    vwrong number;
begin
    select deptno into vwrong
    from dept where deptno = 10;
    dbms_output.put_line('���� �߻��ϰ� ���� �ɱ��?');
exception
    when value_error then
            dbms_output.put_line('���� �߻�');        
end;
/

--join ����
create table student2(
no number,
name varchar2(15),
subject_id number,
score number);

create table grade(
grade char(4),
min_score number,
max_score number);

create table subject(
subject_id number,
subject_name varchar2(30));

insert into subject values(10,'Computer Enginnerring');
insert into subject values(20,'Music');
insert into subject values(30,'English');
insert into subject values(40,'History');
insert into subject values(50,'Math');
commit;

insert into student2 values(1000,'James',10,98);
insert into student2 values(1001,'Ford',10,91);
insert into student2 values(1002,'Allen',20,89);
insert into student2 values(1003,'Steve',30,83);
insert into student2 values(1004,'Miller',40,78);
commit;

insert into grade values('A+',96,100);
insert into grade values('A0',90,95);
insert into grade values('B+',86,89);
insert into grade values('B0',80,85);
insert into grade values('C+',76,79);
insert into grade values('C0',70,75);
insert into grade values('D+',66,69);
insert into grade values('D0',60,65);
insert into grade values('F',0,64);
commit;

select * from student2;
select * from grade;
select * from subject;

--join ó��
--� ���� equip join ���̺� 2��
select s.name,b.subject_name from student2 s join subject b on s.subject_id = b.subject_id;

--3�� ���̺� �����ؼ� �������� grade ���
--ansi join
select s.name,b.subject_name,s.score,g.grade from student2 s join subject b on s.subject_id = b.subject_id
join grade g on s.score between g.min_score and g.max_score;

--Oracle join
select s.name,b.subject_name,s.score,g.grade from student2 s , subject b , grade g where s.subject_id = b.subject_id
and s.score between g.min_score and g.max_score;

--self join
--smith�� ����̸��� ford / joinó��
select * from emp;

select e1.empno,e1.ename,e2.ename managername from emp e1 , emp e2 where e1.mgr = e2.empno order by e1.empno;

--trigger ��Ƽ�ó�� ��ȣ�� �����ϰ� �� ��ȣ�� �����ؼ� �����ϴ� ����
create table test01(
no number not null,
name varchar2(10),
a number,
b number);

insert into test01 values(1,'A',10,20);

--test01�� ������ ������ test02 ���̺��� ����ڴ�.
create table test02
as
select * from test01;

select * from test01;
select * from test02;
commit;

--insert Ʈ���� �����
--Ʈ���Ŷ�? �����ͺ��̽� �̺�Ʈ�� �����Ͽ� ����Ǵ� ���α׷� �����̴�.
--�ֿ� ��� ������ ���̺� �������� ���Ἲ ����,�����ͺ��̽� ������ �ڵ�ȭ�̴�.
--DML Ʈ���Ŷ�? DML�� (insert,update,delete)�� ���̺� �ϳ� �̻��� �����Ϳ� ������ ��ĥ �� �ڵ����� ����Ǵ� Ʈ�����̴�.
--DML Ʈ���� Ư¡ 
--1. �ڵ����� ����Ǹ� �������δ� ���� �Ұ�
--2. � ���ۿ��� ����Ǵ��� �����ؾ��Ѵ�.
--3. �۵��� �Ͼ Ʈ���� ��� ���̺� ���ؼ��� Ʈ���� ������ ������ �� ����.
--4. BEFORE, AFTER �� ���� Ʈ���Ű� �ִ�.
--5. Ʈ����� �Ϻη� ó���ȴ�. (COMMIT,ROLLBACK,SAVEPOINT ���� ���� �� ��)
/
create or replace trigger in_test02
    after insert on test01
    for each row
declare
--��������
begin
    insert into test02 values(:new.no,:new.name,:new.a,:new.b);    
end;
/

select * from test01;
select * from test02;

insert into test01 values(1,'A',10,20);--Ʈ���� in_test02�� test01�� insert ��ȣ�� �޾� ����
insert into test01 values(300,'A',100,200);--Ʈ���� in_test02�� test01�� insert ��ȣ�� �޾� ����

--delete trigger �����
/
create or replace trigger del_test02
    after delete on test01
    for each row
declare
--��������
begin
    delete test02 where no=:old.no;
end;
/

delete test01 where no=1;

--update trigger �����
/
create or replace trigger up_test02
    after update on test01
    for each row
declare
--��������
begin
    update test02 set no=:new.no where no=:old.no;
end;
/

delete test01 where no=1;

update test01 set no=50 where no=1;

select * from test01;
select * from test02;

--Ʈ���� ����
/
CREATE OR REPLACE TRIGGER T_INDELUP_TEST02
    AFTER INSERT OR DELETE OR UPDATE ON TEST01
    FOR EACH ROW
DECLARE
--��������
BEGIN
    IF INSERTING THEN
        INSERT INTO TEST02 VALUES(:NEW.NO,:NEW.NAME,:NEW.A,:NEW.B);
    ELSIF DELETING THEN
        DELETE TEST02 WHERE NO=:OLD.NO;
    ELSIF UPDATING THEN
        UPDATE TEST02 SET NO=:NEW.NO WHERE NO=:OLD.NO;
    END IF;
END;
/
drop trigger del_test02;
drop trigger in_test02;
drop trigger up_test02;

insert into test01 values(1,'A',10,20);--Ʈ���� in_test02�� test01�� insert��ȣ�� �޾� ����
insert into test01 values(300,'A',100,200);
delete from test01;
delete from test02;
select * from test01;
select * from test02;

delete test01 where no=1;
delete test01 where no=300;

update test01
set no=30
where no=50;

--index ������ ������� ȿ�������� �˻� ����
--������ ���� �ε����� �����ϸ� ���ø� �������� �� �ǿ��� ��ģ��.
select * from user_indexes;
select rowid,empno,ename from emp;

select * from employees;
select * from user_indexes
where table_name='EMPLOYEES';

--����͸� ����
alter index EMP_EMP_ID_PK monitoring usage;

--��뿩�� Ȯ��
select index_name,monitoring,used from v$object_usage where index_name = 'EMP_EMP_ID_PK';

--index �뷱�� Ȯ��
create table i_test6(
no number);

select * from i_test6 order by no;
/
begin
    for i in 1..10000 loop
        insert into i_test6 values(i);
    end loop;
    commit;
end;
/

--index ����
create index idx_test6_no
on i_test6(no);

select * from user_indexes where table_name='I_TEST6';

--�뷱�� ��ȸ
select * from index_stats;
desc index_stats;

--�м� ���
analyze index IDX_TEST6_NO validate structure;
select del_lf_rows,lf_rows_len from index_stats;

--�뷱�� ��ȸ
select (del_lf_rows_len/lf_rows_len)*100 balance from index_stats;
--0�� �������� ����� ����

--�Ϻ� ������ ����
delete from i_test6 where no between 3000 and 6000;

select count(*) from i_test6;
commit;

--�뷱�� ��ȸ
select (del_lf_rows_len/lf_rows_len)*100 balance from index_stats;

--�뷱�� �ʱ�ȭ
alter index idx_test6_no rebuild;

select count(*) from bigemp;

--���� �׽�Ʈ ���̺� �غ�
select * from bigemp order by dbms_random.value;

create table emp10
as
select * from bigemp order by dbms_random.value;

create table emp_idx
as
select * from bigemp order by dbms_random.value;

select count(*) from emp10;--index ���� ���̺�
select count(*) from emp_idx;--index �߰��� ���̺�

--emp_idx ���̺� index �߰��ϱ�
create index idx_empidx_empno on emp_idx(emp_no);

--���̺� index �ִ��� ��ȸ
select * from user_indexes where table_name='EMP10';
select * from user_indexes where table_name='EMP_IDX';

--���� ��
--���� index�ִ� ���̺��� index ����� �� ���� ã�´�.
select * from emp10 where emp_no<10100;--0.004��
select * from emp_idx where emp_no<10100;--0.001~2��

select * from emp10 where emp_no=11100;--0.012��
select * from emp_idx where emp_no=11100;--0.005��

--LOCK ��� Ȯ���ϱ�
commit;
select * from emp;

--UPDATE ����
update emp set ename = 'ALLEN' where empno=7499;

commit;
-----------------------------------------------------------------------------230627---------------------------------------------------------------------------------------------
--���� ������ �����
--���� �ѹ� ���� (���, ����)
select dbms_random.random from dual;

--���� �ѹ� ���� (0~1)
select dbms_random.value from dual;

--���� �ѹ� ���� (0~1000)
select dbms_random.value(1,1000) from dual;
select round(dbms_random.value(1,1000),0) "������ ������" from dual;

--���� ���� ���� (�빮��)
select dbms_random.string('U',10) from dual;-- U�� �빮��, 10�� ����

--���� ���� ���� (�ҹ���)
select dbms_random.string('L',10) from dual;-- l�� �ҹ���

--���� ���� ���� (��,�ҹ���)
select dbms_random.string('A',10) from dual;-- A�� ��,�ҹ���

--���� ���� ���� (����,���� �빮��)
select dbms_random.string('X',10) from dual;-- X�� ����,���� �빮��

--���� ���� ���� (��°����� ����)
select dbms_random.string('P',10) from dual;-- P�� Ű���忡 �ִ� ���� ����

create table example(
x number,
y varchar2(2000));

/
begin
    for i in 1..1000 loop
        insert into example values(i,rpad(dbms_random.random,5,'*'));
    end loop;
end;
/

select * from example;
select count(*) from example;

--�ǹ��ִ� ���̺� �����
create table random5(
cola varchar2(20),
colb number,
colc number,
cold varchar2(30),
cole varchar2(30),
colf varchar2(30),
colg number,
colh varchar2(30),
coli varchar2(30));

select * from random5;

--step1
/
declare
    type tbl_ins is table of random5%rowtype index by binary_integer;--random5%type�� random5 ���̺��� Ÿ���� �״�� ����ϰڴ�.
    w_ins tbl_ins;
begin
    
    for i in 1..14000 loop
        w_ins(i).cola:=i;
        w_ins(i).colb:=300000;
        w_ins(i).colc:=99;
        w_ins(i).cold:='ABC' || dbms_random.string('x',10);
        w_ins(i).cole:='EEEEEEEEEEEEEEEEE';
        w_ins(i).colf:='FFFFFFFFFFFFFFFFFFFF';
        w_ins(i).colg:=9999999;
        w_ins(i).colh:='HHHHHHHHHHHHHHH';
        w_ins(i).coli:='IIIIIIIIIIIIIIIIIIIIIII';
    end loop;
    forall i in 1..14000 insert into random5 values w_ins(i);
    commit;
    
end;
/

select count(*) from random5;
select * from random5;
delete from random5;
commit;

--step2
/
declare
    type tbl_ins is table of random5%rowtype index by binary_integer;--random5%type�� random5 ���̺��� Ÿ���� �״�� ����ϰڴ�.
    w_ins tbl_ins;
begin
    
    for i in 1..14000 loop
        w_ins(i).cola:=i;
        w_ins(i).colb:=300000;
        w_ins(i).colc:=99;
        w_ins(i).cold:=to_date(round(dbms_random.value(1,28))
                                        ||'-'|| round(dbms_random.value(1,12))   
                                        ||'-'|| round(dbms_random.value(1900,2022)),
                                        'DD-MM-YYYY');
        w_ins(i).cole:='EEEEEEEEEEEEEEEEE';
        w_ins(i).colf:='FFFFFFFFFFFFFFFFFFFF';
        w_ins(i).colg:=9999999;
        w_ins(i).colh:='HHHHHHHHHHHHHHH';
        w_ins(i).coli:='IIIIIIIIIIIIIIIIIIIIIII';
    end loop;
    forall i in 1..14000 insert into random5 values w_ins(i);
    commit;
    
end;
/

select count(*) from random5;
select * from random5;
delete from random5;
commit;

----------------------------------------------------------
create table sale2(
cola number,--�Ǹű���
colb date,--�Ǹų�¥
colc number,--���� ����(���� ��� û����1~û����5)
cold number,--�ǸŰ���
cole number);--�Ǹŷ�

create index idx_cola on sale2(cola);

--step3
/
declare
    type tbl_ins is table of sale2%rowtype index by binary_integer;--sale2%type�� random5 ���̺��� Ÿ���� �״�� ����ϰڴ�.
    w_ins tbl_ins;
begin
    
    for i in 1..14000 loop
        w_ins(i).cola:=i;
        w_ins(i).colb:=to_date(round(dbms_random.value(1,28))
                                        ||'-'|| round(dbms_random.value(1,12))   
                                        ||'-'|| round(dbms_random.value(1900,2022)),
                                        'DD-MM-YYYY');
        w_ins(i).colc:=round(dbms_random.value(1,5));
        w_ins(i).cold:=round(dbms_random.value(10000,20000));
        w_ins(i).cole:=round(dbms_random.value(5,10));
    end loop;
    forall i in 1..14000 insert into sale2 values w_ins(i);
    commit;
    
end;
/

select count(*) from sale2;
select * from sale2;
delete from sale2;
commit;

--���ó��
select colc,sum(cold)*sum(cole) "�ǸŰ��� ����" from sale2 group by colc order by colc;

select colc,round(sum(cold)*(sum(cole)/1000000)) "Total Price(100�� ����)" from sale2 group by colc order by colc;

--decode �Լ� ����
select decode(colc,1,'û����1',2,'û����2',3,'û����3',4,'û����4',5,'û����5') goods, 
round(sum(cold)*(sum(cole)/1000000)) "Total Price(100�� ����)" from sale2 group by colc order by goods;

--backup cmdâ���� �ؾ��ϴ� �۾��̴�.
--hr���� �ֹܼ��
C:\backuphr>exp userid=hr/123456@xe file=c:\backuphr\hralltable.dump
C:\backuphr>imp hr/123456@xe file=c:\backuphr\hralltable.dump--����

--Ư�����̺� ���
C:\backuphr>exp userid=hr/123456@xe file=c:\backuphr\hrbigemptable.dump tables=bigemp
C:\backuphr>imp hr/123456@xe file=c:\backuphr\hrbigemptable.dump--����

--���������̺� ���
C:\backuphr>exp userid=hr/123456@xe file=c:\backuphr\hr3table.dump tables=(bigemp,dept,emp)
C:\backuphr>imp userid=hr/123456@xe file=c:\backuphr\hr3table.dump tables=(bigemp,dept,emp)--����

--�ļ��� ���̺� �����ϴ� ��
select 'drop table '|| table_name || ' cascade constraints;' from user_tables;

drop table LOCATIONS cascade constraints;
drop table DEPARTMENTS cascade constraints;
drop table JOBS cascade constraints;
drop table EMPLOYEES cascade constraints;
drop table JOB_HISTORY cascade constraints;
drop table BOARD1 cascade constraints;
drop table STUDENTBOARD cascade constraints;
drop table SIZEINFO cascade constraints;
drop table EPL cascade constraints;
drop table BOOKINFO cascade constraints;
drop table MEMBER cascade constraints;
drop table RESERVES cascade constraints;
drop table BOATS cascade constraints;
drop table ADDR cascade constraints;
drop table SAMPLE cascade constraints;
drop table PROFESSOR cascade constraints;
drop table DEPARTMENT cascade constraints;
drop table STUDENT cascade constraints;
drop table REGIONS3 cascade constraints;
drop table COUNTRIES3 cascade constraints;
drop table TBL1 cascade constraints;
drop table TBL2 cascade constraints;
drop table STADIUM cascade constraints;
drop table TEAM cascade constraints;
drop table PLAYER cascade constraints;
drop table ONE cascade constraints;
drop table TWO cascade constraints;
drop table DEPT2 cascade constraints;
drop table EMP2 cascade constraints;
drop table O_TABLE cascade constraints;
drop table S_ORDER cascade constraints;
drop table BOARD10 cascade constraints;
drop table BOARD2 cascade constraints;
drop table USERS cascade constraints;
drop table SALGRADE cascade constraints;
drop table STUDENT2 cascade constraints;
drop table GRADE cascade constraints;
drop table SUBJECT cascade constraints;
drop table TEST01 cascade constraints;
drop table TEST02 cascade constraints;
drop table I_TEST6 cascade constraints;
drop table EMP10 cascade constraints;
drop table EMP_IDX cascade constraints;
drop table EXAMPLE cascade constraints;
drop table RANDOM5 cascade constraints;
drop table SALE2 cascade constraints;
drop table ADDRMEMO cascade constraints;
drop table BIGEMP cascade constraints;
drop table DEPT cascade constraints;
drop table EMP cascade constraints;
drop table COUNTRIES cascade constraints;

--check option gender �ʵ忣 ��,�� ���� �ٸ� �ɼ��� �� �� ����.
create table chtable(
name varchar2(10),
gender char(3) constraint emp_gender check(gender in('��','��')));

select * from chtable;

insert into chtable values('ȫ�浿','��');

--check option ������ ����
create table chtable2(
name varchar2(10),
score number constraint chtable2_chk check(score between 50 and 100));

insert into chtable2 values('hong',30);

select * from chtable2;
---------------����Ŭ ����---------------
============================================================================================================================================================================
--<<����Ŭ����1>>

-- 1�� �μ���ȣ�� 10���� �μ��� ��� �� �����ȣ, �̸�, ������ ����϶�.
select * from emp;
select empno,ename,sal,deptno from emp where deptno=10;

-- 2�� �����ȣ�� 7369�� ��� �� �̸�, �Ի���, �μ���ȣ�� ����϶�.
select ename,hiredate,deptno from emp where mgr='7369';

-- 3�� �̸��� ALLEN�� ����� ��� ������ ����϶�.
select * from emp where ename='ALLEN';

-- 4�� �Ի����� 83/01/12�� ����� �̸�, �μ���ȣ, ������ ����϶�.
select ename,empno,sal from emp where hiredate='83-01-12';

-- 5�� ������ MANAGER�� �ƴ� ����� ��� ������ ����϶�.
select * from emp where job is not 'MANAGER';

-- 6�� �Ի����� 81/04/02 ���Ŀ� �Ի��� ����� ������ ����϶�.
select * from emp where hiredate>'81-04-02';

-- 7�� �޿��� $800 �̻��� ����� �̸�, �޿�, �μ���ȣ�� ����϶�.
select ename,sal,deptno from emp where sal>800;

-- 8�� �μ���ȣ�� 20�� �̻��� ����� ��� ������ ����϶�.
select * from emp where deptno>=20 order by deptno;

-- 9�� �̸��� K�� �����ϴ� ������� ���� �̸��� ���� ����� ��� ������ ����϶�.
select * from emp where ename > 'K&';

-- 10�� �Ի����� 81/12/09 ���� ���� �Ի��� ������� ��� ������ ����϶�.
select * from emp where hiredate<'81-12-09';

-- 11�� �Ի��ȣ�� 7698���� �۰ų� ���� ������� �Ի��ȣ�� �̸��� ����϶�.
select empno,ename from emp where 7698>=empno;

-- 12�� �Ի����� 81/04/02���� �ʰ� 82/12/09���� ���� ����� �̸�, ����, �μ���ȣ�� ����϶�.
select ename,sal,deptno,hiredate from emp where '82-12-09'>hiredate and '81-04-02'<hiredate order by hiredate;

-- 13�� �޿��� $1,600���� ũ�� $3,000���� ���� ����� �̸�, ����, �޿��� ����϶�.
select ename,job,sal from emp where sal>1600 and sal<3000;

-- 14�� �����ȣ�� 7654�� 7782 ���� �̿��� ����� ��� ������ ����϶�.
select * from emp where empno not between 7654 and 7782;

-- 15�� �̸��� B�� J������ ��� ����� ������ ����϶�.
select * from emp where ename between 'B%' and 'J%';

-- 16�� �Ի����� 81�� �̿��� �Ի��� ����� ��� ������ ����϶�.
select * from emp where hiredate not between to_date('1981-01-01','YY-MM-DD') and to_date('1981-12-31','YY-MM-DD');

-- 17�� ������ MANAGER�� SALESMAN�� ����� ��� ������ ����϶�.
select * from emp where job in ('MANAGER','SALESMAN');

-- 18�� �μ���ȣ�� 20, 30���� ������ ��� ����� �̸�, �����ȣ, �μ���ȣ�� ����϶�.
select ename,empno,deptno from emp where not deptno in ('20','30');

-- 19�� S�� �����ϴ� ����� �����ȣ, �̸�, �Ի���, �μ���ȣ�� ����϶�.
select empno,ename,hiredate,deptno from emp where ename like 'S%';

-- 20�� �Ի����� 81�⵵�� ����� ��� ������ ����϶�.
select * from emp where hiredate between to_date('1981-01-01','YY-MM-DD') and to_date('1981-12-31','YY-MM-DD');

-- 21�� �̸� �� S�ڰ� �� �ִ� ����� ��� ������ ����϶�.
select * from emp where ename like '%S%'; 

-- 22�� �̸��� S�� �����ϰ� ������ ���ڰ� T�� ����� ��� ������ ����϶�(��, �̸��� ��ü 5�ڸ��̴�.)
select * from emp where ename like 'S___T';

-- 23�� ù ��° ���ڴ� �������, �� ��° ���ڰ� A�� ����� ������ ����϶�.
select * from emp where ename like '_A%';

-- 24�� Ŀ�̼��� NULL�� ����� ������ ����϶�.
select * from emp where comm is null;

-- 25�� Ŀ�̼��� NULL�� �ƴ� ����� ������ ����϶�.
select * from emp where comm is not null;

-- 26�� �μ��� 30�� �μ��̰� �޿��� $1,500 �̻��� ����� �̸�, �μ�, ������ ����϶�.
select ename,empno,sal from emp where deptno = 30 and sal >= 1500;

-- 27�� �̸��� ù ���ڰ� K�� �����ϰų� �μ���ȣ�� 30�� ����� �����ȣ, �̸�, �μ���ȣ�� ����϶�.
select empno,ename,deptno from emp where ename like 'K%' or deptno=30;

-- 28�� �޿��� $1500 �̻��̰� �μ���ȣ�� 30���� ��� �� ������ MANAGER�� ����� ������ �߷��϶�.
select * from emp where sal>=1500 and deptno=30 and job='MANAGER'; 

-- 29�� �μ���ȣ�� 30�� ��� �� �����ȣ�� SORT.
select * from emp where deptno=30 order by empno;

-- 30�� �޿��� ���� ������ SORT�϶�.
select * from emp order by sal desc;

-- 31�� �μ���ȣ�� ASCENDING SORT  �� �� �޿��� ���� ��� ������ ����϶�.
select deptno,sal from emp group by deptno,sal order by deptno asc, sal desc;
select * from emp order by deptno asc, sal desc;

-- 32�� �μ� ��ȣ�� DESCENDING SORT�ϰ�, �̸� ������ ASCENDING SORT, �޿������� DESCENDING SORT �϶�.
select deptno,ename,sal from emp order by deptno desc, ename asc, sal desc;

-- 33�� EMP TABLE ���� �̸�, �޿�, Ŀ�̼� �ݾ�, �Ѿ� (SAL + COMM) �� ���Ͽ� �Ѿ��� ���� ������ ����϶�. 
-- �� Ŀ�̼��� NULL�� ����� �����Ѵ�.
select ename,sal,comm,sal+nvl(comm,0) "�Ѿ�" from emp;

-- 34�� 10�� �μ��� ��� ����鿡�� �޿��� 13%�� ���ʽ��� �����ϱ�� �Ͽ���. �̸�, �޿�, ���ʽ� �ݾ�, �μ���ȣ�� ����϶�.
select ename,sal,sal*0.13 bonus,deptno from emp where deptno=10;

-- 35�� 30�� �μ��� ������ ����Ͽ� �̸�, �μ���ȣ, �޿�, ������ ����϶�.
-- �� ������ �޿��� 150%�� ���ʽ��� �����Ѵ�.
select ename,deptno,sal,sal*0.15+(sal*12) "����" from emp where deptno=30;

-- 36�� �μ���ȣ�� 20�� �μ��� �ð��� �ӱ��� ����Ͽ� ����϶�.
-- �� 1���� �ٹ��ϼ��� 12���̰�, 1�� �ٹ��ð��� 5�ð��̴�.
-- ��¾���� �̸�, �޿�, �ð��� �ӱ�(�Ҽ����� ù ��° �ڸ����� �ݿø�)�� ����϶�.
select ename,sal,round((sal/12)/5,0) "�ð��� �ӱ�" from emp where deptno=20;

-- 37�� �޿��� $1,500 ���� $ 3,000 ������ ����� �޿��� 15%�� ȸ��� �����ϱ�� �Ͽ���.
-- �̸�, �޿�, ȸ��(�Ҽ��� �� �ڸ����� �ݿø�) ����϶�.
select ename,sal,round(sal*0.15,1) "ȸ��" from emp where sal>=1500 and sal<=3000;

-- 38�� �޿��� $2,000 �̻��� ��� ����� �޿��� 15%�� �溸��� ����� �Ͽ���.
-- �̸�, �޿�, ������ �� ����϶�.
select ename,sal,sal*0.15 "������" from emp where sal>=2000;

-- 39�� �Ի��� ���� ���ݱ����� ��¥���� ����϶�. �μ���ȣ, �̸�, �Ի���, ������, 
-- �ٹ��ϼ�(�Ҽ��� ���� ����), �ٹ����, �ٹ�����(30�� ����), �ٹ��ּ��� ����϶�.
select deptno,ename,hiredate,sysdate,trunc((sysdate-hiredate),0) "�ٹ��ϼ�",
trunc((sysdate-hiredate)/365,0) "�ٹ����",trunc((sysdate-hiredate)/30,0) "�ٹ�����",
trunc((sysdate-hiredate)/4,0) "�ٹ��ּ�" from emp;

-- 40�� ��� ����� �Ǽ��ɾ��� ����Ͽ� ����϶�. 
-- �� �޿��� ���� ������ �̸�, �޿�, �Ǽ��ɾ��� ����϶�
-- (�Ǽ��ɾ��� �޿��� ���� 10%�� ������ �A �ݾ�)
select ename,sal,sal-(sal*0.1) "�Ǽ��ɾ�" from emp order by sal desc;

-- 41�� �Ի��Ϸκ��� 90���� ���� ���� ����̸�, �Ի���, 90�� ���� ��, �޿��� ����϶�.
select ename,hiredate,hiredate+90 "90�� ���� ��",sal from emp;

-- 42�� �Ի��Ϸ� ���� 6������ ���� ���� �Ի���, 6���� ���� ��¥, �޿��� ����϶�.
select hiredate,add_months(hiredate,6) "6���� ���� ��¥",sal from emp;

-- 43�� �Ի��� ���� �ٹ��ϼ��� ����Ͽ� �μ���ȣ, �̸�, �ٹ��ϼ��� ����϶�.
select deptno,ename,last_day(hiredate)-hiredate "�ٹ��ϼ�" from emp;

-- 44�� ��� ����� 60���� ���� ���� MONDAY �� �� �� , �� ��, �� �� �ΰ��� ���Ͽ�
-- �̸�, �Ի���, MONDAY�� ����϶�.
select ename,hiredate,next_day((hiredate+60),'������') MONDAY from emp;
 
-- 45�� �Ի��Ϸκ��� ���ñ����� �ϼ��� ���Ͽ� �̸�, �Ի���, �ٹ��ϼ��� ����϶�.
select ename,hiredate,trunc(sysdate-hiredate,0) workday from emp;

-- 46�� �Ի����� 1996�� 5�� 14�� �� ���·� �̸�, �Ի����� ����϶�.
select ename, to_char(hiredate,'YYYY"��"MM"��"DD"��"') "�Ի���" from emp;

-- 47�� �̸��� ���ڼ��� 6�� �̻��� ����� �̸��� �տ��� 3�ڸ��� ���Ͽ� �ҹ��ڷ� �̸����� ����϶�.
select substr(lower(ename),1,3) "�̸�" from emp where length(ename)>=6;

-- 48�� 10�� �μ� ������ ���, �ְ�, ����, �ο����� ���Ͽ� ����϶�.
select trunc(avg(sal),0) avg,max(sal) max,min(sal) min,count(sal) "�ο� ��" from e mp where deptno=10;

-- 49�� �� �μ��� �޿��� ���, �ְ�, ����, �ο����� ���Ͽ� ����϶�.
select deptno,trunc(avg(sal),0) avg ,max(sal) max ,min(sal) min ,count(sal) count from emp group by deptno;

-- 50�� �� �μ��� ���� ������ �ϴ� ����� �ο����� ���Ͽ� �μ���ȣ, ������, �ο����� ����϶�.
select deptno,job,count(*) "�ο� ��" from emp group by deptno,job order by deptno;

-- 51�� ���� ������ �ϴ� ����� ���� 4�� �̻��� ������ �ο����� ����϶�.
select job,count(job) from emp group by job having count(job) >= 4;

-- 52�� �� �μ��� ��� ����, ��ü ����, �ְ� ����, ���� ���� �� ���Ͽ� ��� ������ ���� ������ ����϶�.
select deptno,trunc(avg(sal)) avg,sum(sal),max(sal),min(sal) from emp group by deptno order by avg desc;

-- 53�� EMP�� DEPT TABLE �� JOIN�Ͽ� �μ���ȣ, �μ���, �̸�, �޿��� ����϶�.
select e.deptno,d.dname,e.ename,e.sal from emp e inner join dept d on e.deptno = d.deptno;

-- 54�� �̸��� ALLEN�� ����� �μ����� ����϶�.
select e.deptno,e.ename,d.dname from emp e inner join dept d on e.deptno = d.deptno where e.ename='ALLEN';

-- 55�� DEPT TABLE �� �ִ� ��� �μ��� ����ϰ�, EMP  TABLE �� �ִ� DATA�� JOIN�Ͽ� 
-- ��� ����� �̸�, �μ���ȣ, �μ���, �޿��� ����϶�.
select e.ename,e.deptno,d.dname,e.sal from emp e full outer join dept d on e.deptno = d.deptno order by deptno;

--����
-- 1�� �μ���ȣ�� 10���� �μ��� ��� �� �����ȣ, �̸�, ������ ����϶�.

SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
SAL AS ����
FROM EMP
WHERE DEPTNO = 10;

-- 2�� �����ȣ�� 7369�� ��� �� �̸�, �Ի���, �μ���ȣ�� ����϶�.

SELECT 
ENAME AS �̸�,
HIREDATE AS �Ի���,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE EMPNO = 7369;


-- 3�� �̸��� ALLEN�� ����� ��� ������ ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE ENAME = 'ALLEN';


-- 4�� �Ի����� 83/01/12�� ����� �̸�, �μ���ȣ, ������ ����϶�.
SELECT 
ENAME AS �̸�,
DEPTNO AS �μ���ȣ,
SAL AS �޿�
FROM EMP
WHERE HIREDATE = '80/12/17';

--ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY/MM/DD';

--SELECT 
--ENAME AS �̸�,
--DEPTNO AS �μ���ȣ,
--SAL AS �޿�
--FROM EMP
--WHERE HIREDATE = '1983/01/12';

-- 5�� ������ MANAGER�� �ƴ� ����� ��� ������ ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE JOB <> 'MANAGER';


-- 6�� �Ի����� 81/04/02 ���Ŀ� �Ի��� ����� ������ ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE HIREDATE > '81/04/02';


-- 7�� �޿��� $800 �̻��� ����� �̸�, �޿�, �μ���ȣ�� ����϶�.
SELECT 
ENAME AS �̸�,
SAL AS �޿�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE SAL >= 800;


-- 8�� �μ���ȣ�� 20�� �̻��� ����� ��� ������ ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE DEPTNO = 20;


-- 9�� �̸��� K�� �����ϴ� ������� ���� �̸��� ���� ����� ��� ������ ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE ENAME >= CHR(ASCII('K')+1);

--WHERE UPPER(ENAME) >= CHR(ASCII('K')+1);
INSERT INTO EMP VALUES(9000, 'L',   'PRESIDENT', NULL, TO_DATE('17-11-1981', 'DD-MM-YYYY'), 5000, NULL, 10);
�߰��ؼ� ����Ȯ��
--�ؼ���K��+1�� �� �������� �ƽ�Ű�� ������ ���ϱ� �׸��� chr�� ����

-- 10�� �Ի����� 81/12/09 ���� ���� �Ի��� ������� ��� ������ ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE HIREDATE < '81/12/09';


-- 11�� �Ի��ȣ�� 7698���� �۰ų� ���� ������� �Ի��ȣ�� �̸��� ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE EMPNO <= 7698;


-- 12�� �Ի����� 81/04/02���� �ʰ� 82/12/09���� ���� ����� �̸�, ����, �μ���ȣ�� ����϶�.
SELECT 
ENAME AS �̸�,
SAL AS �޿�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE HIREDATE > '81/04/02' AND HIREDATE < '82/12/09';



-- 13�� �޿��� $1,600���� ũ�� $3,000���� ���� ����� �̸�, ����, �޿��� ����϶�.

SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE SAL >1600 AND SAL < 3000;


-- 14�� �����ȣ�� 7654�� 7782 ���� �̿��� ����� ��� ������ ����϶�.

SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE EMPNO > 7654 AND EMPNO < 7782;


-- 15�� �̸��� B�� J������ ��� ����� ������ ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE ENAME > CHR(ASCII('B')+1) AND ENAME < 'J';

-- 16�� �Ի����� 81�� �̿��� �Ի��� ����� ��� ������ ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE SUBSTR(HIREDATE, 1, 2) <> '81';


-- 17�� ������ MANAGER�� SALESMAN�� ����� ��� ������ ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE JOB = 'MANAGER' OR JOB = 'SALESMAN';


-- 18�� �μ���ȣ�� 20, 30���� ������ ��� ����� �̸�, �����ȣ, �μ���ȣ�� ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE DEPTNO <> 20 AND DEPTNO <> 30;


-- 19�� S�� �����ϴ� ����� �����ȣ, �̸�, �Ի���, �μ���ȣ�� ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
HIREDATE AS �Ի���,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE ENAME LIKE 'S%';


-- 20�� �Ի����� 81�⵵�� ����� ��� ������ ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
HIREDATE AS �Ի���,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE SUBSTR(HIREDATE, 1, 2) = '81';


-- 21�� �̸� �� S�ڰ� �� �ִ� ����� ��� ������ ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
HIREDATE AS �Ի���,
DEPTNO AS �μ���ȣ
FROM EMP

--WHERE UPPER(ENAME) LIKE '%S%';
WHERE ENAME LIKE '%S%';



-- 22�� �̸��� S�� �����ϰ� ������ ���ڰ� T�� ����� ��� ������ ����϶�(��, �̸��� ��ü 5�ڸ��̴�.)
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
HIREDATE AS �Ի���,
DEPTNO AS �μ���ȣ
FROM EMP
--WHERE ENAME LIKE 'S___T';
WHERE ENAME LIKE 'S%' AND SUBSTR(ENAME, -1,1) = 'T' ;


-- 23�� ù ���� ���ڴ� �������, �� ���� ���ڰ� A�� ����� ������ ����϶�.

SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP

--WHERE SUBSTR(ENAME, 2, 1) = 'A';
WHERE ENAME LIKE '_A%';


-- 24�� Ŀ�̼��� NULL�� ����� ������ ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE COMM IS NULL;


-- 25�� Ŀ�̼��� NULL�� �ƴ� ����� ������ ����϶�.

SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE COMM IS NOT NULL;

-- 26�� �μ��� 30�� �μ��̰� �޿��� $1,500 �̻��� ����� �̸�, �μ�, ������ ����϶�.
SELECT 
ENAME AS �̸�,
SAL AS �޿�,
DEPTNO AS �μ���ȣ,
COMM AS Ŀ�̼�
FROM EMP
WHERE DEPTNO = 30 AND SAL >= 1500;


-- 27�� �̸��� ù ���ڰ� K�� �����ϰų� �μ���ȣ�� 30�� ����� �����ȣ, �̸�, �μ���ȣ�� ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE ENAME LIKE 'K%' OR DEPTNO = 30;


-- 28�� �޿��� $1500 �̻��̰� �μ���ȣ�� 30���� ��� �� ������ MANAGER�� ����� ������ �߷��϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE DEPTNO = 30 AND JOB = 'MANAGER';


-- 29�� �μ���ȣ�� 30�� ��� �� �����ȣ�� SORT.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
WHERE DEPTNO = 30
--ORDER BY DEPTNO ASC;
ORDER BY DEPTNO; --  �⺻ ���� ASC(����������)


-- 30�� �޿��� ���� ������ SORT�϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
ORDER BY SAL DESC;

-- 31�� �μ���ȣ�� ASCENDING SORT  �� �� �޿��� ���� ��� ������ ����϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
ORDER BY DEPTNO, SAL DESC;


-- 32�� �μ� ��ȣ�� DESCENDING SORT�ϰ�, �̸� ������ ASCENDING SORT, �޿������� DESCENDING SORT �϶�.
SELECT 
EMPNO AS �����ȣ,
ENAME AS �̸�,
JOB AS ����,
MGR AS �Ŵ���,
HIREDATE AS �Ի���,
SAL AS �޿�,
COMM AS Ŀ�̼�,
DEPTNO AS �μ���ȣ
FROM EMP
ORDER BY DEPTNO DESC, ENAME, SAL DESC;


-- 33�� EMP TABLE ���� �̸�, �޿�, Ŀ�̼� �ݾ�, �Ѿ� (SAL + COMM) �� ���Ͽ� �Ѿ��� ���� ������ ����϶�. 
-- �� Ŀ�̼��� NULL�� ����� �����Ѵ�.
SELECT 
ENAME AS �̸�,
SAL AS �޿�,
COMM AS Ŀ�̼�,
(SAL + COMM) AS �Ѿ�
FROM EMP
WHERE COMM IS NOT NULL;


-- 34�� 10�� �μ��� ��� ����鿡�� �޿��� 13%�� ���ʽ��� �����ϱ�� �Ͽ���. �̸�, �޿�, ���ʽ� �ݾ�, �μ���ȣ�� ����϶�.
SELECT 
ENAME AS �̸�,
SAL AS �޿�,
(SAL * 0.13) AS "���ʽ� �ݾ�",
DEPTNO AS �μ���ȣ
FROM EMP
WHERE DEPTNO = 10;

-- 35�� 30�� �μ��� ������ ����Ͽ� �̸�, �μ���ȣ, �޿�, ������ ����϶�.
-- �� ������ �޿��� 150%�� ���ʽ��� �����Ѵ�.
SELECT 
ENAME AS �̸�,
DEPTNO AS �μ���ȣ,
SAL AS �޿�,
((SAL * 12) + (SAL * 1.5)) AS ����
FROM EMP
WHERE DEPTNO = 30;


-- 36�� �μ���ȣ�� 20�� �μ��� �ð��� �ӱ��� ����Ͽ� ����϶�.
-- �� 1���� �ٹ��ϼ��� 12���̰�, 1�� �ٹ��ð��� 5�ð��̴�.
-- ��¾���� �̸�, �޿�, �ð��� �ӱ�(�Ҽ����� ù ��° �ڸ����� �ݿø�)�� ����϶�.
SELECT 
ENAME AS �̸�,
SAL AS �޿�,
ROUND(((SAL/12)/5), 1) AS "�ð��� �ӱ�"
FROM EMP
WHERE DEPTNO = 20;


-- 37�� �޿��� $1,500 ���� $ 3,000 ������ ����� �޿��� 15%�� ȸ��� �����ϱ�� �Ͽ���.
-- �̸�, �޿�, ȸ��(�Ҽ��� �� �ڸ����� �ݿø�) ����϶�.

SELECT 
ENAME AS �̸�,
SAL AS �޿�,
ROUND((SAL * 0.15),2) AS ȸ��
FROM EMP
WHERE SAL >= 1500 AND SAL <= 3000;


-- 38�� �޿��� $2,000 �̻��� ��� ����� �޿��� 15%�� �溸��� ����� �Ͽ���.
-- �̸�, �޿�, ������ �� ����϶�.
SELECT 
ENAME AS �̸�,
SAL AS �޿�,
(SAL * 0.15) AS ������
FROM EMP
WHERE SAL >= 2000;


-- 39�� �Ի��� ���� ���ݱ����� ��¥���� ����϶�. �μ���ȣ, �̸�, �Ի���, ������, 
-- �ٹ��ϼ�(�Ҽ��� ���� ����), �ٹ����, �ٹ�����(30�� ����), �ٹ��ּ��� ����϶�.
SELECT 
DEPTNO AS �μ���ȣ,
ENAME AS �̸�,
HIREDATE AS �Ի���,
SYSDATE AS ������,
--TRUNC(SYSDATE-HIREDATE, 0) AS �ٹ��ϼ�
--TRUNC(SYSDATE-HIREDATE) AS �ٹ��ϼ�
FLOOR(SYSDATE-HIREDATE) AS �ٹ��ϼ�,
--TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE) / 12) AS �ٹ��⵵,

FLOOR(MONTHS_BETWEEN(SYSDATE, HIREDATE) / 12) AS �ٹ����,
FLOOR(MONTHS_BETWEEN(SYSDATE, HIREDATE)) AS �ٹ�����,
FLOOR(MONTHS_BETWEEN(SYSDATE, HIREDATE) * 7) AS �ٹ��ּ�
FROM EMP;

-- 40�� ��� ����� �Ǽ��ɾ��� ����Ͽ� ����϶�. 
-- �� �޿��� ���� ������ �̸�, �޿�, �Ǽ��ɾ��� ����϶�
-- (�Ǽ��ɾ��� �޿��� ���� 10%�� ������ �A �ݾ�)

SELECT 
ENAME AS �̸�,
SAL AS �޿�,
(SAL) - (SAL * 0.1) AS ������
FROM EMP;

-- 41�� �Ի��Ϸκ��� 90���� ���� ���� ����̸�, �Ի���, 90�� ���� ��, �޿��� ����϶�.
SELECT 
ENAME AS �̸�,
HIREDATE AS �Ի���,
HIREDATE + 90 AS "90�� ��",
SAL AS �޿�
FROM EMP;

-- 42�� �Ի��Ϸ� ���� 6������ ���� ���� �Ի���, 6���� ���� ��¥, �޿��� ����϶�.
SELECT 
HIREDATE AS �Ի���,
ADD_MONTHS(HIREDATE, 6) AS "6���� ��",
SAL AS �޿�
FROM EMP;


-- 43�� �Ի��� ���� �ٹ��ϼ��� ����Ͽ� �μ���ȣ, �̸�, �ٹ��ϼ��� ����϶�.
SELECT 
DEPTNO AS �μ���ȣ,
ENAME AS �̸�,
LAST_DAY(HIREDATE) - HIREDATE AS "�Ի��� �� �ٹ� �ϼ�"
FROM EMP;

-- 44�� ��� ����� 60���� ���� ���� MONDAY �� �� �� , �� ��, �� �� �ΰ��� ���Ͽ�
-- �̸�, �Ի���, MONDAY�� ����϶�.
SELECT 
ENAME AS �̸�,
HIREDATE AS �Ի���,
NEXT_DAY(HIREDATE + 60,'��') AS MONDAY
FROM EMP;


-- 45�� �Ի��Ϸκ��� ���ñ����� �ϼ��� ���Ͽ� �̸�, �Ի���, �ٹ��ϼ��� ����϶�.
SELECT 
ENAME AS �̸�,
HIREDATE AS �Ի���,
TRUNC(SYSDATE-HIREDATE) AS �ٹ��ϼ�
FROM EMP;


-- 46�� �Ի����� 1996�� 5�� 14�� �� ���·� �̸�, �Ի����� ����϶�.

SELECT 
ENAME AS �̸�,
TO_CHAR(HIREDATE, 'YYYY"�� "MM"�� "DD"��"') AS �Ի���
FROM EMP;


-- 47�� �̸��� ���ڼ��� 6�� �̻��� ����� �̸��� �տ��� 3�ڸ��� ���Ͽ� �ҹ��ڷ� �̸����� ����϶�.
SELECT 
ENAME AS �̸�,
LOWER(SUBSTR(ENAME,1 ,3)) AS "�ҹ��� ��ȯ"
FROM EMP
WHERE LENGTH(ENAME) >= 6;


-- 48�� 10�� �μ� ������ ���, �ְ�, ����, �ο����� ���Ͽ� ����϶�.
SELECT 
--TRUNC(AVG(SAL)) AS ���,
ROUND(AVG(SAL), 1) AS ���,
MAX(SAL) AS �ְ�,
MIN(SAL) AS ����,
COUNT(*) AS �ο���
FROM EMP
WHERE DEPTNO = 10;


-- 49�� �� �μ��� �޿��� ���, �ְ�, ����, �ο����� ���Ͽ� ����϶�.
SELECT 
--TRUNC(AVG(SAL)) AS ���,
ROUND(AVG(SAL), 1) AS ���,
MAX(SAL) AS �ְ�,
MIN(SAL) AS ����,
COUNT(*) AS �ο���,
DEPTNO AS �μ���ȣ
FROM EMP
GROUP BY DEPTNO;


-- 50�� �� �μ��� ���� ������ �ϴ� ����� �ο����� ���Ͽ� �μ���ȣ, ������, �ο����� ����϶�.
SELECT 
DEPTNO AS �μ���ȣ,
JOB AS ������,
COUNT(*) AS �ο���
FROM EMP
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO;


-- 51�� ���� ������ �ϴ� ����� ���� 4�� �̻��� ������ �ο����� ����϶�.
SELECT 
JOB AS ����,
COUNT(*) AS �ο���
FROM EMP
GROUP BY JOB
HAVING COUNT(*) >= 4;

-- 52�� �� �μ��� ��� ����, ��ü ����, �ְ� ����, ���� ���� �� ���Ͽ� ��� ������ ���� ������ ����϶�.
SELECT 
DEPTNO AS �μ���ȣ,
ROUND(AVG(SAL), 1) AS "��� ����",
MAX(SAL) AS "�ְ� ����",
MIN(SAL) AS "���� ����"
FROM EMP
GROUP BY DEPTNO
ORDER BY "��� ����" DESC;


-- 53�� EMP�� DEPT TABLE �� JOIN�Ͽ� �μ���ȣ, �μ���, �̸�, �޿��� ����϶�.
SELECT 
A.DEPTNO AS �μ���ȣ,
B.DNAME AS �μ���,
A.ENAME AS �̸�,
A.SAL AS  �޿�
FROM EMP A, DEPT B
WHERE A.DEPTNO = B.DEPTNO;


-- 54�� �̸��� ALLEN�� ����� �μ����� ����϶�.
SELECT 
B.DNAME AS �μ���
FROM EMP A, DEPT B
WHERE A.DEPTNO = B.DEPTNO
AND A.ENAME = 'ALLEN';


-- 55�� DEPT TABLE �� �ִ� ��� �μ��� ����ϰ�, EMP  TABLE �� �ִ� DATA�� JOIN�Ͽ� 
-- ��� ����� �̸�, �μ���ȣ, �μ���, �޿��� ����϶�.
SELECT 
A.ENAME AS �̸�,
A.DEPTNO AS �μ���ȣ,
B.DNAME AS �μ���,
A.SAL AS  �޿�
FROM EMP A, DEPT B
WHERE A.DEPTNO = B.DEPTNO;
