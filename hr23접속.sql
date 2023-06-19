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
INSERT INTO EMP VALUES (7499, 'ALLEN',  'SALESMAN',  7698,TO_DATE('20-02-1981', 'DD-MM-YYYY'), 1600,  300, 30);
INSERT INTO EMP VALUES(7521, 'WARD',   'SALESMAN',  7698,TO_DATE('22-02-1981', 'DD-MM-YYYY'), 1250,  500, 30);
INSERT INTO EMP VALUES(7566, 'JONES',  'MANAGER',   7839,TO_DATE('02-04-1981', 'DD-MM-YYYY'),  2975, NULL, 20);
INSERT INTO EMP VALUES(7654, 'MARTIN', 'SALESMAN',  7698,TO_DATE('28-09-1981', 'DD-MM-YYYY'), 1250, 1400, 30);
INSERT INTO EMP VALUES(7698, 'BLAKE',  'MANAGER',   7839,TO_DATE('01-05-1981', 'DD-MM-YYYY'),  2850, NULL, 30);
INSERT INTO EMP VALUES(7782, 'CLARK',  'MANAGER',   7839,        TO_DATE('09-06-1981', 'DD-MM-YYYY'),  2450, NULL, 10);
INSERT INTO EMP VALUES(7788, 'SCOTT',  'ANALYST',   7566,       TO_DATE('09-12-1982', 'DD-MM-YYYY'), 3000, NULL, 20);
INSERT INTO EMP VALUES(7839, 'KING',   'PRESIDENT', NULL, TO_DATE('17-11-1981', 'DD-MM-YYYY'), 5000, NULL, 10);
INSERT INTO EMP VALUES(7844, 'TURNER', 'SALESMAN',  7698, TO_DATE('08-09-1981', 'DD-MM-YYYY'),  1500, NULL, 30);
INSERT INTO EMP VALUES(7876, 'ADAMS',  'CLERK',     7788,TO_DATE('12-01-1983', 'DD-MM-YYYY'), 1100, NULL, 20);
INSERT INTO EMP VALUES(7900, 'JAMES',  'CLERK',     7698, TO_DATE('03-12-1981', 'DD-MM-YYYY'),   950, NULL, 30);
INSERT INTO EMP VALUES (7902, 'FORD',   'ANALYST',   7566, TO_DATE('03-12-1981', 'DD-MM-YYYY'),  3000, NULL, 20);
INSERT INTO EMP VALUES(7934, 'MILLER', 'CLERK',     7782, TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);

INSERT INTO EMP VALUES(7934, 'MILLER', 'CLERK',     7782, TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300.54, NULL, 10);
INSERT INTO EMP VALUES(7934, 'MILLER', 'CLERK',     7782, TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);
INSERT INTO EMP VALUES(7934, 'MILLER', 'CLERK',     7782, TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300.5678, NULL, 10);
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

--aliasing ��Ī
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

--230619
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
INSERT INTO EMP VALUES(9000, 'ȫ�浿', 'CLERK',     7782, TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300.5678, NULL, 10);
select 'ȫ�浿',length('ȫ�浿'),lengthb('ȫ�浿'),length('��'),lengthb('�˪۪�') from dual;

--dual ���̺� ( ����Ŭ ��ü���� �����Ǵ� ���̺� )
--�� Dual ���̺��� ���뵵
--   - dual ���̺��� ����ڰ� �Լ�(���)�� ������ �� �ӽ÷� ����ϴµ� �����ϴ�.
--   - �Լ��� ���� ������ �˰� ������ Ư�� ���̺��� ������ �ʿ���� dual ���̺��� �̿��Ͽ� �Լ��� ���� ����(return)���� �� �ִ�.
   
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
select tel from student;
select substr(tel,1,3) from student;
--��ġ�� ��ȯ
select tel,instr(tel,')',1,1) from student;
--����
select substr(tel,1,instr(tel,')',1,1)-1) ������ȣ from student;

--EMAIL�� ���̵� ����
select * from professor;
select instr(email,'@',1,1) from professor;
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









