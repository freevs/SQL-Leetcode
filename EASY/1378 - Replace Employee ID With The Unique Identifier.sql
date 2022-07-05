create table employees_1378(id int, name varchar(10));
insert into employees_1378(id, name) values(1, 'Alice'), (7, 'Bob'), (11, 'Meir'), (90, 'WInston');

create table employeesuni_1378(id int, unique_id int);
insert into employeesuni_1378(id, unique_id) values(3, 1), (11, 2), (90, 3);

select e1.name, e2.unique_id
from employees_1378 e1 left join employeesuni_1378 e2
on e1.id=e2.id;

select e1.name, e2.unique_id
from employees_1378 e1 left join employeesuni_1378 e2
on  if (e1.id = e2.id, e1.id, null);