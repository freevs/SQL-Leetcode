create table Employee_1303(employee_id int, team_id int);
insert into Employee_1303(employee_id, team_id)values(1, 8), (2, 8), (3, 8), (4, 7), (5, 9), (6, 9);


SELECT employee_id, COUNT(employee_id) OVER (PARTITION BY team_id) AS team_size
FROM Employee_1303
order by employee_id;

