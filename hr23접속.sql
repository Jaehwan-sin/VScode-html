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

insert into addr values('hong3', 'busan', '222-222', null);-- memo�ʵ� ������ ����ΰ� �����ͻ���
update addr set memo = 'null' where memo=������3;
insert into addr(name,address,tel) values('hong4','busan','333-333');
insert into addr(name,memo) values('hong5','������5');
insert into addr(memo,name) values('������5','hong5');-- �Է¼������氡�������� ���������ʴ´�.
insert into addr values('hong6','incheon','111-111','null');

commit;

--sql(structured query language) ����ȭ�� ���� ���
--type
char varchar2, number, date, timestamp

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
empno number(4) not null,
ename varchar2(10),
job varchar2(9),
mgr number(4),
hiredate date,
sal number(7,2),
comm number(7,2),
deptno number(2));

commit;
desc emp;
select * from emp;

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











