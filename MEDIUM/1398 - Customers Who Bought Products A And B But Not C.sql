CREATE TABLE Customers_1398(
  customer_id int,
  customer_name varchar(20)
  );

INSERT INTO Customers_1398
  (customer_id,customer_name)
VALUES
  (1,"Daniel"),
  (2,"Diana"),
  (3,"Elizabeth"),
  (4,"Jhon");
  
  CREATE TABLE Orders_1398(
  order_id int,
  customer_id int,
  product_name varchar(20)
  );

INSERT INTO Orders_1398
  (order_id,customer_id, product_name)
VALUES
  (10, 1, 'A'),
    (20, 1, 'B'),
    (30, 1, 'D'),
    (40, 1, 'C'),
    (50, 2, 'A'),
    (60, 3, 'A'),
    (70, 3, 'B'),
    (80, 3, 'D'),
    (90, 4, 'C');
    
with cte as 
(select customer_id from Orders_1398
group by customer_id
having sum(product_name='A')>0 and sum(product_name='B')>0 and sum(product_name='C')=0)
select * from Customers_1398 where customer_id =
(select customer_id from cte);


select customer_id,customer_name
from Customers_1398 c
where customer_id in
    (select distinct customer_id from Orders_1398
    where product_name = 'A'
        and customer_id in
            (select distinct customer_id from Orders_1398
            where product_name = 'B'))
            and customer_id not in
                (select distinct customer_id from Orders_1398
                where product_name = 'C' );
  