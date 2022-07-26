create table DailySales_1693(date_id date, make_name varchar(20), lead_id int, partner_id int);
insert into DailySales_1693(date_id, make_name, lead_id, partner_id)values('2020-12-8', 'toyota', 0, 1),
																		  ('2020-12-8', 'toyota', 1, 0), 
                                                                          ('2020-12-8', 'toyota', 1, 2), 
																		  ('2020-12-7', 'toyota', 0, 2),
																	      ('2020-12-7', 'toyota', 0, 1), 
																		  ('2020-12-8', 'honda', 1, 2), 
																		  ('2020-12-8', 'honda', 2, 1), 
                                                                          ('2020-12-7', 'honda', 0, 1),
                                                                          ('2020-12-7', 'honda', 1, 2),
                                                                          ('2020-12-7', 'honda', 2, 1);
                                                                     

 
select date_id, make_name, 
    count(distinct lead_id) as unique_leads, 
    count(distinct partner_id) as unique_partners
from DailySales_1693
group by date_id, make_name;





