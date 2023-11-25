CREATE TABLE emp_184 (
  id int, Name varchar(20), Salary double, DepartmentId int
);

INSERT INTO emp_184 
  (Id, Name, Salary, DepartmentId) 
VALUES 
  (1,'Joe', 70000, 1),
  (2,'Jim', 90000, 1),
  (3,'Henry', 80000, 2),
  (4,'Sam', 60000, 2),
  (5,'Max', 90000, 1);
  
  CREATE TABLE dep_184 (
  id int, Name varchar(20)
);

INSERT INTO dep_184
  (Id, Name) 
VALUES 
  (1,'IT'),
  (2,'Sales');
  
with cte as 
(select d.Name as dept_name, e.Name as Employee, e.Salary, max(e.salary) over(partition by e.DepartmentId) as max_salary
from emp_184 e left join dep_184 d on e.DepartmentId = d.id)

select dept_name, Employee, Salary from cte where Salary=max_salary


  
  
  
  
