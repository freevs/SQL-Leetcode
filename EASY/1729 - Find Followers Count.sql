create table Followers_1729(user_id int, follower_id int);
insert into Followers_1729(user_id, follower_id)values(0, 1), (1, 0), (2, 0), (2, 1);

select user_id, count(follower_id) followers_count
from Followers_1729
group by user_id
order by user_id;