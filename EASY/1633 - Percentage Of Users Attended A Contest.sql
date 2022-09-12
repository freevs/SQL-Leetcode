create table Users_1633(user_id int, user_name varchar(10));
insert into Users_1633(user_id, user_name)values(6, 'alice'), (2, 'bob'), (7, 'alex');

create table Register_1633(contest_id int, user_id int);
insert into Register_1633(contest_id, user_id)values(215, 6), (209, 2), (208, 2), (210, 6), (208, 6), (215, 7), (208, 7), (210, 2), (207, 2), (210, 70);


Select r.contest_id, round(count(distinct r.user_id)/count(distinct u.user_id)*100, 2) as percentage
from Register_1633 r, Users_1633 u
group by r. contest_id
order by percentage desc, contest_id asc;



