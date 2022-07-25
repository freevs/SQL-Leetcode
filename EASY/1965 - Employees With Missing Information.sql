create table employees_1965(employee_id int, name varchar(20));
insert into employees_1965(employee_id, name)values(2, 'Crew'), (4, 'Haven'), (5, 'Kristian');

create table salaries_1965(employee_id int, salary double);
insert into salaries_1965(employee_id, salary)values(5, 76071), (1, 22517 ), (4, 63539);

select employee_id 
from (select employee_id from employees_1965 
     union all
     select employee_id from salaries_1965) temp
group by 1
having count(*) = 1
order by 1