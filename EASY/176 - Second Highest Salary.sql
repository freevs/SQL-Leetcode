create table employees_176(id int, salary double);
insert into employees_176(id, salary)values(1, 100), (2, 200), (3, 300);

Select max(salary) from employees_176 where salary !=
(select max(salary) from employees_176);

