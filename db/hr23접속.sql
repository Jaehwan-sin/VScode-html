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

--230619
--null 조회 null 값 조회 시 is null 로 조회한다.
select * from emp;
select * from emp where comm is null;

--mgr값 null 조회
select * from emp where mgr is null;

--null이 아닌 값 조회 is not null 사용
select * from emp where comm is not null;

--복습 입사일이 82 1 1 이후이고 sal이 1300 이상인 사원의 정보 조회
select * from emp where hiredate > '1982-1-1' and sal > 1300;

--급여가 1000 초과하고 커미션이 1000 미만이거나 커미션이 null인 사번, 이름, 급여, 커미션 조회
select * from emp where sal > 1000 or comm < 1000 or comm is null;






















