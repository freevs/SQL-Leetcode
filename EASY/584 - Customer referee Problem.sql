create table cust_ref(id int, name varchar(20), referee_id int);
insert into cust_ref(id, name, referee_id) values(1, 'Will', NULL), (2, 'Jane', NULL), (3, 'Alex', 2), (4, 'Bill', NULL), (5, 'Zach', 1), (6, 'Mark', 2);

select name 
from  cust_ref
where referee_id != 2 or referee_id is null;