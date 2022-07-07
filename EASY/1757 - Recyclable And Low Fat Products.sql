create table Products_1757(product_id int, low_fats char, recyclable char);
insert into Products_1757(product_id, low_fats, recyclable) values(0, 'Y', 'N'), (1, 'Y', 'Y'), (2, 'N', 'Y'), (3, 'Y', 'Y'), (4, 'N', 'N');

select product_id from Products_1757
where low_fats='Y' and recyclable ='Y';