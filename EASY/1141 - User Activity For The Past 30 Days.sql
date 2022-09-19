create table Activity_1141(user_id int, session_id int, activity_date date, activity_type varchar(30));
insert into Activity_1141(user_id, session_id,activity_date, activity_type)values
(1, 1, '2019-07-20', 'open_session'),
(1, 1, '2019-07-20', 'scroll_down'),
(1, 1, '2019-07-20', 'end_session'),
(2, 4, '2019-07-20', 'open_session'),
(2, 4, '2019-07-21', 'send_message'),
(2, 4, '2019-07-21', 'end_session'),
(3, 2, '2019-07-21', 'open_session'),
(3, 2, '2019-07-21',  'send_message'),
(3, 2, '2019-07-21', 'end_session'),
(4, 3, '2019-06-25', 'open_session'),
(4, 3, '2019-06-25','end_session');

select activity_date, count(distinct user_id) as active_users 
from Activity_1141 
where activity_date between date_add('2019-07-27', interval -29 day) and '2019-07-27'
group by activity_date