create table Employee_181(id int, name varchar(20), salary double, manager_id int);
insert into Employee_181(id, name, salary, manager_id) values(1, 'Joe', 70000, 3), (2, 'Henry', 80000, 4), (3, 'Sam', 60000, NULL), (4, 'Max', 90000, NULL);


select a.name as employee
from Employee_181 a
left join Employee_181 b 
on (a.manager_id = b.id)
where (a.salary > b.salary);


select a.name as employee
from Employee_181 a, Employee_181 b 
where (a.manager_id = b.id)
and (a.salary > b.salary);