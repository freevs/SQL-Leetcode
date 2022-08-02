create table Prices_1251(product_id int, start_date date, end_date date, price int);
insert into Prices_1251(product_id, start_date, end_date, price) values(1, '2019-02-17', '2019-02-28', 5), (1, '2019-03-01', '2019-03-22', 20), ( 2,'2019-02-01', '2019-02-20', 15), (2, '2019-02-21', '2019-03-31', 30);

create table UnitsSold_1251(product_id int, purchase_date date, units int);
insert into UnitsSold_1251(product_id, purchase_date, units) values(1, '2019-02-25', 100), (1, '2019-03-01', 15), (2, '2019-02-10', 200), (2, '2019-03-22', 30);

Select p.product_id, round(sum(p.price*u.units)/sum(u.units), 2) average_price
from Prices_1251 p inner join UnitsSold_1251 u 
on p.product_id=u.product_id
where u.purchase_date between p.start_date and p.end_date
group by product_id