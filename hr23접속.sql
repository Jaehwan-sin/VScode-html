-----------------------------------------------------------------------------230616---------------------------------------------------------------------------------------------
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

-- memo필드 공간을 비워두고 데이터삽입
insert into addr values('hong3', 'busan', '222-222', null);
update addr set memo = 'null' where memo=개발자3;
insert into addr(name,address,tel) values('hong4','busan','333-333');

--name과 memo 필드에만 데이터 입력
insert into addr(name,memo) values('hong5','개발자5');
insert into addr(memo,name) values('개발자5','hong5');-- 입력 순서 변경 가능하지만 권장하지않는다.
insert into addr values('hong6','incheon','111-111','null');

commit;

--sql(structured query language) 구조화된 질의 언어
--type
--char varchar2, number, date, timestamp

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
empno number(4) not null,--사번
ename varchar2(10),--사원이름
job varchar2(9),--직책
mgr number(4),--사수번호
hiredate date,--입사일
sal number(7,2),--급여
comm number(7,2),--커미션
deptno number(2));--부서번호

commit;
desc emp;
select * from emp;

drop table emp;

-- 내가 적은것
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

--강사님
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

--테이블 확인
select * from emp;
--데이터 삭제
delete from emp;
--일부 삭제
delete from emp where empno=7499;
--scott 삭제 데이터값은 대소문자를 가린다
delete from emp where ename='SCOTT';
--직책으로 삭제 복수명이 삭제
DELETE FROM EMP WHERE JOB='CLERK';

create table dept(
deptno number,
dname varchar2(14),
loc varchar2(13));

--타입 확인
desc dept;
select * from dept;

insert into dept values(10,'ACCOUNTING','NEW YORK');
insert into dept values(20,'RESEARCH','DALLAS');
insert into dept values(30,'SALES','CHICAGO');
insert into dept values(40,'OPERATIONS','BOSTON');

--대소문자 변경 단축키 ALT + ' 
select * from emp;

--not null은 null을 허용하지 않겠다는 뜻
--테이블의 무결성을 유지하기 위한 제약조건
--데이터 무결성은 데이터의 정확성, 일관성, 유효성이 유지되는 것을 의미합니다. 
--여기서 정확성이란 중복이나 누락이 없는 상태를 뜻하고, 일관성은 원인과 결과의 의미가 연속적으로 보장되어 변하지 않는 상태를 뜻합니다.

create table address2(
name varchar2(20) not null,
addr varchar2(100) not null,
tel varchar2(20));

insert into address2 values('hong','seoul',null);
insert into address2 values(null,'seoul',null);-- not null 제약조건 위배
insert into address2 values('hong',null,'111-1111');-- not null 제약조건 위배

--테이블 조회
select * from address2;
select * from emp;
select * from dept;

--aliasing 별칭 단, select 문에만 사용가능하다.
select * from emp;
select empno from emp;-- emp테이블의 empno만 확인하겠다
select empno as "사번" from emp;-- emp테이블의 empno가 사번으로 바뀜.

--emp테이블 aliasing을 이용해 바꾸기
select empno as "사번", 
ename as "사원이름", job as "직책", mgr as "사수번호",
hiredate as "입사일", sal as "급여", comm as "커미션", deptno as "부서번호" 
from emp;

--"", as 생략가능
select empno as 사번, ename as 사원이름 from emp;
select empno 사번, ename 사원이름 from emp;
--단어를 띄워서 샤용할 땐 "" 사용
select empno 사번, ename "사원 이름" from emp;
select empno "emp number", ename "emp name" from emp;

--연결연산자 ||
select ename from emp;
select ename || '''s job is ' || job from emp;
select ename || '''s job is ' || job "emp's job" from emp;

--SMITH의 급여는 800달러이다.
select ename || '''s 의 급여는' || sal from emp; 

--SMITH의 매니저 번호는 7902이다.
select ename || ''' 매니저 번호는 ' || mgr "managerno" from emp;

commit;
--중복값 제거 distinct ★★
select * from emp;
select distinct job from emp;
select distinct deptno from emp;

--갯수함수 count
select * from emp;
select count(job) from emp;-- 중복된 값도 세어준다.
select count(distinct job) from emp;-- 중복된 값 제외해서 세어준다.
select count(*) from emp;-- 레코드 갯수
select count(comm) from emp;-- null 갯수는 세지않는다. 주의할것!!

--부서의 갯수는 몇개일까 (중복값 제거)
select count(distinct deptno) from emp;

-- 복습 / AR's의 본단어는 Arhentina이다.
select * from countries;
select country_id || '''s 의 본 단어는 ' || country_name from countries;
select country_id || '''s 의 본 단어는 ' || country_name || '이고 지역번호는 ' || region_id || '이다' from countries;

--steven의 이메일은 SKING이고 폰넘버는 515.123.4567이다.
select * from employees;
select EMAIL || ''' 이메일은 SKING이고' || PHONE_NUMBER  from employees;
select first_name || '''s 이메일은 ' || email || '이고 폰넘버는 ' || phone_number || '이다' from employees;

--employees의 테이블의 부서번호코드를 중복제거하여 갯수를 조회하시오.
select * from employees;
select count(department_id) from employees;-- null값, 중복값 포함
select count(distinct department_id) from employees;-- null값,중복값 제외

--primary key 기본키 ★★★★★
select * from emp;
drop table emp;

create table emp(
empno number(4) primary key,--사번 primary key는 UNIQUE하며 NULL값이 들어가도 안되고 중복된 데이터값도 들어가면 안된다.
ename varchar2(10),--사원이름
job varchar2(9),--직책
mgr number(4),--사수번호
hiredate date,--입사일
sal number(7,2),--급여 소수점 2까지 허용
comm number(7,2),--커미션
deptno number(2));--부서번호

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
--PRIMARY KEY는 칼럼에 데이터가 유일해야한다. UNIQUE NOT NULL

--WHERE절 조건절이라고 한다.
--select 출력할 칼럼 from 테이블명 where 출력할 조건

--empno 7900인 데이터 조회
SELECT * FROM emp WHERE empno=7902;

--이름이 martin인 사람 조회 데이터값은 대소문자를 구분한다.
SELECT * FROM EMP WHERE ENAME='MARTIN';

--job이 clerk인 데이터 조회
select * from emp where job='CLERK';
select * from emp where job='SALESMAN';

--출력할 칼럼 지정
SELECT ENAME,EMPNO,HIREDATE FROM EMP WHERE JOB='CLERK';

--입사일 조회 사번 이름 급여 입사일 데이터 조회
--입사일은 81년 12월 3일
SELECT EMPNO,ENAME,SAL,HIREDATE FROM EMP WHERE HIREDATE='1981-12-3';

--SQL 산술 연산
--현재 급여에서 10% 인상한 값을 "인상된 급여"로 출력
SELECT SAL*1.1 "인상된 급여" FROM EMP;
SELECT SAL "인상 전 급여", SAL*1.1 "인상된 급여" FROM EMP;

--급여의 150% 보너스 지급 "보너스 금액" 조회
SELECT SAL "급여", SAL*1.5 "보너스 금액", SAL+(SAL*1.5) "보너스 합계 월 급여" FROM EMP;

--SQL 비교 연산
--SAL 2000이상인 데이터 조회
SELECT * FROM EMP WHERE SAL>=2000;

--SAL 1500이하인 데이터 조회
SELECT * FROM EMP WHERE SAL<=1500;

--부서번호가 20인 데이터 조회
SELECT * FROM EMP WHERE DEPTNO=20;

--조건이 여러개일때 조회
--SAL 1500 이상이고 부서번호가 20인 데이터 조회
SELECT * FROM EMP WHERE SAL>=1500 AND DEPTNO=20;

--SAL 1500 이상이거나 부서번호가 20인 데이터 조회
SELECT * FROM EMP WHERE SAL>=1500 OR DEPTNO=20;

--암기 사항
--문법순서
--SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY ★★★★★

--실행순서
--FROM WHERE GROUP BY HAVING SELECT ORDER BY ★★★★★

--날짜 비교
--입사일이 81년 12월 3일 이전에 입사한 데이터 조회
SELECT * FROM EMP WHERE HIREDATE<='1981-12-3';

--문자 비교
--이름이 SMITH 보다 작은 데이터조회
SELECT * FROM EMP WHERE ENAME<'SMITH';

--BETWEEN A AND B : A에서 B까지
--SAL 2000~3000까지인 데이터 조회
SELECT * FROM EMP WHERE SAL BETWEEN 2000 AND 3000;
SELECT * FROM EMP WHERE SAL BETWEEN 3000 AND 2000;-- 큰 값이 앞 쪽에 위치하면 검색이 안된다. 주의할것!!

--페이징 처리 사용할 예정

--위 내용을 비교 연산으로 변형
SELECT * FROM EMP WHERE SAL>=2000 AND SAL<=3000;

--BETWEEN JAMES MARTIN까지
SELECT * FROM EMP WHERE ENAME BETWEEN 'JAMES' AND 'MARTIN';
SELECT * FROM EMP;

--IN 연산자 간편하게 여러 조건 검색 ★★★ 중요!
--부서번호가 20, 30인 데이터 조회
--OR 사용
SELECT * FROM EMP WHERE DEPTNO=20 OR DEPTNO=30;
--IN 사용
SELECT * FROM EMP WHERE DEPTNO IN(20,30);

--직책이 CLERK, ANALYST 데이터조회
SELECT * FROM EMP WHERE JOB IN ('CLERK','ANALYST');

COMMIT;

--like 연산자 비슷한 데이터 조회 ★★★ 중요!
--sal 1로 시작하는 데이터 조회
select * from emp where sal like '1%';

--직원 이름이 w로 시작하는 데이터 조회
select * from EMP where ename like 'W%';

--직원 이름이 R로 끝나는 사람 데이터 조회
select * from emp where ename like '%R';

--A가 포함된 사람 데이터 조회
select * from emp where ename like '%A%';

--직원 이름 중에 두번째 글자가 L인 데이터 조회
select * from emp where ename like '_L%';

--3번째 글자가 R인 데이터 출력
select * from emp where ename like '__R%';

--이름 중 끝에서 세번째 글자가 N인 데이터 조회
select * from emp where ename like '%N__';

-- ERD (Entity Reationship Diagram, 개체관계도)
-- erd 만드는 사이트 : https://www.erdcloud.com/

--select from where group by having order by
--from where group by having select order by

-----------------------------------------------------------------------------230619---------------------------------------------------------------------------------------------
--null 조회 null 값 조회 시 is null 로 조회한다.
select * from emp;
select * from emp where comm is null;

--mgr값 null 조회
select * from emp where mgr is null;

--null이 아닌 값 조회 is not null 사용
select * from emp where comm is not null;

--복습 입사일이 82 1 1 이후이고 sal이 1300 이상인 사원의 정보 조회
select * from emp where hiredate >= '1982-1-1' and sal >= 1300;

--급여가 1000 초과하고 커미션이 1000 미만이거나 커미션이 null인 사번, 이름, 급여, 커미션 조회
select * from emp where sal > 1000 and (comm < 1000 or comm is null);

-- 롤백 = 되돌리기 하지만 commit 후 롤백은 안된다.
select * from emp;
INSERT INTO EMP VALUES (8902, 'FORD',   'ANALYST',7566, TO_DATE('03-12-1981', 'DD-MM-YYYY'),  3000, NULL, 20);
INSERT INTO EMP VALUES(8934, 'MILLER', 'CLERK',7782, TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);

rollback;
commit;

delete from emp where empno in(8902,8934);

--외부의 sql 파일을 import 시키는 방법
@c:\stuprodep.sql
select * from student;
select count(*) from student;
select * from department;
select * from professor;

select * from emp;
select * from dept;

