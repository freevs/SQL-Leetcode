create table Employees_577(empId int, name varchar(10), supervisor int, salary double);
insert into Employees_577(empId, name, supervisor, salary) values(1, 'John', 3, 1000),( 2, 'Dan', 3, 2000), (3, 'Brad', NULL, 4000), (4, 'Thomas', 3, 4000);

create table Bonuss_577(empId int, bonus double);
insert into Bonuss_577(empId, bonus) values(2, 500), (4, 2000);

select e.name, b.bonus
from Employees_577 e left join Bonuss_577 b
on e.empId=b.empId
where bonus<1000 or bonus is null;
