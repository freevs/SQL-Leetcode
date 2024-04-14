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
  
WITH cte AS (
    SELECT *, LEAD(sold_num) OVER (PARTITION BY sale_date ORDER BY sale_date, fruit) AS orange_num
    FROM sales_1445
)
SELECT sale_date, (sold_num - orange_num) AS diff FROM cte
WHERE orange_num IS NOT NULL
ORDER BY sale_date;
