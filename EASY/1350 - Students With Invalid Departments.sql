create table Department_1350(id int, name varchar(30));
insert into Department_1350(id, name) values(1, 'Electrical Engineering'), (7, 'Computer Engineering'), (13, 'Bussiness Administration');

create table Students_1350(id int, name varchar(30), dept_id int);
insert into Students_1350(id, name, dept_id) values(23, 'Alice', 1), (1, 'Bob', 7), (5, 'Jennifer', 13), (2, 'John', 14), (4, 'Jasmine', 77), (  3, 'Steve', 74), (6, 'Luis', 1), ( 8, 'Jonathan', 7), ( 7, 'Daiana', 33), (11, 'Madelynn', 1);   

select id, name
from Students_1350 
where dept_id not in (select id from Department_1350);

