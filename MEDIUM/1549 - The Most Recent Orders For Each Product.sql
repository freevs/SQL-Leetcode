CREATE TABLE Customers_1549(customer_id int, name varchar(20));
INSERT INTO Customers_1549(customer_id, name) 
VALUES 
  (1, 'Winston'),
  (2, 'Jonathan'),
  (3, 'Annabell'),
  (4, 'Marwan'),
  (5, 'Khaled');
  
CREATE TABLE Orders_1549 (order_id int, order_date date, customer_id int, product_id int);
INSERT INTO Orders_1549 (order_id, order_date, customer_id, product_id) VALUES
(1, '2020-07-31', 1, 1),
(2, '2020-07-30', 2, 2),
(3, '2020-08-29', 3, 3),
(4, '2020-07-29', 4, 1),
(5, '2020-06-10', 1, 2),
(6, '2020-08-01', 2, 1),
(7, '2020-08-01', 3, 1),
(8, '2020-08-03', 1, 2),
(9, '2020-08-07', 2, 3),
(10, '2020-07-15', 1, 2);

CREATE TABLE product1_1549 (product_id INT PRIMARY KEY,product_name VARCHAR(255), price INT);
INSERT INTO product1_1549 (product_id, product_name, price) VALUES
(1, 'keyboard', 120),
(2, 'mouse', 80),
(3, 'screen', 600),
(4, 'hard disk', 450);

With cte as
(select p.product_name, o.product_id, o.order_id, o.order_date,
RANK() OVER(PARTITION BY o.product_id ORDER BY order_date desc) as rnk
from Orders_1549 o
left join product1_1549 p
on o.product_id = p.product_id)
Select product_name, product_id, order_id, order_date
from cte
where rnk =1
order by product_name, product_id, order_id;
  
