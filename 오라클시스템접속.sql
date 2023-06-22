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
--view 활용
--view란 가상테이블을 의미, 원래 테이블은 데이터가 들어있지만 뷰에는 데이터가 없고
--원본 테이블에서 데이터를 불러오는 쿼리만 존재
--일반적으로 데이터를 조회할 목적으로 사용

create view aview
as
select empno,ename,hiredate from emp;