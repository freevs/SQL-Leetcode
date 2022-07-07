create table user_1667(user_id int, name varchar(10));
insert into user_1667(user_id, name) values(1, 'aLice'), (2, 'bOB');

select user_id, 
    concat(upper(left(name,1)),lower(substring(name,2))) as name
from user_1667 
order by user_id;