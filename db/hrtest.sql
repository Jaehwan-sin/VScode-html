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
select ename,sal,round(sal*0.15,1) "ȸ��" from emp where sal >= 1500 and sal <= 3000;
--13.
select ename,sal,sal-(sal*0.1) "�Ǽ��ɾ�" from emp order by sal desc;
--14.
select substr(lower(ename),1,3) from emp where length(ename) >= 6;
--15.
select avg(sal),max(sal),min(sal),count(sal) from emp group by deptno;
--16.
select e.deptno,d.dname,e.ename,e.sal from emp e inner join dept d on e.deptno = d.deptno;
--17.
from where group by having select order by


-- 5�� ������ MANAGER�� �ƴ� ����� ��� ������ ����϶�.
select * from emp where job is not 'MANAGER';

-- 6�� �Ի����� 81/04/02 ���Ŀ� �Ի��� ����� ������ ����϶�.
select * from emp where hiredate>'81-04-02';

-- 7�� �޿��� $800 �̻��� ����� �̸�, �޿�, �μ���ȣ�� ����϶�.
select ename,sal,deptno from emp where sal>800;

-- 9�� �̸��� K�� �����ϴ� ������� ���� �̸��� ���� ����� ��� ������ ����϶�.
select * from emp where ename > 'K&';

-- 14�� �����ȣ�� 7654�� 7782 ���� �̿��� ����� ��� ������ ����϶�.
select * from emp where empno not between 7654 and 7782;

-- 17�� ������ MANAGER�� SALESMAN�� ����� ��� ������ ����϶�.
select * from emp where job in ('MANAGER','SALESMAN');

-- 18�� �μ���ȣ�� 20, 30���� ������ ��� ����� �̸�, �����ȣ, �μ���ȣ�� ����϶�.
select ename,empno,deptno from emp where not deptno in ('20','30');

-- 21�� �̸� �� S�ڰ� �� �ִ� ����� ��� ������ ����϶�.
select * from emp where ename like '%S%'; 

-- 25�� Ŀ�̼��� NULL�� �ƴ� ����� ������ ����϶�.
select * from emp where comm is not null;

-- 27�� �̸��� ù ���ڰ� K�� �����ϰų� �μ���ȣ�� 30�� ����� �����ȣ, �̸�, �μ���ȣ�� ����϶�.
select empno,ename,deptno from emp where ename like 'K%' or deptno=30;

-- 31�� �μ���ȣ�� ASCENDING SORT  �� �� �޿��� ���� ��� ������ ����϶�.
select deptno,sal from emp group by deptno,sal order by deptno asc, sal desc;
select * from emp order by deptno asc, sal desc;

-- 37�� �޿��� $1,500 ���� $ 3,000 ������ ����� �޿��� 15%�� ȸ��� �����ϱ�� �Ͽ���.
-- �̸�, �޿�, ȸ��(�Ҽ��� �� �ڸ����� �ݿø�) ����϶�.
select ename,sal,round(sal*0.15,1) "ȸ��" from emp where sal>=1500 and sal<=3000;

-- 40�� ��� ����� �Ǽ��ɾ��� ����Ͽ� ����϶�. 
-- �� �޿��� ���� ������ �̸�, �޿�, �Ǽ��ɾ��� ����϶�
-- (�Ǽ��ɾ��� �޿��� ���� 10%�� ������ �A �ݾ�)
select ename,sal,sal-(sal*0.1) "�Ǽ��ɾ�" from emp order by sal desc;

-- 47�� �̸��� ���ڼ��� 6�� �̻��� ����� �̸��� �տ��� 3�ڸ��� ���Ͽ� �ҹ��ڷ� �̸����� ����϶�.
select substr(lower(ename),1,3) "�̸�" from emp where length(ename)>=6;0

-- 49�� �� �μ��� �޿��� ���, �ְ�, ����, �ο����� ���Ͽ� ����϶�.
select deptno,trunc(avg(sal),0) avg ,max(sal) max ,min(sal) min ,count(sal) count from emp group by deptno;

-- 53�� EMP�� DEPT TABLE �� JOIN�Ͽ� �μ���ȣ, �μ���, �̸�, �޿��� ����϶�.
select e.deptno,d.dname,e.ename,e.sal from emp e inner join dept d on e.deptno = d.deptno;
