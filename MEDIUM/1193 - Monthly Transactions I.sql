CREATE TABLE transactions_1193(
  id int,
  country varchar(20),
  state varchar(20),
  amount int,
  trans_date date
  );

INSERT INTO transactions_1193
  (id,country, state,amount, trans_date)
VALUES
  (121, "US", "approved", 1000, "2018-12-18"),
  (122, "US", "declined", 2000, "2018-12-19"),
  (123, "US", "approved", 2000, "2019-01-01"),
  (124, "DE", "approved", 2000, "2019-01-07");
  

Select date_format(trans_date,"%Y-%m") as month, country, 
count(id) as trans_count,
sum(case when state='approved' then 1 else 0 end) as approved_count,
sum(amount) as trans_total_amount, 
sum(case when state='approved' then amount else 0 end) as approved_total_amount
from transactions_1193
group by month, country
  
  
  
  
  
  
  
