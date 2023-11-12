CREATE TABLE Customer_1045 (customer_id int, product_key int);

INSERT INTO Customer_1045 
  (customer_id, product_key) 
VALUES 
  (1,5),
  (2,6),
  (3,5),
  (3,6),
  (1,6);

CREATE TABLE Product_1045 (product_key int);

INSERT INTO Product_1045 
  (product_key) 
VALUES 
  (5),
  (6);
  
select customer_id
from Customer_1045
group by customer_id
having count(distinct product_key) = 
    (select count(distinct product_key) from Product_1045)
