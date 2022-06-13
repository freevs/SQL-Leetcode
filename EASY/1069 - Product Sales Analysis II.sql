select * from sales;
select * from product;

select product_id, sum(quantity) total_qty
from sales
group by product_id;
