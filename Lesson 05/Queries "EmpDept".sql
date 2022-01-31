--12
select *
from emp
where deptno = 30
order by sal desc;
--13
select *
from emp
order by job, sal;
--14
select *
from emp
order by extract(year from to_date(hiredate, 'DD-MM-YYYY')) desc, ename;
--15
select *
from emp
where job = 'SALESMAN'
order by comm / sal;
--16
select avg(sal), deptno
from emp
group by deptno;
--17
select 12 * avg(sal), job
from emp
group by job
having count(*) > 2;
--18
select deptno
from emp
where job = 'CLERK'
group by deptno
having count(*) >= 2;
--19
select avg(comm + sal)
from emp
where deptno = 30;