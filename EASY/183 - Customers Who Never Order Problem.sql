create table Customers(id int, name varchar(10));
insert into Customers(id, name) values(1, 'Joe'), (2, 'Henry'), (3, 'Sam'), (4, 'Max');

create table Orders_183(id int, customer_id int);
insert into Orders_183(id, customer_id) values(1, 3), (2, 1);

/*Joins*/
select c.name
from Customers c left join Orders_183 o
on c.id = o.customer_id
WHERE o.customer_id IS NULL;

/*Subquery*/
SELECT name AS customers
FROM Customers
WHERE id NOT IN (SELECT customer_id FROM Orders_183);