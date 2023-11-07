CREATE TABLE Student_626 (
  id int, student VARCHAR(255)
);

INSERT INTO Student_626 (  id, student) 
VALUES 
  (1,'Abbot'),
  (2,'Doris'),
  (3,'Emerson'),
  (4,'Green'),
  (5,'Jeames');
  
WITH cte as
(select *, LEAD(id) OVER(order by id) as next, LAG(id) OVER(order by id) as prev
from Student_626)
select 
case when ((id%2=1) and next IS NOT NULL) then next
when (id%2=0) then prev
else id END as id, student
from cte
order by id
