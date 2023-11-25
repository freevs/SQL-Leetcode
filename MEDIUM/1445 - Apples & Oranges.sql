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
  
with cte as
(select * from sales_1445 order by sale_date, fruit),
cte2 as
(select *, LEAD(sold_num) OVER(PARTITION BY sale_date) as orange_num from cte)
Select sale_date, (sold_num-orange_num) as diff
from cte2
where orange_num IS NOT NULL
order by sale_date
