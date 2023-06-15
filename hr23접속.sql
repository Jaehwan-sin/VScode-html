--DBMS (database management system)
--종류 : oracle, mysql, mariadb, mssql
--RDB : (Relational Database) 관계형 데이터베이스
--테이블 용어 :  row(record, tuple), columm(attribute, field)
-- UPDATE 테이블명 SET 지정컬럼명 = 수정내용 WHERE 컬럼조건;
-- DELETE FROM 테이블명 WHERE 조건;

create table addr(
name varchar2(20),
address varchar2(100),
tel varchar2(20),
memo varchar2(300));
-- 테이블 구조확인
desc addr;
-- 테이블 삭제
drop table addr;
select * from addr;
drop table addr purge; --삭제와 동시에 휴지통비우기

--데이터 삽입
insert into addr values('hong', 'seoul', '111-111', '개발자');
insert into addr values('hong2', 'seoul', '111-111', '개발자2');
commit; --메모리에 등록된 데이터를 물리적 DB저장소에 저장

select * from addr; --데이터 조회

delete from addr where memo='개발자3';-- 테이블 행 삭제

insert into addr values('hong3', 'busan', '222-222', null);-- memo필드 공간을 비워두고 데이터삽입
update addr set memo = 'null' where memo=개발자3;
insert into addr(name,address,tel) values('hong4','busan','333-333');
insert into addr(name,memo) values('hong5','개발자5');
insert into addr(memo,name) values('개발자5','hong5');-- 입력순서변경가능하지만 권장하지않는다.
insert into addr values('hong6','incheon','111-111','null');

commit;

--sql(structured query language) 구조화된 질의 언어
--type
char varchar2, number, date, timestamp

create table sample(
name char(10),-- 고정길이
addr varchar2(50),-- 가변길이
regdate date,
birth timestamp);

select * from sample;

insert into sample values('홍길동','서울',sysdate,sysdate);
insert into sample values('홍길동2','서울',sysdate,sysdate);
insert into sample values('홍길동3','서울','2000-01-08','1999-01-01');
insert into sample values('홍길동5','서울','2000-01-08','1999-01-01 15:30:05');
insert into sample values('홍길동5','서울','2000-01-08','1999-01-01 15:30:05.0000060');

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
insert into emp (empno,ename,job,mgr,hiredate,sal,deptno) values ('7901','신재환','ANALYST','7782','2023-10-30','1300','10');











