show user;
select * from emp;
select * from dept;

--1.
select * from emp where not job='MANAGER';
--2.
select * from emp where hiredate > '1981-04-02';
--3.
select ename,sal,deptno from emp where sal>=800;
--4.
select * from emp where ename > 'K%';
--5.
select * from emp where not empno between 7654 and 7782;
--6.
select * from emp where job in ('MANAGER','SALESMAN');
--7.
select ename,empno,deptno from emp where not deptno in ('20','30');
--8.
select * from emp where ename like ('%S%');
--9.
select * from emp where comm is not null;
--10.
select empno,ename,deptno from emp where ename='K' or deptno=30;
--11.
select sal,deptno from emp group by deptno,sal order by deptno asc, sal desc;
--12.
select ename,sal,round(sal*0.15,1) "회비" from emp where sal >= 1500 and sal <= 3000;
--13.
select ename,sal,sal-(sal*0.1) "실수령액" from emp order by sal desc;
--14.
select substr(lower(ename),1,3) from emp where length(ename) >= 6;
--15.
select avg(sal),max(sal),min(sal),count(sal) from emp group by deptno;
--16.
select e.deptno,d.dname,e.ename,e.sal from emp e inner join dept d on e.deptno = d.deptno;
--17.
from where group by having select order by


-- 5번 직업이 MANAGER가 아닌 사람의 모든 정보를 출력하라.
select * from emp where job is not 'MANAGER';

-- 6번 입사일이 81/04/02 이후에 입사한 사원의 정보를 출력하라.
select * from emp where hiredate>'81-04-02';

-- 7번 급여가 $800 이상인 사람의 이름, 급여, 부서번호를 출력하라.
select ename,sal,deptno from emp where sal>800;

-- 9번 이름이 K로 시작하는 사람보다 높은 이름을 가진 사람의 모든 정보를 출력하라.
select * from emp where ename > 'K&';

-- 14번 사원번호가 7654와 7782 사이 이외의 사원의 모든 정보를 출력하라.
select * from emp where empno not between 7654 and 7782;

-- 17번 직업이 MANAGER와 SALESMAN인 사람의 모든 정보를 출력하라.
select * from emp where job in ('MANAGER','SALESMAN');

-- 18번 부서번호가 20, 30번을 제외한 모든 사람의 이름, 사원번호, 부서번호를 출력하라.
select ename,empno,deptno from emp where not deptno in ('20','30');

-- 21번 이름 중 S자가 들어가 있는 사람만 모든 정보를 출력하라.
select * from emp where ename like '%S%'; 

-- 25번 커미션이 NULL이 아닌 사람의 정보를 출력하라.
select * from emp where comm is not null;

-- 27번 이름의 첫 글자가 K로 시작하거나 부서번호가 30인 사람의 사원번호, 이름, 부서번호를 출력하라.
select empno,ename,deptno from emp where ename like 'K%' or deptno=30;

-- 31번 부서번호로 ASCENDING SORT  한 후 급여가 많은 사람 순으로 출력하라.
select deptno,sal from emp group by deptno,sal order by deptno asc, sal desc;
select * from emp order by deptno asc, sal desc;

-- 37번 급여가 $1,500 부터 $ 3,000 사이의 사람은 급여가 15%를 회비로 지불하기로 하였다.
-- 이름, 급여, 회비(소수점 두 자리에서 반올림) 출력하라.
select ename,sal,round(sal*0.15,1) "회비" from emp where sal>=1500 and sal<=3000;

-- 40번 모든 사원의 실수령액을 계산하여 출력하라. 
-- 단 급여가 많은 순으로 이름, 급여, 실수령액을 출력하라
-- (실수령액은 급여에 대해 10%의 세금을 뺸 금액)
select ename,sal,sal-(sal*0.1) "실수령액" from emp order by sal desc;

-- 47번 이름의 글자수가 6자 이상인 사람의 이름을 앞에서 3자리만 구하여 소문자로 이름만을 출력하라.
select substr(lower(ename),1,3) "이름" from emp where length(ename)>=6;0

-- 49번 각 부서별 급여의 평균, 최고, 최저, 인원수를 구하여 출력하라.
select deptno,trunc(avg(sal),0) avg ,max(sal) max ,min(sal) min ,count(sal) count from emp group by deptno;

-- 53번 EMP와 DEPT TABLE 을 JOIN하여 부서번호, 부서명, 이름, 급여를 출력하라.
select e.deptno,d.dname,e.ename,e.sal from emp e inner join dept d on e.deptno = d.deptno;