--union 합집합 student,professor 테이블의 조건을 주고 그 조건에 해당하는 데이터를 출력
select studno,name,deptno1 from student where deptno1 = 101
union
select profno,name,deptno from professor
where deptno = 101;

--별칭부여
select studno "pno sno",name,deptno1 from student where deptno1 = 101
union
select profno,name,deptno from professor
where deptno = 101;

select 1,ename from emp;

--1이 붙으면 student 테이블에서 가져온것 2가 붙으면 professor에서 가져온것
select studno,name,deptno1,1 from student where deptno1 = 101
union -- 중복값 배제
select profno,name,deptno,2 from professor
where deptno = 101;

select studno,name,deptno1,1 from student where deptno1 = 101
union all -- 모두 출력
select profno,name,deptno,2 from professor
where deptno = 101;

--차이나는 데이터
select studno, name from student where deptno1 = 101
union -- 중복값 출력 안 함
select studno, name from student where deptno2 = 201;

select studno, name,1 from student where deptno1 = 101
union all -- 모두 출력
select studno, name,2 from student where deptno2 = 201;

-- 교집합 intersect
select studno, name from student where deptno1 = 101
intersect -- 공통적인 것 출력
select studno, name from student where deptno2 = 201;

-- 차집합 minus
select studno, name from student where deptno1 = 101
minus -- 공통적인 부분 제외 후 출력
select studno, name from student where deptno2 = 201;

-- EMP에서 MINUS를 이용해서 급여가 2500달러 이하인 사람의 급여를 10달러 인상하시오.
select * from emp;

select empno,ename,sal,sal*1.1 from emp 
minus
select empno,ename,sal,sal*1.1 from emp where sal >= 2500;
-- 사용 시 주의점 ★★
-- 칼럼의 갯수,타입이 일치해야함.

-- 문법
--select 
--from 
--where 
--group by --그룹화 
--having -- 그룹의 조건
--order by -- 정렬
-- 실행
--from 
--where 
--group by --그룹화 
--select 
--having -- 그룹의 조건
--order by -- 정렬

--order by 정렬 오름차순 a,b,c 1,2,3 / 내림차순(desc) ★★★
select * from emp;
--emp 테이블에서 ename으로 오름차순 정렬
--order by의 기본값이 오름차순이라 asc 생략가능
select * from emp order by ename;
select * from emp order by ename asc;
--emp 테이블에서 ename으로 내림차순 정렬
select * from emp order by ename desc;

--여러 필드에 적용
--job 오름차순, empno 내림차순
select * from emp order by job asc, empno desc;-- 1차 정렬 2차 정렬 1차 정렬 후 2차 정렬이 된다.

select job,empno,ename from emp order by job asc, empno desc;

select * from emp order by empno asc, job desc;-- empno는 primary key이기 때문에 2차 정렬을 해도 의미가 없다.
--deptno desc 1차 정렬, sal asc 2차 정렬
select * from emp order by deptno desc, sal;

--조건 20,30번만 출력
select * from emp where deptno in(20,30) order by deptno desc, sal;

--교수 테이블에서 이름의 첫글자가 M 이거나 부서번호가 102인 데이터를 교수번호로 내림차순하여
--교수번호, 이름, 아이디, 부서번호, 이메일을 출력하시오.
select * from professor;
select profno,name,id,deptno,email from professor where name like 'M%' or deptno = 102 order by profno desc;

--단일행 함수 한번에 하나씩 처리하는 함수
--initcap 첫글자 대문자로 처리하는 함수
select ename,initcap(ename) from emp where deptno = 10;

--교수 테이블에서 이름에 첫 글자 대문자 적용 deptno = 101
select name,initcap(name) from professor where deptno = 101;

--Lower = 소문자 / Upper = 대문자
select * from emp;
select ename,lower(ename) lowername,upper(ename) uppername from emp;

--length 문자길이, lengthb byte의 길이
select ename,length(ename) from emp;
select ename,lengthb(ename) from emp;
INSERT INTO EMP VALUES(9000, '홍길동', 'CLERK', 7782, TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300.5678, NULL, 10);
select '홍길동',length('홍길동'),lengthb('홍길동'),length('洪'),lengthb('にほんご') from dual;

--dual 테이블 ( 오라클 자체에서 제공되는 테이블 )
--▶ Dual 테이블의 사용용도
-- - dual 테이블은 사용자가 함수(계산)를 실행할 때 임시로 사용하는데 적합하다.
-- - 함수에 대한 쓰임을 알고 싶을때 특정 테이블을 생성할 필요없이 dual 테이블을 이용하여 함수의 값을 리턴(return)받을 수 있다.
   
