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

--aliasing 별칭
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
--   - dual 테이블은 사용자가 함수(계산)를 실행할 때 임시로 사용하는데 적합하다.
--   - 함수에 대한 쓰임을 알고 싶을때 특정 테이블을 생성할 필요없이 dual 테이블을 이용하여 함수의 값을 리턴(return)받을 수 있다.
   
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
select tel from student;
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
select sal,comm,sal+nvl(comm,0) from emp;

--nvl2 ★★★★★★
--nvl2(col1,col2,col3) col1이 null이 아니면 col2, col1이 null이면 col3이다.
select ename,sal from emp;
select ename,sal,nvl2(comm,sal+comm,sal+0) from emp;

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



















