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
--view Ȱ��
--view�� �������̺��� �ǹ�, ���� ���̺��� �����Ͱ� ��������� �信�� �����Ͱ� ����
--���� ���̺��� �����͸� �ҷ����� ������ ����
--�Ϲ������� �����͸� ��ȸ�� �������� ���

create view aview
as
select empno,ename,hiredate from emp;