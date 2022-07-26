create table products_1795(product_id int, store1 int, store2 int, store3 int);
insert into products_1795(product_id, store1, store2, store3)values(0, 95, 100, 105), (1, 70, NULL, 80);


select product_id, 'store1' as store, store1 as price
from products_1795
where store1 is not null
union
select product_id, 'store2' as store, store2 as price
from products_1795
where store2 is not null
union
select product_id, 'store3' as store, store3 as price
from products_1795
where store3 is not null;