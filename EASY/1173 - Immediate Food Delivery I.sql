create table Delivery_1173(delivery_id int, customer_id int, order_date date, customer_pref_delivery_date date);
insert into Delivery_1173(delivery_id, customer_id, order_date, customer_pref_delivery_date)values(1, 1, '2019-08-01', '2019-08-02'), (2, 5, '2019-08-02', '2019-08-02'), (3, 1, '2019-08-11', '2019-08-11'), (4, 3, '2019-08-24', '2019-08-26'), (5, 4, '2019-08-21', '2019-08-22'), (6, 2, '2019-08-11', '2019-08-13'); 


Select round(100*d2.immediate_order/count(d1.delivery_id), 2) as immediate_percentage
from Delivery_1173 d1,  
                     (select count(order_date) as immediate_order 
                      from Delivery_1173 
					  where (order_date=customer_pref_delivery_date))d2;







