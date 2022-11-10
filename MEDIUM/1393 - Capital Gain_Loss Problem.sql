CREATE TABLE Stocks_1393 (
  stock_name VARCHAR(255),
  operation VARCHAR(255),
  operation_day int,
  price int
);
INSERT INTO Stocks_1393
  (stock_name,operation,operation_day,price)
VALUES
  ('Corona Masks','Buy',2,10),
  ('Leetcode','Sell',5,9000),
  ('Handbags','Buy',17,30000),
  ('Corona Masks','Sell',3,1010),
  ('Corona Masks','Buy',4,1000),
  ('Corona Masks','Sell',5,500),
  ('Corona Masks','Buy',6,1000),
  ('Handbags','Sell',29,7000),
  ('Corona Masks','Sell',10,10000);

select stock_name, 
    sum(if(operation="Sell", price, -price)) as capital_gain_loss
from Stocks_1393
group by stock_name;
