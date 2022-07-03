select * from product;
select * from sales;


select s.year, s.price, p.product_name
from sales s left join product p on s.product_id=p.product_id;
