create table cust_order(order_number int, customer_number int, order_date  date, required_date date, shipped_date date, status varchar(10));
insert into cust_order(order_number, customer_number, order_date, required_date, shipped_date, status) values(1, 1, '2017-04-09', '2017-04-13', '2017-04-12', 'Closed'), (2, 2, '2017-04-15', '2017-04-20', '2017-04-18', 'Closed'), (3, 3, '2017-04-16', '2017-04-25', '2017-04-20', 'Closed'),
                                                                                                              (4, 3, '2017-04-18', '2017-04-28', '2017-04-25', 'Closed');
                                                                                                              

select customer_number
from cust_order
group by customer_number
order by count(customer_number) desc
limit 1;

/*DONT USE THIS;it fetches only customer having placed more than 1 order not fetching largest order */
select customer_number
from cust_order
group by customer_number
having count(customer_number)>1;






