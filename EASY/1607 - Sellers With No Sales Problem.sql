create table Customer_1607(customer_name varchar(20), customer_id int);
insert into Customer_1607(customer_name, customer_id)values('alice', 101), ('bob', 102), ('charlie', 103);

create table Orders_1607(order_id int, sale_date date, order_cost int, customer_id int, seller_id int);
insert into Orders_1607(order_id, sale_date, order_cost, customer_id, seller_id)values
(1, '2020-03-01', 1500, 101, 1),
(2 ,'2020-05-25', 2400, 102, 2),
(3, '2019-05-25', 800, 101, 3),
(4, '2020-09-13', 1000, 103, 2),
(5, '2019-02-11', 700, 101, 2);

create table Seller_1607(seller_id int, seller_name varchar(20));
insert into Seller_1607(seller_id, seller_name)values(1, 'daniel'), (2, 'elizabeth'), (3, 'frank');

with cte as(
select distinct(seller_id) from Orders_1607
where year(sale_date)=2020)
select seller_name
from Seller_1607 where seller_id not in ( select distinct(seller_id) from cte)


select seller_name from Seller_1607 where seller_id not in 
(select distinct(seller_id) from Orders_1607
where year(sale_date)=2020)




