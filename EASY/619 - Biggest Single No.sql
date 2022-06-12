create table emp12(num int);
insert into emp12(num) values(8), (8), (3), (3), (1), (4), (5), (6);


select max(num) as num
from
    (select num
    from emp12
    group by num
    having count(num) = 1) n