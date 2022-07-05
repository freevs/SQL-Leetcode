create table users_1407(id int, name varchar(20));
insert into users_1407(id, name) values(1, 'Alice'), ( 2, 'Bob'), (3, 'Alex'), (4, 'Donald'), (7, 'lee'), (13, 'Jonathan'), (19, 'Elvis');

create table rides_1407(id int, user_id int, distance double);
insert into rides_1407(id, user_id, distance) values(1, 1, 120), (2, 2, 317), (3, 3, 222), (4, 7, 100), (5, 13, 312), (6, 19, 50), (7, 7, 120), (8, 19, 400), (9, 7, 230);


select u.name, sum(distance) travelled_dist
from users_1407 u left join rides_1407 r
on u.id = r.user_id
group by user_id
order by travelled_dist desc, name asc;

Select u.name, if(r.user_id is null, 0, sum(r.distance)) travelled_distance
from users_1407 u left join rides_1407 r
on u.id=r.user_id
group by user_id
order by travelled_distance desc, name;