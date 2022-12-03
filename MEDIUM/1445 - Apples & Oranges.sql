CREATE TABLE sales_1445 (
  sale_date date,
  fruit VARCHAR(255),
  sold_num INT
);
INSERT INTO sales_1445
  (sale_date,fruit,sold_num)
VALUES
  ('2020-05-01','apples',10),
  ('2020-05-01','oranges',8),
  ('2020-05-02','apples',15),
  ('2020-05-02','oranges',15),
  ('2020-05-03','apples',20),
  ('2020-05-03','oranges',0),
  ('2020-05-04','apples',15),
  ('2020-05-04','oranges',16);
  
select sale_date, sum(if(fruit='apples', sold_num, -sold_num))
from sales_1445
group by sale_date;
  
