select * from items_1158;
select * from orders_1158;
select * from users_1158;

select u.user_id as buyer_id, u.join_date, count(order_id) 
from users_1158 u left join orders_1158 o
on u.user_id=o.buyer_id and year(order_date) = 2019
group by user_id;

select u.user_id as buyer_id, u.join_date , sum(case when order_id is not null then 1 else 0 end) as orders_in_2019
from users_1158 u left join orders_1158 o
on u.user_id=o.buyer_id and year(order_date)=2019
group by user_id

