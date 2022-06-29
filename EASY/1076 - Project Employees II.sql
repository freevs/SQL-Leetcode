/*Project emploees 11*/

create table project(project_id int, employee_id int);
insert into project(project_id, employee_id ) values(1, 1), (1, 2), (1, 3), (2, 1), (2, 4);

create table empp(employee_id int, name varchar(10), experience_years int);
insert into empp(employee_id, name, experience_years ) values(1, 'Khaled', 3), (2, 'Ali', 2), (3, 'John', 1), (4, 'Doe', 2);

select project_id
from project
group by project_id
order by count(employee_id) desc
limit 1;

select project_id
from Project
group by project_id
having count(1) = (
    select count(1)
    from Project
    group by project_id
    order by count(1) desc
    limit 1)