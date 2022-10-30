create table activity_1484(sell_date date, product varchar(20));
insert into activity_1484(sell_date, product) values('2020-05-30', 'Headphone'), ('2020-06-01', 'Pencil'), ('2020-06-02', 'Mask'), ('2020-05-30', 'Basketball'), ('2020-06-01', 'Bible'), ('2020-06-02', 'Mask'), ('2020-05-30', 'tshirt');


select sell_date, count(distinct product) as num_sold,  group_concat(distinct product) as products
from activity_1484 
group by sell_date
order by sell_date;
 
