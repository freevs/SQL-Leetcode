create table Employees_1873(employee_id int, name varchar(10), salary double);
insert into Employees_1873(employee_id, name, salary) values(2, 'Meir', 3000), (3, 'Michael', 3800), (7, 'Addilyn', 7400), (8, 'Juan', 6100), (9, 'Kannan', 7700);


select employee_id,
case 
	when employee_id%2 = 0 then 0
	when name like 'M%' then 0
	else salary end 
as 'bonus'
from Employees_1873;

SELECT employee_id, IF(employee_id % 2 != 0 and name not like 'M%', salary, 0) 
AS bonus from Employees_1873;

SELECT employee_id, IF(employee_id % 2 != 0 and SUBSTRING(name, 1, 1) != 'M', salary, 0) 
AS bonus from Employees_1873;