create table Users_1587(account int, name varchar(20));
insert into Users_1587(account, name)values(900001, 'Alice'), (900002, 'Bob'), (900003, 'Charlie');

create table Transactions_1587(trans_id int, account int, amount int, transacted_on date);
insert into Transactions_1587(trans_id, account, amount, transacted_on)values(1, 900001, 7000, '2020-08-01'),  (2, 900001, 7000, '2020-09-01'),  (3, 900001, -3000, '2020-09-02'), (4, 900002, 1000, '2020-09-12'),  (5, 900003, 6000, '2020-08-07'), (6, 900003, 6000, '2020-09-07'), (7, 900003, -4000, '2020-09-11');

select u.name, sum(amount) balance from Users_1587 u left join Transactions_1587 t
on u.account=t.account 
group by u.account
having sum(amount)>10000



