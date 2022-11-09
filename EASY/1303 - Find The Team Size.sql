create table Employee_1303(employee_id int, team_id int);
insert into Employee_1303(employee_id, team_id)values(1, 8), (2, 8), (3, 8), (4, 7), (5, 9), (6, 9);


SELECT employee_id, COUNT(employee_id) OVER (PARTITION BY team_id) AS team_size
FROM Employee_1303
order by employee_id;

select e1.employee_id, count(e2.employee_id) as team_size
from Employee_1303 e1
inner join Employee e2 on e1.team_id = e2.team_id
group by e1.employee_id, e2.team_id