--concat 함수 문자열 연결 ||
select * from emp;
select ename || '''s 의 직업은 ' || job || '이다' from emp;
select concat(ename,job) from emp;
select concat(concat(ename,','),job) from emp;
select concat(concat(ename,'의 직책은 '),job) from emp;

--substr 문자열 특정길이 추출 ★★★★★
--substr(문자열,위치,글자갯수);
select 'ABCDEFG' from dual;
select 'ABCDEFG', substr ('ABCDEFG',3) from dual; -- 3번째 위치부터 끝까지
select 'ABCDEFG', substr ('ABCDEFG',3,2) from dual; -- 3번째 위치에서 2번째 갯수만큼
select 'ABCDEFG', substr ('ABCDEFG',-3,2) from dual; -- 뒤에서 3번째 위치에서 2번째 갯수만큼
select 'ABCDEFG', substr ('ABCDEFG',-3,2) from dual; -- 뒤에서 3번째 위치에서 2번째 갯수만큼

--emp 테이블에 적용
select ename,substr(ename,2,3),job,substr(job,2,3) from emp;
--위 내용을 소문자로 변환
select ename,lower(substr(ename,2,3)),job,lower(substr(job,2,3)) from emp;

--instr 특정 문자열 위치값 변환 ★★★★★
--instr(문자열, 찾는문자,시작위치,찾는 문자번째) = 찾는 문자가 위치하는 숫자를 리턴
select 'A-B-C-D' from dual;
select 'A-B-C-D',instr('A-B-C-D','A') from dual;
select 'A-B-C-D',instr('A-B-C-D','-',1,1) from dual;-- 처음부터 검색해서 '-'를 찾아서 첫번째 나오는 위치
select 'A-B-C-D',instr('A-B-C-D','-',1,2) from dual;-- 처음부터 검색해서 '-'를 찾아서 두번째 나오는 위치
select 'A-B-C-D',instr('A-B-C-D','-',3,2) from dual;-- 3번째 글자부터 검색을 해서 '-'를 찾아서 두번째 나오는 위치
select 'A-B-C-D',instr('A-B-C-D','-',3,5) from dual;-- 찾는 결과가 없을 때는 0으로 리턴

-- 지역번호 추출 지역번호의 길이가 다름
-- 길이가 동일할때 추출
select * from student;
select concat(19,substr(jumin,1,2)) jumin from student group by substr(jumin,1,2) order by jumin;
select substr(tel,1,3) from student;
--위치값 변환
select tel,instr(tel,')',1,1) from student;
--적용
select substr(tel,1,instr(tel,')',1,1)-1) 지역번호 from student;

--EMAIL의 아이디만 추출
select * from professor;
select instr(email,'@',1,1) from professor;-- @의 위치 출력
select substr(email,1,instr(email,'@',1,1)-1) 이메일 from professor;

--lpad 왼쪽에 채운다. ★
--lpad(채울 곳,총 길이,채울 언어) 총 길이만큼 채울 언어로 채워진다.
select name,id,lpad(id,10,'*') from student where deptno1 = 201;

--12345 lpad 적용
select name,id,lpad(id,10,'123456789') from student where deptno1 = 201;

--rpad 오른쪽에 채운다
select ename,rpad(ename,10,'-') from emp where deptno = 10;

--변형
select ename,rpad(ename,10,'123456789') from emp where deptno = 10;
select ename,instr(ename,substr(ename,-1)),rpad(ename,10,'456789') from emp;

--CLARK12345 -> CLARK56789 MILLER6789 변형해보기
select ename,rpad(ename,10,substr('123456789',6)) from emp where ename='MILLER';
select ename,rpad(ename,10,substr('123456789',4)) from emp where ename='FORD';
select ename,rpad(ename,10,substr('123456789',length(ename))) from emp where ename='FORD';

-----------------------------------------------------------------------------230620---------------------------------------------------------------------------------------------
--replace 문자열 대치 ★★★
--replace(칼럼, 문자1, 문자2) 칼럼에서 문자1을 문자2로 바꾸겠다는 의미
select * from emp;
commit;

--ename의 앞에 2글자를 ★대치
select ename, replace(ename,'SM','★★') from emp;
select ename, replace(ename,substr(ename,1,2),'★★') from emp;

--job 앞에 2글자를 --로 변환
select job, replace(job,substr(job,1,2),'★★') replacejob from emp;

select * from student;
-- tel의 -를 제거하기
select tel, instr(tel,'-') from student;
select tel, replace(tel,substr(tel,8),'*') replacetel from student;
select tel, replace(tel,substr(tel,instr(tel,'-')),' ') replacetel from student;
select tel, replace(tel,substr(tel,instr(tel,'-'),1),' ') replacetel from student;

--JUMIN - 추가
select jumin, concat(concat(jumin,'-'),substr(jumin,6,11)) replacejumin from student;

select jumin,substr(jumin,1,6),substr(jumin,7) from student;
select jumin,concat(substr(jumin,1,6),'-'),substr(jumin,7) from student;
select jumin,concat(concat(substr(jumin,1,6),'-'),substr(jumin,7)) replacejumin from student;

--숫자 관련 함수
--round 반올림 함수 ★★
select 987.456,round(987.456,2) from dual; --소수점 2째자리까지 표현
select 987.456,round(987.556,0) from dual; --소수점 0번째자리까지 표현
select 987.456,round(987.556,-1) from dual; --10단위까지 표현
select 987.456,round(987.556,-2) from dual; --100단위까지 표현

--trunc 절삭함수 ★★
select 987.456,trunc(987.456,2) from dual; --자리수 뒤로 제거
select 987.456,trunc(987.456,0) from dual; --자리수 뒤로 제거
select 987.456,trunc(987.456,-1) from dual; --자리수 뒤로 제거

--mod ceil floor
select mod(121,10) from dual;--120/10 한 나머지
select ceil(100.123) from dual;
select floor(100.123) from dual;
select floor(-100.123) from dual;

--ceil 함수응용
select rownum,empno,ename from emp;
--팀 구분
select rownum,ceil(rownum/3) || '팀' team,ename from emp;

--power 함수
select power(2,3) from dual;--2의 3승

--날짜함수 sysdate ★★★ 현재날짜 : 오라클이 설치된 시스템의 날짜
select sysdate from dual;

--months_between ★★ 특정기간 개월수
select months_between('23/6/20','23/2/5') from dual;
select ceil(months_between('23/6/20','23/1/5')) from dual;
select floor(months_between('23/6/20','23/1/5')) from dual;

--add_months 달의 수를 추가
select sysdate,add_months(sysdate,5) from dual;

--next_day 다가오는 날짜
select sysdate,next_day('23/6/20','월요일') from dual;-- 다가오는 다음 월요일의 날짜 출력

--last_day 월의 마지막 날
select sysdate,last_day(sysdate) from dual;

--묵시적 형변환, 자동 형변환
select '2'+'2' from dual;
select 2+'2' from dual;
select 2+to_number(2) from dual;-- 명시적 형변환

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
select sysdate,to_char(sysdate,'DAY') from dual;-- 한글로 나옴
select sysdate,to_char(sysdate,'DDTH') from dual;-- dayTH

--HOUR FOMAT
select sysdate,to_char(sysdate,'RRRR-MM-DD HH24:MI:SS') from dual;

--숫자형을 문자형으로 변환 ★★★
select ename, sal, comm, sal+comm from emp;
select ename, sal, comm, sal+comm*12,to_char(sal+comm*12,'$999,999,999') from emp;

--to_number ★★★
select to_number('55') from dual;

--nvl ★★★★★★ null value
--nvl(comm,0) comm이 null일때 0으로 바꿔준다.
select comm from emp;
select sal,comm,sal+comm from emp;-- sal 값이 null인 경우 sal+comm에 원하는 결과가 나타나지않는다.
select sal,comm,sal+nvl(comm,0) salcomm from emp;

--nvl2 ★★★★★★
--nvl2(col1,col2,col3) col1이 null이 아니면 col2 출력, col1이 null 이면 col3 출력
--nvl2 참고사이트 https://gent.tistory.com/189
select ename,sal from emp;
select ename,sal,nvl2(comm,sal+comm,sal+0)  from emp;
select empno,ename,comm as comm, nvl2(comm,'Y','N') as comm2 from emp;

select * from student;
--student에서 deptno2가 null값을 0으로 nv1를 활용해서 치환하고
--이름 아이디 주민 deptno2를 출력
--조건 deptno1이 201이거나 103인 데이터
select name,id,jumin,nvl(deptno2,0) deptno2 from student where deptno1 in (201,103);

--decode 함수 if문과 유사하다. ★★★
--decode(deptno,101,'computer engineering','etc') deptno가 101이면 'computer engineering'라고 출력하고 나머지는 'etc' 출력
select deptno,name from professor;
select deptno,name,decode(deptno,101,'Computer Enginerring','ETC') from professor;

 --동시에 적용하기
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

--emp 테이블에 적용하기
select * from emp;
select * from dept;

 --decode를 사용해서 emp 테이블에 부서이름을 출력하기
select ename,job,deptno,decode(deptno,
10,'ACCOUNTING',
20,'RESEARCH',
30,'SALES',
40,'OPERATIONS',
'ETC') decode
from emp;
 
--case 조건 when 결과 then 출력 ★★★
select * from student;
--tel의 지역번호에 맞는 case 문 적용
select substr(tel,1,instr(tel,')',1,1)-1) 지역번호 from student where deptno1=201;
 
select substr(tel,1,instr(tel,')',1,1)-1) 지역번호,
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
 
--복수행함수 그룹함수 ★★★
select count(*),count(comm) from emp;
 
--sum함수
select count(comm), sum(comm) from emp;
 
--average 함수
select count(comm), sum(comm), round(avg(comm),0) from emp;
select count(comm), sum(comm), round(avg(nvl(comm,0)),2) from emp;

--max min
select max(sal),min(sal) from emp;
 
-- stddev variance 표준편차,분산
select stddev(sal) 표준편차, variance(sal) 분산 from emp;
select round(stddev(sal),2) 표준편차, round(variance(sal),2) 분산 from emp;
 
--group by ★★★★★★ 그룹화
select * from emp;
--deptno로 그룹화 = 부서별로 그룹핑
select deptno from emp group by deptno;

--부서별로 sal의 합계를 구하기
--select from 사이엔 그룹이 적용된 함수만 사용가능하다.
select deptno,sum(sal) from emp group by deptno;
 
--group by의 조건절 표현 
select deptno,sum(sal) from emp group by deptno having sum(sal)>9000;
 
select deptno,sum(sal)
from emp
where deptno in (20,30)
group by deptno 
having sum(sal)>9000 
order by deptno desc;

-- 실행
-- from 
-- where 
-- group by --그룹화 
-- select 
-- having -- 그룹의 조건
-- order by -- 정렬
 
select * from student; 
--deptno1과 weight를 이용한 그룹화적용
select deptno1,sum(weight)
from student
where deptno1 like '1%'
group by deptno1
having sum(weight)>200
order by sum(weight) asc;

--2차그룹핑
select * from emp;
--deptno, job으로 2차 그룹핑
select deptno,job,sum(sal),avg(sal),count(sal) from emp group by deptno,job order by deptno asc;

select deptno,job,sum(sal),avg(sal),count(sal) from emp group by deptno,job having count(sal)<=3 order by deptno asc;

select * from professor;
--교수테이블에서 분야별로(deptno) 보너스를 받은 사람의 수와 보너스 합계
--정렬은 deptno
select deptno,count(bonus),sum(bonus)
from professor
group by deptno
order by deptno asc;

--그룹필드를 년도사용
select * from professor;
--년도 조회
select to_char(hiredate,'yyyy') from professor;
--년도별로 그룹화 및 정렬
select to_char(hiredate,'yyyy') from professor group by to_char(hiredate,'yyyy') order by to_char(hiredate,'yyyy');

--10년 단위로 표현
select round(to_number(to_char(hiredate,'yyyy')),-1) ,count(pay),sum(pay)
from professor
group by round(to_number(to_char(hiredate,'yyyy')),-1)
order by round(to_number(to_char(hiredate,'yyyy')),-1);

--별칭 사용
select round(to_number(to_char(hiredate,'yyyy')),-1) tenyear,count(pay),sum(pay)
from professor
group by round(to_number(to_char(hiredate,'yyyy')),-1)
order by tenyear;

select * from student;
--jumin필드의 년도별로 묶고 학생의 평균 키 평균 몸무게 합계 키 출력하기
select concat(concat(19,substr(jumin,1,2)),'년생') yyjumin,sum(height),sum(weight),round(avg(height),0),round(avg(weight),0)
from student
group by substr(jumin,1,2)
order by yyjumin;

-----------------------------------------------------------------------------230621---------------------------------------------------------------------------------------------
--관계 설정 ★★★★★
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
---▲▲▲관계 설정 전 상황▲▲▲---
-- 참조해주는 테이블 먼저 삭제 불가
drop table one;
drop table two;

delete from one;
delete from two;
--관계 설정하기
alter table one add constraint pk_one_no primary key(no); -- one 테이블에 primary key를 no 필드에 pk_one_no라는 이름으로 제약조건을 추가하겠다. / no 필드에 pk 적용
alter table two add constraint fk_two_num foreign key(num) references one(no);-- two 테이블에 foreign key를 num필드에 fk_two_num 이름으로 제약조건을 추가하는데 one테이블의 no필드를 참고해라.

--제약 조건 조회
select * from all_constraints where table_name='TWO';
select * from all_constraints where table_name='ONE';

--제약 조건 삭제
alter table two drop constraint FK_TWO_NUM;
alter table one drop constraint PK_ONE_NO;

--연습문제
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

--관계 설정하기
alter table regions3 add constraint pk_rg3_id primary key(region_id);
alter table countries3 add constraint fk_ct3_id foreign key(region_id) references regions3(region_id);

--제약 조건 조회
select * from all_constraints where table_name='REGIONS3';
select * from all_constraints where table_name='COUNTRIES3';
select * from all_constraints where table_name IN ('REGIONS3','COUNTRIES3');

--제약 조건 삭제
alter table REGIONS3 drop constraint PK_RG3_ID;
alter table countries3 drop constraint FK_CT3_ID;

create table emp(
empno number(4) not null,--사번 UNIQUE NOT NULL
ename varchar2(10),--사원이름
job varchar2(9),--직책
mgr number(4),--사수번호
hiredate date,--입사일
sal number(7,2),--급여
comm number(7,2),--커미션
deptno number(2));--부서번호
desc emp; -- 테이블 구조보기
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

--관계설정 dept 테이블에 deptno를 emp 테이블의 deptno에 참조하기
alter table dept add constraint pk_dept_deptno primary key(deptno);
alter table emp add constraint fk_emp_deptno foreign key(deptno) references dept(deptno);

select * from all_constraints where table_name in ('EMP','DEPT');

-- JOIN ★★★★★★★★★★★★ 테이블과 테이블을 결합
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

--ansi join style / 다른 데이터베이스 프로그램에서도 사용 가능
select a.id,a.name,b.car-- 실행순서가 from보다 select가 늦게 실행되서 별칭을 써도된다.
from tbl1 a inner join tbl2 b
on a.id = b.id;

select a.id,name,car --중복된 곳에선 별칭을 써준다.
from tbl1 a inner join tbl2 b
on a.id = b.id;

--oracle join / Oracle에서만 사용가능
select a.id,a.name,b.car
from tbl1 a , tbl2 b
where a.id = b.id;

--left outer join 왼쪽 테이블 전체 오른쪽 테이블 교집합
--ansi join
select t1.id, t2.car from tbl1 t1 left outer join tbl2 t2 on t1.id=t2.id;
--oracle join
select t1.id, t2.car from tbl1 t1, tbl2 t2 where t1.id=t2.id(+);

--RIGHT OUTER JOIN 왼쪽 테이블 전체 오른쪽 테이블 교집합
--ANSI JOIN
select t1.id, t2.car from tbl1 t1 right outer join tbl2 t2 on t1.id=t2.id;
--ORACLE JOIN
select t1.id, t2.car from tbl1 t1, tbl2 t2 where t1.id(+)=t2.id;

--공통부분 제외
select t1.id, t2.car from tbl1 t1 right outer join tbl2 t2 on t1.id=t2.id where t1.id is null;

--공통부분만 조회
select t1.id, t2.car from tbl1 t1 right outer join tbl2 t2 on t1.id=t2.id where t1.id is not null;
select t1.id, t2.car from tbl1 t1 right outer join tbl2 t2 on t1.id=t2.id where t1.id = t2.id;

--FULL OUTER JOIN (테이블 모두 조회)
--ANSI JOIN
select t1.id,name, t2.car from tbl1 t1 full outer join tbl2 t2 on t1.id=t2.id;
--ORACLE JOIN
select t1.id,name, t2.car from tbl1 t1, tbl2 t2 where t1.id=t2.id(+);
union
select t1.id,name, t2.car from tbl1 t1, tbl2 t2 where t1.id(+)=t2.id;

--공통부분 제거
select T1.id,name, t2.CAR from TBL1 T1 full outer join TBL2 t2 on T1.id=t2.id where t2.Car Is Null Or T1.Id Is Null;

--join 활용 ( emp,dept 테이블 활용 )
--사원 테이블에서 부서코드에 매칭되는 부서의 이름을 출력
--empno,ename,deptno,dname 출력
select * from emp;
select * from dept;
select e.empno,e.ename,e.deptno, d.dname from emp e inner join dept d on e.deptno=d.deptno order by dname;
select e.empno,e.ename,e.deptno,d.dname,d.loc from emp e inner join dept d on e.deptno = d.deptno order by deptno;

--학생과 교수테이블을 join하여 학생이름, 지도교수번호, 지도교수이름을 조회
select * from student;
select * from professor;
select s.name,s.profno,p.name from student s inner join professor p on s.profno=p.profno order by profno;

--위 내용을 오라클 조인으로 처리
select s.name,s.profno,p.name from student s, professor p where s.profno=p.profno order by profno;

--update 내용 수정
--update 테이블 set col1='value',col2='value2' where 조건;
select * from emp;
--table copy
create table emp2
as
select * from emp;

select * from emp2;
--allen의 급여를 500 인상
update emp2 set sal=sal+500 where ename='ALLEN';
--JAMES의 급여를 1000 인상
update emp2 set sal=sal+1000 where ename='JAMES';
--martin,blake 급여 500 인상
update emp2 set sal=sal+500 where ename in ('MARTIN','BLAKE');

drop table emp2;
--SAL가 2000 이하인 사람의 급여 1000 인상
update emp2 set sal=sal+1000 where sal<=2000;

--복수컬럼 적용
--sal 3000이상인 사람은 sal 100 인상, comm을 1000으로 수정
update emp2 set sal=sal+100, comm=1000 where sal>=3000;
select * from emp2 where sal>=3000;

--sal 2000 이상이고 deptno 20인 사람의 sal 1000인상, comm 2000 수정
select * from emp2 where sal>=2000 and deptno=20;
update emp2 set sal=sal+1000, comm=2000 where sal>=2000 and deptno=20;

--직급이 조교수 assistant professor 보너스를 200만원 인상
select * from professor;
update professor set bonus=nvl(bonus,0)+200 where position='assistant professor';-- bonus값이 null이면 0으로 수정
update professor set bonus=nvl2(bonus,bonus-200,0+200) where position='assistant professor';-- bonus값이 null 이면 0+200, null이 아니면 bonus+200
select * from professor where position='assistant professor';
rollback;

create table player(
player_id number,
player_name varchar2(20),
team_id varchar2(50));

insert into player values (2012137,'이고르','K05');
insert into player values (2012136,'오비나','K08');
insert into player values (2012135,'윤원일','K03');

create table stadium(
stadium_id varchar2(30),
stadium_name varchar2(100),
seat_count number);

insert into stadium values ('D03','전주월드컵경기장',28000);
insert into stadium values ('B02','성남종합운동장',27000);
insert into stadium values ('C06','포항스틸야드',25000);

create table team(
team_id varchar2(20),
team_name varchar2(200),
region_name varchar2(50),
stadium_id varchar2(100));

delete from player;

drop table player;
drop table stadium;
drop table team;

insert into team values ('K05','현대모터스','전북','D03');
insert into team values ('K08','일화천마','성남','B02');
insert into team values ('K03','스틸러스','포항','C06');

select * from player;
select * from stadium;
select * from team;

commit;
--관계 설정하기
alter table stadium add constraint pk_stadium_stadium_id primary key(stadium_id);
alter table team add constraint fk_team_stadium_id foreign key(stadium_id) references stadium(stadium_id);

alter table team add constraint pk_team_team_id primary key(team_id);
alter table player add constraint fk_player_team_id foreign key(team_id) references team(team_id);

select * from all_constraints where table_name in ('STADIUM','TEAM','PLAYER');
-----------------------------------------------------------------------------230622---------------------------------------------------------------------------------------------
--서브쿼리 ( subquery ) ★★★★★★ 쿼리 속에 쿼리
--select * from emp where 조건 (select sal from emp where ~~~)

--단일행 서브쿼리 서브쿼리의 결과가 단일행이다. 결과가 하나가 나온다는 뜻
select ename,sal from emp where ename='SCOTT';

select * from emp 
where sal<3000;--soctt 급여가 인상이 되면 잘못된 정보 출력

--scott의 sal보다 작은 급여를 받는 사람의 정보를 출력하시오.
select * from emp where sal<(select sal from emp where ename='SCOTT');

--emp테이블에서 ward보다 comm을 적게 받는 사람의 이름과 comm 출력
select * from emp;
select * from emp where comm<(select comm from emp where ename='WARD');

--professor 테이블에서 sharon stone 교수의 직급과 동일한 교수 중 현재급여가 250이 안되는 교수의 급여를 20% 인상
select * from professor;
--직급 출력
select position from professor where name='Sharon Stone';
--동일한 직급 정보
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

--subquery의 주의점
--1. 서브 쿼리 부분은 where절에 연산자 오른쪽에 위치하고 반드시 ()로 묶는다.
--2. 특별한 경우를 제외하고 서브 쿼리 절에 order by 사용하지 못한다.
--3. 단일행 서브쿼리, 다중행 서브쿼리로 나뉜다.
--단일행 서브쿼리 연산자 : =, <> 같지않다, >, >=, <, <=

--student 테이블과 department 테이블을 사용하여 'Anthony Hopkins'학생과 1전공(deptno1)이
--동일한 학생들의 이름과 1전공 이름을 출력
--'Anthony Hopkins'학생과 1전공
select * from student;
select * from department;
--Hopkins의 전공번호 출력
select deptno1 from student where name = 'Anthony Hopkins';
--조인해서 Hopkins의 1전공이름 출력
--oracle join
select s.name,s.deptno1,d.dname from student s , department d where s.deptno1 = d.deptno and s.deptno1=103;
--ansi join
select s.name,s.deptno1,d.dname from student s inner join department d on s.deptno1 = d.deptno and s.deptno1=103;
--위 코드를 서브쿼리 적용
select s.name,s.deptno1,d.dname from student s , department d where s.deptno1 = d.deptno and s.deptno1=(select deptno1 from student where name = 'Anthony Hopkins');

--student 테이블에서 1전공이 201번인 학과평균 몸무게보다 몸무게가 많은 학생의 이름과 몸무게 출력
--테이블에서 1전공이 201번인 학과평균 몸무게
select * from student where deptno1=201;
select avg(weight) from student where deptno1=201;

select name,weight from student where weight>(select avg(weight) from student where deptno1=201);

--다중행 서브쿼리 / 결과행이 2개이상
-- IN 결과를 메인에서 모두 검색
-- EXISTS 값이 있으면
-- >ANY 최소값보다큰
-- <ANY 최대값보다 작은
-- <ALL 최소값보다 작은
-- >ALL 최대값보다 큰
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
--emp2 테이블과 dept2 테이블을 참조하여 근무지역(dept2 테이블의 area 컬럼)이 'Pohang Main Office'인 모든 사원들의 사번과 이름, 부서번호 출력

--근무지역(dept2 테이블의 area 컬럼)이 'Pohang Main Office'인
select dcode from dept2 where area='Pohang Main Office';

select empno,name,deptno from emp2 where deptno in (select dcode from dept2 where area='Pohang Main Office');

--emp2 테이블에서 전체 직원 중 'Section head'직급의 최소 연봉자보다 연봉이 높은 사람의 이름과 직급, 연봉을 출력
--emp2 테이블에서 전체 직원 중 'Section head' 직급의 연봉은?

select * from emp2;
select pay from emp2 where position='Section head';
50000000
56000000
51000000
49000000

-- >ANY 최소값보다큰
select name,position,pay from emp2 where pay > any (select pay from emp2 where position='Section head');

-- <ANY 최대값보다 작은
select name,position,pay from emp2 where pay < any (select pay from emp2 where position='Section head');

-- <all 최소값보다 작은
select name,position,pay from emp2 where pay < all (select pay from emp2 where position='Section head');

-- >all 최대값보다 큰
select name,position,pay from emp2 where pay > all (select pay from emp2 where position='Section head');

--exists=존재하다. 활용
select * from dept where deptno=20;

--결과값이 있으면 실행하고 없으면 실행 안 함.
select * from dept where exists(select * from dept where deptno=50);

--다중 컬럼 서브쿼리
select * from student;

select grade,max(weight) from student group by grade order by grade;

--학년별로 몸무게가 제일 많이 나가는 학생의 이름 몸무게 출력
select grade,name,weight from student where (grade,weight) in (select grade,max(weight) from student group by grade);

--professor, department 테이블에서 각 학과별로 입사일이 가장 오래된 교수의 교수 번호와 이름, 학과명 출력
select * from professor;
select * from department;
select deptno from professor group by deptno;

select profno,name,deptno from professor where (deptno,hiredate) in (select deptno,min(hiredate) from professor group by deptno);

--각 학과별로 입사일이 가장 오래된 교수
select deptno,min(hiredate) from professor group by deptno order by deptno;

--교수 번호와 이름, 학과명 출력
select p.profno,p.name,d.dname from professor p , department d where p.deptno = d.deptno;

--위 두개 결합
select p.profno,p.name,d.dname 
from professor p , department d 
where p.deptno = d.deptno 
and (p.deptno,p.hiredate) in (
select deptno,min(hiredate)
from professor 
group by deptno)
order by p.deptno;

--------------------------------------
--사용자 만들기 시스템 계정에서 만들기 ★★★★★★
show user;

commit;

show user;
-- 사용자 만들기
create user blue IDENTIFIED by 123456;
-- 권한 설정
grant connect, resource, dba to blue;

conn blue;

show user;

--사용자 삭제
drop user blue cascade;

---------------------------
--view 활용 ★★★
--view란 가상테이블을 의미, 원래 테이블은 데이터가 들어있지만 뷰에는 데이터가 없고
--원본 테이블에서 데이터를 불러오는 쿼리만 존재
--일반적으로 데이터를 조회할 목적으로 사용

create view aview
as
select empno,ename,hiredate from emp;

select * from aview;

--view 삭제
drop view aview;

create table o_table(
a number,
b number);

select * from o_table;

--o_table 형식으로 뷰 만들기
create view view1
as
select a,b
from o_table;

--view1에 데이터 입력
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

insert into view2 values(3,4);--read-only 기 때문에 데이터 삽입 불가
insert into o_table values(7,8);

select * from o_table;
select * from view2;-- 읽기 가능

create view view3
as
select a,b
from o_table
where a=5-- a가 5인 값만 허용하겠다.
with check option;

insert into view3 values(3,4);--check option에 걸림
insert into view3 values(5,6);--가능

select * from view3;

update view3 set a=50;--check option에 걸림

--view join과 함께 활용
--emp dept 테이블 조인결과를 view로 생성

create view empdeptview
as
select e.empno,e.ename,e.job,d.dname
from emp e inner join dept d
on e.deptno=d.deptno
order by e.ename;

select * from empdeptview;
select * from empdeptview where empno=7499;

update emp set job = 'clerk2222' where ename='ADAMS';

--sequence 시퀀스 ★★★★★ 자동증가
create table s_order(
ord_no number(4),
ord_name varchar2(10),
p_name varchar2(20),
p_qty number);

select * from s_order;

insert into s_order values(1,'ja','apple',5);

--시퀀스 생성 위 테이블 데이터 입력에 활용
--sequence : 정수를 순차적으로 생성하는 역할을 하는 객체
create sequence sorer_ordno_seq
increment by 1
start with 100
maxvalue 110
minvalue 90
cycle
cache 2;

select * from s_order;
insert into s_order values(sorer_ordno_seq.nextval,'ja','apple',5);-- 다음번호
select sorer_ordno_seq.currval from dual;--현재 시퀀스 번호 확인

/
begin
    for i in 1..100 loop
        insert into s_order values(sorer_ordno_seq.nextval,'ja','apple',5);
    end loop;
end;
/

--게시판용 테이블에 적용
create table board10(
num number,--글 번호
title varchar2(100),--글 제목
memo varchar2(300)); 

--nextval : 시퀀스에서 다음 값을 가져오는 함수로 자동으로 생성되고 반환
--currval : 시퀀스의 현재값을 가져오는 함수
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

--시퀀스 검색
select * from user_sequences
where sequence_name = 'BOARD10_SEQ';
--시퀀스 수정
alter sequence board10_seq
increment by 1;

desc user_sequences;

--시퀀스 초기화
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

--시퀀스 삭제
drop sequence board10_seq;

--* NEXTVAL 및 CURRVAL을 사용할 수 있는 경우
-- - 서브쿼리가 아닌 SELECT문
-- - INSERT문의 SELECT절
-- - INSERT문의 VALUE절
-- - UPDATE문의 SET절

--* NEXTVAL 및 CURRVAL을 사용할 수 없는 경우
-- - VIEW의 SELECT절
-- - DISTINCT 키워드가 있는 SELECT문
-- - GROUP BY, HAVING, ORDER BY절이 있는 SELECT문
-- - SELECT, DELETE, UPDATE의 서브쿼리
-- - CREATE TABLE, ALTER TABLE 명령의 DEFAULT값

 -----------------------------------------------------------------------------230623---------------------------------------------------------------------------------------------
--시퀀스 적용예제
--addrmemo 테이블에 번호(ano), 이름(aname), 주소(addr), 전화번호(atel)
--번호에 시퀀스 적용(ano_seq)
--데이터 5개 정도 입력

create table addrmemo(
ano number,
aname varchar2(30),
addr varchar2(200),
atel varchar2(200));

--시퀀스 생성
create sequence ano_seq
increment by 1
start with 1
maxvalue 100
minvalue 1
cycle
cache 2;

drop sequence ano_seq;
select * from addrmemo;
insert into addrmemo values(ano_seq.nextval,'홍길동','서울시','010-1111-1111');-- 다음번호
select ano_seq.currval from dual;--현재 시퀀스 번호 확인

/
begin
    for i in 1..5 loop
        insert into addrmemo values(ano_seq.nextval,'홍길동','서울시','010-1111-1111');
    end loop;
end;
/

delete from addrmemo;

--시퀀스 예제 풀이
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

INSERT INTO ADDRMEMO VALUES(ANO_SEQ.NEXTVAL, 'AAA','서울특별시 금천구 ~~', '010-1234-5678');
INSERT INTO ADDRMEMO VALUES(ANO_SEQ.NEXTVAL, 'BBB','서울특별시 구로구 ~~', '010-8888-4234');
INSERT INTO ADDRMEMO VALUES(ANO_SEQ.NEXTVAL, 'CCC','서울특별시 동작구 ~~', '010-7677-2243');
INSERT INTO ADDRMEMO VALUES(ANO_SEQ.NEXTVAL, 'DDD','인천광역시 소래포구 ~~', '010-5432-1358');

SELECT *FROM ADDRMEMO;

--저장프로시저 precedure pl/sql(procedure language/sql) 오라클에서 제공하는 프로그래밍 언어
create table board2(
bid number,
btitle varchar2(30),
bcontent varchar2(100),
bwriter varchar2(20),
bstep number);

desc board2;

--시퀀스 만들기
create sequence board2_seq;

--시퀀스 삭제
drop sequence board2_seq;
select board2_seq.currval from dual;

select board2_seq.nextval from dual;

--데이터 입력
insert into board2 values(board2_seq.nextval,'big data','빅데이터 전망','hong1',3);

select * from board2;
commit;

--버퍼에 메시지 출력되도록 세팅
set serveroutput on;

insert into board2 values(board2_seq.nextval,'big data','빅데이터 전망','hong1',3);
--이 쿼리를 프로시저 적용하면서 이해
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

--프로시저 실행
exec brd2_insert('big data2','bbbb','hong2',5);
exec brd2_insert('big data5','bbbb5','hong5',5);

--프로시저 예제
--emp 테이블 적용
select * from emp;
--emp_insert
--8000 n TOM v ANALYST v 7839 n 날짜 3500 n 500 n 20 n
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
--ford sal 10000 수정
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

--미션 정답
--emp 테이블 적용
select * from emp;
--emp_insert
--8000 n TOM v  ANALYST v 7839 n  오늘날짜  3500 n  500 n  20 n
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

--SELECT 프로시저만들기
select * from employees;

--extract 발췌하다.
select extract(year from hire_date),hire_date from employees;

--입사일이 2003년인 사람들
select employee_id,last_name,hire_date from employees where extract(year from hire_date)=2003;

--프로시저 이름 yearselect
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
--변수 선언
    id employees.employee_id%type; --employees 테이블의 employee_id의 타입을 그대로 사용하겠다.
    name employees.last_name%type;
    hiredate employees.hire_date%type;
begin
    select employee_id,last_name,hire_date
-- into절 필요
    into id,name,hiredate
    from employees 
    where extract(year from hire_date)=p_year;
-- 스크립트에 출력
    dbms_output.put_line(id || ':' || name);
end;
/

exec yearselect(2001); -- 1개 레코드 가능
exec yearselect(2003); -- 여러개 레코드 읽기 불가

select * from employees;

--STEP3
/
create or replace procedure yearselect(
    p_year number   
)
is
--변수 선언
    emp employees%ROWTYPE;--테이블 통으로 타입가져오기
--커서 등록
    CURSOR EMP_CUR IS select employee_id,last_name,hire_date
    from employees 
    where extract(year from hire_date)=p_year;
begin
    LOOP
    
    END LOOP;
-- 스크립트에 출력
    dbms_output.put_line(id || ':' || name);
end;
/

exec yearselect(2001); -- 1개 레코드 가능
exec yearselect(2003); -- 여러개 레코드 읽기 불가

--STEP4
/
create or replace procedure yearselect(
    P_YEAR NUMBER
)
is
-- 변수선언
    emp employees%ROWTYPE;--테이블 통으로 타입가져오기
-- 커서등록
    CURSOR EMP_CUR IS SELECT EMPLOYEE_ID,LAST_NAME,HIRE_DATE
    FROM EMPLOYEES
    WHERE EXTRACT(YEAR FROM HIRE_DATE)=P_YEAR;
    
begin
-- 커서오픈
    OPEN EMP_CUR;
    LOOP
-- 데이터 읽기
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
--1개 레코드 가능
exec YEARSELECT(2003); 
--여러개 레코드 읽기 불능

--ALTER ★★★★★
--테이블과 같은 데이터 구조를 정의하는데 사용되는 명령어들로 (생성,변경,삭제,이름변경)
--데이터 구조와 관련된 명령어들을 말함.

CREATE TABLE USERS(
DEPTNAME VARCHAR2(50) NOT NULL,
USERNAME VARCHAR2(50),
ID NUMBER PRIMARY KEY,
SALARY NUMBER);

INSERT INTO USERS VALUES('영업팀','김영업',101,5000000);
INSERT INTO USERS VALUES('영업팀','박영업',102,3000000);
INSERT INTO USERS VALUES('영업팀','박인사',103,6000000);
INSERT INTO USERS VALUES('영업팀','최영업',104,2000000);
INSERT INTO USERS VALUES('영업팀','김총무',105,5000000);

--테이블 이름 변경
ALTER TABLE USERS RENAME TO USERNAME;
ALTER TABLE USERNAME RENAME TO USERS;

SELECT * FROM USERNAME;
SELECT * FROM USERS;

--칼럼 추가
ALTER TABLE USERS ADD(ADDR VARCHAR2(1000));

DESC USERS;

ALTER TABLE USERS ADD (POINT NUMBER);

--칼럼 삭제
ALTER TABLE USERS DROP COLUMN ADDR;
ALTER TABLE USERS DROP COLUMN POINT;

--칼럼 이름변경
--SALARY > SAL
ALTER TABLE USERS RENAME COLUMN SALARY TO SAL;

--SAL > PAY
ALTER TABLE USERS RENAME COLUMN SAL TO PAY;
ALTER TABLE USERS RENAME COLUMN PAY TO SALARY;
SELECT * FROM USERS;
DESC USERS;

--칼럼 타입변경 타입을 VARCHAR2에서 NUMBER로 바꿀 땐 안에 데이터가 없어야한다.
ALTER TABLE USERS MODIFY SALARY VARCHAR2(30);
ALTER TABLE USERS MODIFY SALARY NUMBER;

--USERNAME의 타입변경 같은 타입이지만 크기를 변경할 땐 데이터가 있어도 변경 가능
ALTER TABLE USERS MODIFY USERNAME VARCHAR2(60);
SELECT * FROM USERS;
DESC USERS;
-----------------------------------------------------------------------------------------
--서브쿼리 보충
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

--서브쿼리 FROM절에 사용
SELECT * FROM EMP WHERE DEPTNO=10;

SELECT E10.EMPNO,E10.ENAME,E10.DEPTNO
FROM (SELECT * FROM EMP WHERE DEPTNO=10) E10;

--JOIN 적용
SELECT E10.EMPNO,E10.ENAME,E10.DEPTNO,D.DNAME,D.LOC
FROM (SELECT * FROM EMP WHERE DEPTNO=10) E10,
(SELECT * FROM DEPT) D
WHERE E10.DEPTNO = D.DEPTNO;

--SELECT 절에 사용하기
SELECT GRADE FROM SALGRADE
WHERE E.SAL BETWEEN LOSAL AND HISAL;

--EMP테이블에 급여를 SALGRADE의 급여구간으로 나눈 GRADE를 참고해서 EMP테이블의 급여를 GRADE로 출력
SELECT EMPNO,ENAME,(SELECT GRADE FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL) AS SALGRADE
FROM EMP E ORDER BY SALGRADE;

SELECT * FROM SALGRADE;
SELECT * FROM EMP;

-----------------------------------------------------------------------------230626---------------------------------------------------------------------------------------------
-- 프로시저2 if문
SET SERVEROUTPUT ON;-- 프로시저 결과를 질의 결과에 출력하기위해 하는 명령어 기본값은 off
/
declare--=선언하다
    vnum number:=15;
begin
    if mod(vnum,2) = 1 then
        dbms_output.put_line(vnum || '는 홀수');
    else
        dbms_output.put_line(vnum || '는 짝수');
    end if;
end;
/

--case문
/
declare
    vnum number:=80;
begin
    case
        when vnum>=90 then dbms_output.put_line(vnum || ' : A등급');
        when vnum>=80 then dbms_output.put_line(vnum || ' : B등급');
        when vnum>=70 then dbms_output.put_line(vnum || ' : C등급');
        when vnum>=60 then dbms_output.put_line(vnum || ' : D등급');
        
    end case;
end;
/

--loop문 exit키워드가 있다.
/
declare
    vnum number:=4;
begin
    loop
           dbms_output.put_line('현재 vnum : ' || vnum);
           vnum := vnum + 1;-- :=은 대입 연산자
           exit when vnum > 5;
    end loop;
end;
/

--while문 exit키워드가 없다.
/
declare
    vnum number:=0;
begin
    while vnum < 5 loop
        dbms_output.put_line('현재 while vnum : ' || vnum);
        vnum := vnum + 1;
    end loop;
end;
/

--for문 vnum 변수가 없다.
/
declare
    
begin
    for i in 0..5 loop
        dbms_output.put_line('현재 for vnum : ' || i);
    end loop;
end;
/

--예외처리 vwrong을 number타입으로 선언했기때문에 dname은 varchar2타입이라 실행하면 예외발생
desc dept;
/
declare
    vwrong number;
begin
    select deptno into vwrong
    from dept where deptno = 10;
    dbms_output.put_line('예외 발생하고 실행 될까요?');
exception
    when value_error then
            dbms_output.put_line('예외 발생');        
end;
/

--join 보충
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

--join 처리
--등가 조인 equip join 테이블 2개
select s.name,b.subject_name from student2 s join subject b on s.subject_id = b.subject_id;

--3개 테이블 조인해서 점수별로 grade 출력
--ansi join
select s.name,b.subject_name,s.score,g.grade from student2 s join subject b on s.subject_id = b.subject_id
join grade g on s.score between g.min_score and g.max_score;

--Oracle join
select s.name,b.subject_name,s.score,g.grade from student2 s , subject b , grade g where s.subject_id = b.subject_id
and s.score between g.min_score and g.max_score;

--self join
--smith의 사수이름은 ford / join처리
select * from emp;

select e1.empno,e1.ename,e2.ename managername from emp e1 , emp e2 where e1.mgr = e2.empno order by e1.empno;

--trigger 방아쇠처럼 신호를 감지하고 그 신호에 반응해서 동작하는 쿼리
create table test01(
no number not null,
name varchar2(10),
a number,
b number);

insert into test01 values(1,'A',10,20);

--test01의 내용을 가지고 test02 테이블을 만들겠다.
create table test02
as
select * from test01;

select * from test01;
select * from test02;
commit;

--insert 트리거 만들기
--트리거란? 데이터베이스 이벤트에 반응하여 실행되는 프로그램 단위이다.
--주요 사용 목적은 테이블 데이터의 무결성 보장,데이터베이스 관리의 자동화이다.
--DML 트리거란? DML문 (insert,update,delete)이 테이블 하나 이상의 데이터에 영향을 미칠 때 자동으로 실행되는 트리거이다.
--DML 트리거 특징 
--1. 자동으로 실행되며 수동으로는 실행 불가
--2. 어떤 동작에서 실행되는지 지정해야한다.
--3. 작동이 일어난 트리거 대상 테이블에 대해서는 트리거 내용이 존재할 수 없다.
--4. BEFORE, AFTER 두 가지 트리거가 있다.
--5. 트랜잭션 일부로 처리된다. (COMMIT,ROLLBACK,SAVEPOINT 문장 포함 못 함)
/
create or replace trigger in_test02
    after insert on test01
    for each row
declare
--변수선언
begin
    insert into test02 values(:new.no,:new.name,:new.a,:new.b);    
end;
/

select * from test01;
select * from test02;

insert into test01 values(1,'A',10,20);--트리거 in_test02가 test01의 insert 신호를 받아 동작
insert into test01 values(300,'A',100,200);--트리거 in_test02가 test01의 insert 신호를 받아 동작

--delete trigger 만들기
/
create or replace trigger del_test02
    after delete on test01
    for each row
declare
--변수선언
begin
    delete test02 where no=:old.no;
end;
/

delete test01 where no=1;

--update trigger 만들기
/
create or replace trigger up_test02
    after update on test01
    for each row
declare
--변수선언
begin
    update test02 set no=:new.no where no=:old.no;
end;
/

delete test01 where no=1;

update test01 set no=50 where no=1;

select * from test01;
select * from test02;

--트리거 통합
/
CREATE OR REPLACE TRIGGER T_INDELUP_TEST02
    AFTER INSERT OR DELETE OR UPDATE ON TEST01
    FOR EACH ROW
DECLARE
--변수선언
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

insert into test01 values(1,'A',10,20);--트리거 in_test02가 test01의 insert신호를 받아 동작
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

--index 쿼리의 결과값을 효율적으로 검색 지원
--무조건 많은 인덱스를 설정하면 스플릿 현상으로 더 악영향 미친다.
select * from user_indexes;
select rowid,empno,ename from emp;

select * from employees;
select * from user_indexes
where table_name='EMPLOYEES';

--모니터링 시작
alter index EMP_EMP_ID_PK monitoring usage;

--사용여부 확인
select index_name,monitoring,used from v$object_usage where index_name = 'EMP_EMP_ID_PK';

--index 밸런싱 확인
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

--index 생성
create index idx_test6_no
on i_test6(no);

select * from user_indexes where table_name='I_TEST6';

--밸런싱 조회
select * from index_stats;
desc index_stats;

--분석 명령
analyze index IDX_TEST6_NO validate structure;
select del_lf_rows,lf_rows_len from index_stats;

--밸런스 조회
select (del_lf_rows_len/lf_rows_len)*100 balance from index_stats;
--0에 가까울수록 컨디션 좋음

--일부 데이터 삭제
delete from i_test6 where no between 3000 and 6000;

select count(*) from i_test6;
commit;

--밸런스 조회
select (del_lf_rows_len/lf_rows_len)*100 balance from index_stats;

--밸런스 초기화
alter index idx_test6_no rebuild;

select count(*) from bigemp;

--성능 테스트 테이블 준비
select * from bigemp order by dbms_random.value;

create table emp10
as
select * from bigemp order by dbms_random.value;

create table emp_idx
as
select * from bigemp order by dbms_random.value;

select count(*) from emp10;--index 없는 테이블
select count(*) from emp_idx;--index 추가할 테이블

--emp_idx 테이블에 index 추가하기
create index idx_empidx_empno on emp_idx(emp_no);

--테이블에 index 있는지 조회
select * from user_indexes where table_name='EMP10';
select * from user_indexes where table_name='EMP_IDX';

--성능 비교
--보통 index있는 테이블의 index 결과가 더 빨리 찾는다.
select * from emp10 where emp_no<10100;--0.004초
select * from emp_idx where emp_no<10100;--0.001~2초

select * from emp10 where emp_no=11100;--0.012초
select * from emp_idx where emp_no=11100;--0.005초

--LOCK 기능 확인하기
commit;
select * from emp;

--UPDATE 실행
update emp set ename = 'ALLEN' where empno=7499;

commit;
-----------------------------------------------------------------------------230627---------------------------------------------------------------------------------------------
--랜덤 데이터 만들기
--랜덤 넘버 생성 (양수, 음수)
select dbms_random.random from dual;

--랜덤 넘버 생성 (0~1)
select dbms_random.value from dual;

--랜덤 넘버 생성 (0~1000)
select dbms_random.value(1,1000) from dual;
select round(dbms_random.value(1,1000),0) "정수만 나오게" from dual;

--랜덤 문자 생성 (대문자)
select dbms_random.string('U',10) from dual;-- U는 대문자, 10은 길이

--랜덤 문자 생성 (소문자)
select dbms_random.string('L',10) from dual;-- l은 소문자

--랜덤 문자 생성 (대,소문자)
select dbms_random.string('A',10) from dual;-- A는 대,소문자

--랜덤 문자 생성 (숫자,영어 대문자)
select dbms_random.string('X',10) from dual;-- X는 숫자,영어 대문자

--랜덤 문자 생성 (출력가능한 문자)
select dbms_random.string('P',10) from dual;-- P는 키보드에 있는 문자 랜덤

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

--의미있는 테이블 만들기
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
    type tbl_ins is table of random5%rowtype index by binary_integer;--random5%type은 random5 테이블의 타입을 그대로 사용하겠다.
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
    type tbl_ins is table of random5%rowtype index by binary_integer;--random5%type은 random5 테이블의 타입을 그대로 사용하겠다.
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
cola number,--판매구분
colb date,--판매날짜
colc number,--옷의 종류(예를 들어 청바지1~청바지5)
cold number,--판매가격
cole number);--판매량

create index idx_cola on sale2(cola);

--step3
/
declare
    type tbl_ins is table of sale2%rowtype index by binary_integer;--sale2%type은 random5 테이블의 타입을 그대로 사용하겠다.
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

--통계처리
select colc,sum(cold)*sum(cole) "판매가격 총합" from sale2 group by colc order by colc;

select colc,round(sum(cold)*(sum(cole)/1000000)) "Total Price(100만 단위)" from sale2 group by colc order by colc;

--decode 함수 적용
select decode(colc,1,'청바지1',2,'청바지2',3,'청바지3',4,'청바지4',5,'청바지5') goods, 
round(sum(cold)*(sum(cole)/1000000)) "Total Price(100만 단위)" from sale2 group by colc order by goods;

--backup cmd창에서 해야하는 작업이다.
--hr계정 콘솔백업
C:\backuphr>exp userid=hr/123456@xe file=c:\backuphr\hralltable.dump
C:\backuphr>imp hr/123456@xe file=c:\backuphr\hralltable.dump--복원

--특정테이블 백업
C:\backuphr>exp userid=hr/123456@xe file=c:\backuphr\hrbigemptable.dump tables=bigemp
C:\backuphr>imp hr/123456@xe file=c:\backuphr\hrbigemptable.dump--복원

--복수개테이블 백업
C:\backuphr>exp userid=hr/123456@xe file=c:\backuphr\hr3table.dump tables=(bigemp,dept,emp)
C:\backuphr>imp userid=hr/123456@xe file=c:\backuphr\hr3table.dump tables=(bigemp,dept,emp)--복원

--꼼수로 테이블 삭제하는 법
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

--check option gender 필드엔 남,여 말고 다른 옵션이 들어갈 수 없다.
create table chtable(
name varchar2(10),
gender char(3) constraint emp_gender check(gender in('남','여')));

select * from chtable;

insert into chtable values('홍길동','여');

--check option 범위로 제약
create table chtable2(
name varchar2(10),
score number constraint chtable2_chk check(score between 50 and 100));

insert into chtable2 values('hong',30);

select * from chtable2;
---------------오라클 예제---------------
============================================================================================================================================================================
--<<오라클문제1>>

-- 1번 부서번호가 10번인 부서의 사람 중 사원번호, 이름, 월급을 출력하라.
select * from emp;
select empno,ename,sal,deptno from emp where deptno=10;

-- 2번 사원번호가 7369인 사람 중 이름, 입사일, 부서번호를 출력하라.
select ename,hiredate,deptno from emp where mgr='7369';

-- 3번 이름이 ALLEN인 사람의 모든 정보를 출력하라.
select * from emp where ename='ALLEN';

-- 4번 입사일이 83/01/12인 사원의 이름, 부서번호, 월급을 출력하라.
select ename,empno,sal from emp where hiredate='83-01-12';

-- 5번 직업이 MANAGER가 아닌 사람의 모든 정보를 출력하라.
select * from emp where job is not 'MANAGER';

-- 6번 입사일이 81/04/02 이후에 입사한 사원의 정보를 출력하라.
select * from emp where hiredate>'81-04-02';

-- 7번 급여가 $800 이상인 사람의 이름, 급여, 부서번호를 출력하라.
select ename,sal,deptno from emp where sal>800;

-- 8번 부서번호가 20번 이상인 사원의 모든 정보를 출력하라.
select * from emp where deptno>=20 order by deptno;

-- 9번 이름이 K로 시작하는 사람보다 높은 이름을 가진 사람의 모든 정보를 출력하라.
select * from emp where ename > 'K&';

-- 10번 입사일이 81/12/09 보다 먼저 입사한 사람들의 모든 정보를 출력하라.
select * from emp where hiredate<'81-12-09';

-- 11번 입사번호가 7698보다 작거나 같은 사람들의 입사번호와 이름을 출력하라.
select empno,ename from emp where 7698>=empno;

-- 12번 입사일이 81/04/02보다 늦고 82/12/09보다 빠른 사원의 이름, 월급, 부서번호를 출력하라.
select ename,sal,deptno,hiredate from emp where '82-12-09'>hiredate and '81-04-02'<hiredate order by hiredate;

-- 13번 급여가 $1,600보다 크고 $3,000보다 작은 사람의 이름, 직업, 급여를 출력하라.
select ename,job,sal from emp where sal>1600 and sal<3000;

-- 14번 사원번호가 7654와 7782 사이 이외의 사원의 모든 정보를 출력하라.
select * from emp where empno not between 7654 and 7782;

-- 15번 이름이 B와 J사이의 모든 사원의 정보를 출력하라.
select * from emp where ename between 'B%' and 'J%';

-- 16번 입사일이 81년 이외의 입사한 사람의 모든 정보를 출력하라.
select * from emp where hiredate not between to_date('1981-01-01','YY-MM-DD') and to_date('1981-12-31','YY-MM-DD');

-- 17번 직업이 MANAGER와 SALESMAN인 사람의 모든 정보를 출력하라.
select * from emp where job in ('MANAGER','SALESMAN');

-- 18번 부서번호가 20, 30번을 제외한 모든 사람의 이름, 사원번호, 부서번호를 출력하라.
select ename,empno,deptno from emp where not deptno in ('20','30');

-- 19번 S로 시작하는 사원의 사원번호, 이름, 입사일, 부서번호를 출력하라.
select empno,ename,hiredate,deptno from emp where ename like 'S%';

-- 20번 입사일이 81년도인 사람의 모든 정보를 출력하라.
select * from emp where hiredate between to_date('1981-01-01','YY-MM-DD') and to_date('1981-12-31','YY-MM-DD');

-- 21번 이름 중 S자가 들어가 있는 사람만 모든 정보를 출력하라.
select * from emp where ename like '%S%'; 

-- 22번 이름이 S로 시작하고 마지막 글자가 T인 사람의 모든 정보를 출력하라(단, 이름은 전체 5자리이다.)
select * from emp where ename like 'S___T';

-- 23번 첫 번째 문자는 관계없고, 두 번째 문자가 A인 사람의 정보를 출력하라.
select * from emp where ename like '_A%';

-- 24번 커미션이 NULL인 사람의 정보를 출력하라.
select * from emp where comm is null;

-- 25번 커미션이 NULL이 아닌 사람의 정보를 출력하라.
select * from emp where comm is not null;

-- 26번 부서가 30번 부서이고 급여가 $1,500 이상인 사람의 이름, 부서, 월급을 출력하라.
select ename,empno,sal from emp where deptno = 30 and sal >= 1500;

-- 27번 이름의 첫 글자가 K로 시작하거나 부서번호가 30인 사람의 사원번호, 이름, 부서번호를 출력하라.
select empno,ename,deptno from emp where ename like 'K%' or deptno=30;

-- 28번 급여가 $1500 이상이고 부서번호가 30번인 사원 중 직업이 MANAGER인 사람의 정보를 추력하라.
select * from emp where sal>=1500 and deptno=30 and job='MANAGER'; 

-- 29번 부서번호가 30인 사람 중 사원번호가 SORT.
select * from emp where deptno=30 order by empno;

-- 30번 급여가 많은 순으로 SORT하라.
select * from emp order by sal desc;

-- 31번 부서번호로 ASCENDING SORT  한 후 급여가 많은 사람 순으로 출력하라.
select deptno,sal from emp group by deptno,sal order by deptno asc, sal desc;
select * from emp order by deptno asc, sal desc;

-- 32번 부서 번호가 DESCENDING SORT하고, 이름 순으로 ASCENDING SORT, 급여순으로 DESCENDING SORT 하라.
select deptno,ename,sal from emp order by deptno desc, ename asc, sal desc;

-- 33번 EMP TABLE 에서 이름, 급여, 커미션 금액, 총액 (SAL + COMM) 을 구하여 총액이 많은 순서로 출력하라. 
-- 단 커미션이 NULL인 사람은 제외한다.
select ename,sal,comm,sal+nvl(comm,0) "총액" from emp;

-- 34번 10번 부서의 모든 사람들에게 급여의 13%를 보너스로 지불하기로 하였다. 이름, 급여, 보너스 금액, 부서번호를 출력하라.
select ename,sal,sal*0.13 bonus,deptno from emp where deptno=10;

-- 35번 30번 부서의 연봉을 계산하여 이름, 부서번호, 급여, 연봉을 출력하라.
-- 단 연말에 급여의 150%를 보너스로 지급한다.
select ename,deptno,sal,sal*0.15+(sal*12) "연봉" from emp where deptno=30;

-- 36번 부서번호가 20인 부서의 시간당 임금을 계산하여 출력하라.
-- 단 1달의 근무일수가 12일이고, 1일 근무시간은 5시간이다.
-- 출력양식은 이름, 급여, 시간당 임금(소수이하 첫 번째 자리에서 반올림)을 출력하라.
select ename,sal,round((sal/12)/5,0) "시간당 임금" from emp where deptno=20;

-- 37번 급여가 $1,500 부터 $ 3,000 사이의 사람은 급여가 15%를 회비로 지불하기로 하였다.
-- 이름, 급여, 회비(소수점 두 자리에서 반올림) 출력하라.
select ename,sal,round(sal*0.15,1) "회비" from emp where sal>=1500 and sal<=3000;

-- 38번 급여가 $2,000 이상인 모든 사람은 급여가 15%를 경보비로 내기로 하였다.
-- 이름, 급여, 경조비 를 출력하라.
select ename,sal,sal*0.15 "경조비" from emp where sal>=2000;

-- 39번 입사일 부터 지금까지의 날짜수를 출력하라. 부서번호, 이름, 입사일, 현재일, 
-- 근무일수(소수점 이하 절삭), 근무년수, 근무월수(30일 기준), 근무주수를 출력하라.
select deptno,ename,hiredate,sysdate,trunc((sysdate-hiredate),0) "근무일수",
trunc((sysdate-hiredate)/365,0) "근무년수",trunc((sysdate-hiredate)/30,0) "근무월수",
trunc((sysdate-hiredate)/4,0) "근무주수" from emp;

-- 40번 모든 사원의 실수령액을 계산하여 출력하라. 
-- 단 급여가 많은 순으로 이름, 급여, 실수령액을 출력하라
-- (실수령액은 급여에 대해 10%의 세금을 뺸 금액)
select ename,sal,sal-(sal*0.1) "실수령액" from emp order by sal desc;

-- 41번 입사일로부터 90일이 지난 후의 사원이름, 입사일, 90일 후의 날, 급여를 출력하라.
select ename,hiredate,hiredate+90 "90일 후의 날",sal from emp;

-- 42번 입사일로 부터 6개월이 지난 후의 입사일, 6개월 후의 날짜, 급여를 출력하라.
select hiredate,add_months(hiredate,6) "6개월 후의 날짜",sal from emp;

-- 43번 입사한 달의 근무일수를 계산하여 부서번호, 이름, 근무일수를 출력하라.
select deptno,ename,last_day(hiredate)-hiredate "근무일수" from emp;

-- 44번 모든 사원의 60일이 지난 후의 MONDAY 는 몇 년 , 몇 월, 몇 일 인가를 구하여
-- 이름, 입사일, MONDAY를 출력하라.
select ename,hiredate,next_day((hiredate+60),'월요일') MONDAY from emp;
 
-- 45번 입사일로부터 오늘까지의 일수를 구하여 이름, 입사일, 근무일수를 출력하라.
select ename,hiredate,trunc(sysdate-hiredate,0) workday from emp;

-- 46번 입사일을 1996년 5월 14일 의 형태로 이름, 입사일을 출력하라.
select ename, to_char(hiredate,'YYYY"년"MM"월"DD"일"') "입사일" from emp;

-- 47번 이름의 글자수가 6자 이상인 사람의 이름을 앞에서 3자리만 구하여 소문자로 이름만을 출력하라.
select substr(lower(ename),1,3) "이름" from emp where length(ename)>=6;

-- 48번 10번 부서 월급의 평균, 최고, 최저, 인원수를 구하여 출력하라.
select trunc(avg(sal),0) avg,max(sal) max,min(sal) min,count(sal) "인원 수" from e mp where deptno=10;

-- 49번 각 부서별 급여의 평균, 최고, 최저, 인원수를 구하여 출력하라.
select deptno,trunc(avg(sal),0) avg ,max(sal) max ,min(sal) min ,count(sal) count from emp group by deptno;

-- 50번 각 부서별 같은 업무를 하는 사람의 인원수를 구하여 부서번호, 업무명, 인원수를 출력하라.
select deptno,job,count(*) "인원 수" from emp group by deptno,job order by deptno;

-- 51번 같은 업무를 하는 사람의 수가 4명 이상인 업무와 인원수를 출력하라.
select job,count(job) from emp group by job having count(job) >= 4;

-- 52번 각 부서별 평균 월급, 전체 월급, 최고 월급, 최저 월급 을 구하여 평균 월급이 많은 순으로 출력하라.
select deptno,trunc(avg(sal)) avg,sum(sal),max(sal),min(sal) from emp group by deptno order by avg desc;

-- 53번 EMP와 DEPT TABLE 을 JOIN하여 부서번호, 부서명, 이름, 급여를 출력하라.
select e.deptno,d.dname,e.ename,e.sal from emp e inner join dept d on e.deptno = d.deptno;

-- 54번 이름이 ALLEN인 사원의 부서명을 출력하라.
select e.deptno,e.ename,d.dname from emp e inner join dept d on e.deptno = d.deptno where e.ename='ALLEN';

-- 55번 DEPT TABLE 에 있는 모든 부서를 출력하고, EMP  TABLE 에 있는 DATA와 JOIN하여 
-- 모든 사원의 이름, 부서번호, 부서명, 급여를 출력하라.
select e.ename,e.deptno,d.dname,e.sal from emp e full outer join dept d on e.deptno = d.deptno order by deptno;

--정답
-- 1번 부서번호가 10번인 부서의 사람 중 사원번호, 이름, 월급을 출력하라.

SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
SAL AS 월급
FROM EMP
WHERE DEPTNO = 10;

-- 2번 사원번호가 7369인 사람 중 이름, 입사일, 부서번호를 출력하라.

SELECT 
ENAME AS 이름,
HIREDATE AS 입사일,
DEPTNO AS 부서번호
FROM EMP
WHERE EMPNO = 7369;


-- 3번 이름이 ALLEN인 사람의 모든 정보를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE ENAME = 'ALLEN';


-- 4번 입사일이 83/01/12인 사원의 이름, 부서번호, 월급을 출력하라.
SELECT 
ENAME AS 이름,
DEPTNO AS 부서번호,
SAL AS 급여
FROM EMP
WHERE HIREDATE = '80/12/17';

--ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY/MM/DD';

--SELECT 
--ENAME AS 이름,
--DEPTNO AS 부서번호,
--SAL AS 급여
--FROM EMP
--WHERE HIREDATE = '1983/01/12';

-- 5번 직업이 MANAGER가 아닌 사람의 모든 정보를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE JOB <> 'MANAGER';


-- 6번 입사일이 81/04/02 이후에 입사한 사원의 정보를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE HIREDATE > '81/04/02';


-- 7번 급여가 $800 이상인 사람의 이름, 급여, 부서번호를 출력하라.
SELECT 
ENAME AS 이름,
SAL AS 급여,
DEPTNO AS 부서번호
FROM EMP
WHERE SAL >= 800;


-- 8번 부서번호가 20번 이상인 사원의 모든 정보를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE DEPTNO = 20;


-- 9번 이름이 K로 시작하는 사람보다 높은 이름을 가진 사람의 모든 정보를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE ENAME >= CHR(ASCII('K')+1);

--WHERE UPPER(ENAME) >= CHR(ASCII('K')+1);
INSERT INTO EMP VALUES(9000, 'L',   'PRESIDENT', NULL, TO_DATE('17-11-1981', 'DD-MM-YYYY'), 5000, NULL, 10);
추가해서 내용확인
--해설‘K’+1을 할 수없으니 아스키로 변형후 더하기 그리고 chr로 변형

-- 10번 입사일이 81/12/09 보다 먼저 입사한 사람들의 모든 정보를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE HIREDATE < '81/12/09';


-- 11번 입사번호가 7698보다 작거나 같은 사람들의 입사번호와 이름을 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE EMPNO <= 7698;


-- 12번 입사일이 81/04/02보다 늦고 82/12/09보다 빠른 사원의 이름, 월급, 부서번호를 출력하라.
SELECT 
ENAME AS 이름,
SAL AS 급여,
DEPTNO AS 부서번호
FROM EMP
WHERE HIREDATE > '81/04/02' AND HIREDATE < '82/12/09';



-- 13번 급여가 $1,600보다 크고 $3,000보다 작은 사람의 이름, 직업, 급여를 출력하라.

SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE SAL >1600 AND SAL < 3000;


-- 14번 사원번호가 7654와 7782 사이 이외의 사원의 모든 정보를 출력하라.

SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE EMPNO > 7654 AND EMPNO < 7782;


-- 15번 이름이 B와 J사이의 모든 사원의 정보를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE ENAME > CHR(ASCII('B')+1) AND ENAME < 'J';

-- 16번 입사일이 81년 이외의 입사한 사람의 모든 정보를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE SUBSTR(HIREDATE, 1, 2) <> '81';


-- 17번 직업이 MANAGER와 SALESMAN인 사람의 모든 정보를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE JOB = 'MANAGER' OR JOB = 'SALESMAN';


-- 18번 부서번호롸 20, 30번을 제외한 모든 사람의 이름, 사원번호, 부서번호를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE DEPTNO <> 20 AND DEPTNO <> 30;


-- 19번 S로 시작하는 사원의 사원번호, 이름, 입사일, 부서번호를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
HIREDATE AS 입사일,
DEPTNO AS 부서번호
FROM EMP
WHERE ENAME LIKE 'S%';


-- 20번 입사일이 81년도인 사람의 모든 정보를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
HIREDATE AS 입사일,
DEPTNO AS 부서번호
FROM EMP
WHERE SUBSTR(HIREDATE, 1, 2) = '81';


-- 21번 이름 중 S자가 들어가 있는 사람만 모든 정보를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
HIREDATE AS 입사일,
DEPTNO AS 부서번호
FROM EMP

--WHERE UPPER(ENAME) LIKE '%S%';
WHERE ENAME LIKE '%S%';



-- 22번 이름이 S로 시작하고 마지막 글자가 T인 사람의 모든 정보를 출력하라(단, 이름은 전체 5자리이다.)
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
HIREDATE AS 입사일,
DEPTNO AS 부서번호
FROM EMP
--WHERE ENAME LIKE 'S___T';
WHERE ENAME LIKE 'S%' AND SUBSTR(ENAME, -1,1) = 'T' ;


-- 23번 첫 번쨰 문자는 관계없고, 두 번쨰 문자가 A인 사람의 정보를 출력하라.

SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP

--WHERE SUBSTR(ENAME, 2, 1) = 'A';
WHERE ENAME LIKE '_A%';


-- 24번 커미션이 NULL인 사람의 정보를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE COMM IS NULL;


-- 25번 커미션이 NULL이 아닌 사람의 정보를 출력하라.

SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE COMM IS NOT NULL;

-- 26번 부서가 30번 부서이고 급여가 $1,500 이상인 사람의 이름, 부서, 월급을 출력하라.
SELECT 
ENAME AS 이름,
SAL AS 급여,
DEPTNO AS 부서번호,
COMM AS 커미션
FROM EMP
WHERE DEPTNO = 30 AND SAL >= 1500;


-- 27번 이름의 첫 글자가 K로 시작하거나 부서번호가 30인 사람의 사원번호, 이름, 부서번호를 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
DEPTNO AS 부서번호
FROM EMP
WHERE ENAME LIKE 'K%' OR DEPTNO = 30;


-- 28번 급여가 $1500 이상이고 부서번호가 30번인 사원 중 직업이 MANAGER인 사람의 정보를 추력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE DEPTNO = 30 AND JOB = 'MANAGER';


-- 29번 부서번호가 30인 사람 중 사원번호가 SORT.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
WHERE DEPTNO = 30
--ORDER BY DEPTNO ASC;
ORDER BY DEPTNO; --  기본 값이 ASC(오름차순임)


-- 30번 급여가 많은 순으로 SORT하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
ORDER BY SAL DESC;

-- 31번 부서번호로 ASCENDING SORT  한 후 급여가 많은 사람 순으로 출력하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
ORDER BY DEPTNO, SAL DESC;


-- 32번 부서 번호가 DESCENDING SORT하고, 이름 순으로 ASCENDING SORT, 급여순으로 DESCENDING SORT 하라.
SELECT 
EMPNO AS 사원번호,
ENAME AS 이름,
JOB AS 직무,
MGR AS 매니저,
HIREDATE AS 입사일,
SAL AS 급여,
COMM AS 커미션,
DEPTNO AS 부서번호
FROM EMP
ORDER BY DEPTNO DESC, ENAME, SAL DESC;


-- 33번 EMP TABLE 에서 이름, 급여, 커미션 금액, 총액 (SAL + COMM) 을 구하여 총액이 많은 순서로 출력하라. 
-- 단 커미션이 NULL인 사람은 제외한다.
SELECT 
ENAME AS 이름,
SAL AS 급여,
COMM AS 커미션,
(SAL + COMM) AS 총액
FROM EMP
WHERE COMM IS NOT NULL;


-- 34번 10번 부서의 모든 사람들에게 급여의 13%를 보너스로 지불하기로 하였다. 이름, 급여, 보너스 금액, 부서번호를 출력하라.
SELECT 
ENAME AS 이름,
SAL AS 급여,
(SAL * 0.13) AS "보너스 금액",
DEPTNO AS 부서번호
FROM EMP
WHERE DEPTNO = 10;

-- 35번 30번 부서의 연봉을 계산하여 이름, 부서번호, 급여, 연봉을 출력하라.
-- 단 연말에 급여의 150%를 보너스로 지급한다.
SELECT 
ENAME AS 이름,
DEPTNO AS 부서번호,
SAL AS 급여,
((SAL * 12) + (SAL * 1.5)) AS 연봉
FROM EMP
WHERE DEPTNO = 30;


-- 36번 부서번호가 20인 부서의 시간당 임금을 계산하여 출력하라.
-- 단 1달의 근무일수가 12일이고, 1일 근무시간은 5시간이다.
-- 출력양식은 이름, 급여, 시간당 임금(소수이하 첫 번째 자리에서 반올림)을 출력하라.
SELECT 
ENAME AS 이름,
SAL AS 급여,
ROUND(((SAL/12)/5), 1) AS "시간당 임금"
FROM EMP
WHERE DEPTNO = 20;


-- 37번 급여가 $1,500 부터 $ 3,000 사이의 사람은 급여가 15%를 회비로 지불하기로 하였다.
-- 이름, 급여, 회비(소수점 두 자리에서 반올림) 출력하라.

SELECT 
ENAME AS 이름,
SAL AS 급여,
ROUND((SAL * 0.15),2) AS 회비
FROM EMP
WHERE SAL >= 1500 AND SAL <= 3000;


-- 38번 급여가 $2,000 이상인 모든 사람은 급여가 15%를 경보비로 내기로 하였다.
-- 이름, 급여, 경조비 를 출력하라.
SELECT 
ENAME AS 이름,
SAL AS 급여,
(SAL * 0.15) AS 경조비
FROM EMP
WHERE SAL >= 2000;


-- 39번 입사일 부터 지금까지의 날짜수를 출력하라. 부서번호, 이름, 입사일, 현재일, 
-- 근무일수(소수점 이하 절삭), 근무년수, 근무월수(30일 기준), 근무주수를 출력하라.
SELECT 
DEPTNO AS 부서번호,
ENAME AS 이름,
HIREDATE AS 입사일,
SYSDATE AS 현재일,
--TRUNC(SYSDATE-HIREDATE, 0) AS 근무일수
--TRUNC(SYSDATE-HIREDATE) AS 근무일수
FLOOR(SYSDATE-HIREDATE) AS 근무일수,
--TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE) / 12) AS 근무년도,

FLOOR(MONTHS_BETWEEN(SYSDATE, HIREDATE) / 12) AS 근무년수,
FLOOR(MONTHS_BETWEEN(SYSDATE, HIREDATE)) AS 근무월수,
FLOOR(MONTHS_BETWEEN(SYSDATE, HIREDATE) * 7) AS 근무주수
FROM EMP;

-- 40번 모든 사원의 실수령액을 계산하여 출력하라. 
-- 단 급여가 많은 순으로 이름, 급여, 실수령액을 출력하라
-- (실수령액은 급여에 대해 10%의 세금을 뺸 금액)

SELECT 
ENAME AS 이름,
SAL AS 급여,
(SAL) - (SAL * 0.1) AS 경조비
FROM EMP;

-- 41번 입사일로부터 90일이 지난 후의 사원이름, 입사일, 90일 후의 날, 급여를 출력하라.
SELECT 
ENAME AS 이름,
HIREDATE AS 입사일,
HIREDATE + 90 AS "90일 후",
SAL AS 급여
FROM EMP;

-- 42번 입사일로 부터 6개월이 지난 후의 입사일, 6개월 후의 날짜, 급여를 출력하라.
SELECT 
HIREDATE AS 입사일,
ADD_MONTHS(HIREDATE, 6) AS "6개월 후",
SAL AS 급여
FROM EMP;


-- 43번 입사한 달의 근무일수를 계산하여 부서번호, 이름, 근무일수를 출력하라.
SELECT 
DEPTNO AS 부서번호,
ENAME AS 이름,
LAST_DAY(HIREDATE) - HIREDATE AS "입사한 달 근무 일수"
FROM EMP;

-- 44번 모든 사원의 60일이 지난 후의 MONDAY 는 몇 년 , 몇 월, 몇 일 인가를 구하여
-- 이름, 입사일, MONDAY를 출력하라.
SELECT 
ENAME AS 이름,
HIREDATE AS 입사일,
NEXT_DAY(HIREDATE + 60,'월') AS MONDAY
FROM EMP;


-- 45번 입사일로부터 오늘까지의 일수를 구하여 이름, 입사일, 근무일수를 출력하라.
SELECT 
ENAME AS 이름,
HIREDATE AS 입사일,
TRUNC(SYSDATE-HIREDATE) AS 근무일수
FROM EMP;


-- 46번 입사일을 1996년 5월 14일 의 형태로 이름, 입사일을 출력하라.

SELECT 
ENAME AS 이름,
TO_CHAR(HIREDATE, 'YYYY"년 "MM"월 "DD"일"') AS 입사일
FROM EMP;


-- 47번 이름의 글자수가 6자 이상인 사람의 이름을 앞에서 3자리만 구하여 소문자로 이름만을 출력하라.
SELECT 
ENAME AS 이름,
LOWER(SUBSTR(ENAME,1 ,3)) AS "소문자 변환"
FROM EMP
WHERE LENGTH(ENAME) >= 6;


-- 48번 10번 부서 월급의 평균, 최고, 최저, 인원수를 구하여 출력하라.
SELECT 
--TRUNC(AVG(SAL)) AS 평균,
ROUND(AVG(SAL), 1) AS 평균,
MAX(SAL) AS 최고,
MIN(SAL) AS 최저,
COUNT(*) AS 인원수
FROM EMP
WHERE DEPTNO = 10;


-- 49번 각 부서별 급여의 평균, 최고, 최저, 인원수를 구하여 출력하라.
SELECT 
--TRUNC(AVG(SAL)) AS 평균,
ROUND(AVG(SAL), 1) AS 평균,
MAX(SAL) AS 최고,
MIN(SAL) AS 최저,
COUNT(*) AS 인원수,
DEPTNO AS 부서번호
FROM EMP
GROUP BY DEPTNO;


-- 50번 각 부서별 같은 업무를 하는 사람의 인원수를 구하여 부서번호, 업무명, 인원수를 출력하라.
SELECT 
DEPTNO AS 부서번호,
JOB AS 업무명,
COUNT(*) AS 인원수
FROM EMP
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO;


-- 51번 같은 업무를 하는 사람의 수가 4명 이상인 업무와 인원수를 출력하라.
SELECT 
JOB AS 업무,
COUNT(*) AS 인원수
FROM EMP
GROUP BY JOB
HAVING COUNT(*) >= 4;

-- 52번 각 부서별 평균 월급, 전체 원급, 최고 원급, 최저 월급 을 구하여 평균 원급이 많은 순으로 출력하라.
SELECT 
DEPTNO AS 부서번호,
ROUND(AVG(SAL), 1) AS "평균 월급",
MAX(SAL) AS "최고 월급",
MIN(SAL) AS "최저 월급"
FROM EMP
GROUP BY DEPTNO
ORDER BY "평균 월급" DESC;


-- 53번 EMP와 DEPT TABLE 을 JOIN하여 부서번호, 부서명, 이름, 급여를 출력하라.
SELECT 
A.DEPTNO AS 부서번호,
B.DNAME AS 부서명,
A.ENAME AS 이름,
A.SAL AS  급여
FROM EMP A, DEPT B
WHERE A.DEPTNO = B.DEPTNO;


-- 54번 이름이 ALLEN인 사원의 부서명을 출력하라.
SELECT 
B.DNAME AS 부서명
FROM EMP A, DEPT B
WHERE A.DEPTNO = B.DEPTNO
AND A.ENAME = 'ALLEN';


-- 55번 DEPT TABLE 에 있는 모든 부서를 출력하고, EMP  TABLE 에 있는 DATA와 JOIN하여 
-- 모든 사원의 이름, 부서번호, 부서명, 급여를 출력하라.
SELECT 
A.ENAME AS 이름,
A.DEPTNO AS 부서번호,
B.DNAME AS 부서명,
A.SAL AS  급여
FROM EMP A, DEPT B
WHERE A.DEPTNO = B.DEPTNO;
