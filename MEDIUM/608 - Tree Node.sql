CREATE TABLE tree_608 (
  id int,
  p_id INT
);

INSERT INTO tree_608
  (id,p_id)
VALUES
  (1, NULL),
  (2,1),
  (3,1),
  (4,2),
  (5,2);
  
select id, 
    case when p_id is null then "root"
    when id not in (select p_id from tree_608 where p_id is not null) then "leaf"
    else "inner" end as Type
from tree_608
order by id
