create table project1(project_id int, employee_id int);
insert into project1(project_id, employee_id) values(1, 1), (1, 2), (1, 3), (2, 1), (2, 4);

create table emp1(employee_id int, name varchar(10), experience_years int);
insert into emp1(employee_id, name, experience_years) values(1, 'Khaled', 3), (2, 'Ali', 2), (3, 'John', 1), (4, 'Doe', 2);


select p.project_id, round(avg(experience_years),2) avg_exp
from project p left join empp e on p.employee_id = e.employee_id
group by project_id;

select p.project_id, round(avg(experience_years),2) avg_exp
from project p inner join empp e on p.employee_id = e.employee_id
group by project_id;