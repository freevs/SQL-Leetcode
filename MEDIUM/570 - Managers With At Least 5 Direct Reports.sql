CREATE TABLE Employee_570 (
  id int,
  name varchar(20),
  department varchar(20),
  manager_id int
);
INSERT INTO Employee_570
  (id, name, department, manager_id)
VALUES
  (101, 'John', 'A', null),
  (102, 'Dan', 'A', 101),
  (103, 'James', 'A', 101),
  (104,'Amy', 'A',101),
  (105,'Anne','A', 101),
  (106,'Ron','B',101);
  
 select name from Employee_570 where id in 
(select manager_id
  from Employee_570
  group by manager_id
  having count(id)>=5)
