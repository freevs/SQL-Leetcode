create table Warehouse_1571(name varchar(20), product_id int, units int);
insert into Warehouse_1571(name, product_id, units) values('LCHouse1', 1, 1), ('LCHouse1', 2, 10), ('LCHouse1', 3, 5), ('LCHouse2', 1, 2), ('LCHouse2', 2, 2), ('LCHouse3', 4, 1);

create table Products_1571(product_id int, product_name varchar(20), Width int, Length int, Height int);
insert into Products_1571(product_id, product_name, Width, Length, Height) values(1, 'LC-TV', 5, 50, 40), (2, 'LC-KeyChain', 5, 5, 5), (3, 'LC-Phone', 2, 10, 10), (4, 'LC-T-Shirt', 4, 10, 20);  

select name, sum(p.Width*p.Length*p.Height*w.units) volume
from Warehouse_1571 w inner join Products_1571 p
on w.product_id =p.product_id
group by name;




