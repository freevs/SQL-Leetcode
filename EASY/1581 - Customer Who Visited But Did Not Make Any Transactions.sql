create table visits(visit_id int, customer_id double);
insert into visits(visit_id, customer_id)values(1, 23), (2, 9), (4, 30), (5, 54), (6, 96), (7, 54), (8, 54);

create table Transactions(transaction_id int, visit_id double, amount double);
insert into Transactions(transaction_id, visit_id, amount)values(2, 5, 310), (3, 5, 300), (9, 5, 200), (12, 1, 910), (13, 2, 970);


select customer_id, count(*) as count_no_trans
from Visits
where visit_id not in 
    (select visit_id
    from Transactions
    group by visit_id)
group by customer_id;

select v.customer_id, count(*)
from visits v left join Transactions t
on v.visit_id=t.visit_id
where t.transaction_id is null
group by customer_id;

 




