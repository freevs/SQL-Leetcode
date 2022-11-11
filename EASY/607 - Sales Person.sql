create table salesperson_607(sales_id int, name varchar(20), salary double, commission_rate int, hire_date date);
insert into salesperson_607(sales_id, name, salary, commission_rate, hire_date) values(1, 'John', 100000, 6, '2006-04-01'), (2, 'Amy', 120000, 5, '2010-05-01'), (3, 'Mark', 65000, 12, '2008-12-25'), (4, 'Pam', 25000, 25, '2005-01-01'), (5, 'Alex', 50000, 10, '2007-02-03');

create table company_607(com_id int, name varchar(20), city varchar(20));
insert into company_607(com_id, name, city) values(1, 'red', 'Boston'), (2, 'orange', 'Ney York'), (3, 'yellow', 'Boston'), (4, 'green', 'Austin');

create table orders_607(order_id int, order_date date, com_id int, sales_id int, amount double);
insert into orders_607(order_id, order_date, com_id, sales_id, amount) values(1, '2014-01-01', 3, 4, 100000), (2, '2014-02-01', 4, 5, 5000), (3, '2014-03-01', 1, 1, 50000), (4, '2014-04-01', 1, 4, 25000);


select s.name from salesperson_607 s
where s.sales_id not in (select o.sales_id
from company_607 c left join orders_607 o
on c.com_id = o.com_id
where c.name='red');

select s.name from salesperson_607 s
where s.sales_id not in (select o.sales_id
from company_607 c inner join orders_607 o
on c.com_id = o.com_id
where c.name='red');


          

                                                             
