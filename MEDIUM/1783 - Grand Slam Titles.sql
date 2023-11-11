CREATE TABLE Players_1783 (
  id int,
  Players VARCHAR(255)
);
INSERT INTO Players_1783 
  (id, Players) 
VALUES 
  (1,'Nadal'),
  (2,'Federer'),
  (3,'Novak');
  
CREATE TABLE Championships_1783 
(year int, Wimbledon int, Fr_open int, US_open int, Au_open int);
  
INSERT INTO Championships_1783  
  (year, Wimbledon, Fr_open, US_open, Au_open) 
VALUES 
  (2018, 1, 1, 1, 1),
  (2019, 1, 1, 2, 2),
  (2020, 2, 1, 2, 2);

WITH cte AS (
    SELECT year, 'Wimbledon' AS championship, Wimbledon AS id FROM Championships_1783 
    UNION
    SELECT year, 'Fr_open' AS championship, Fr_open AS id FROM Championships_1783 
    UNION
    SELECT year, 'US_open' AS championship, US_open AS id FROM Championships_1783 
    UNION
    SELECT year, 'Au_open' AS championship, Au_open AS id FROM Championships_1783
),
cte2 AS (
    SELECT id, COUNT(id) AS grand_slams_count
    FROM cte
    GROUP BY id
)
SELECT c.id, p.Players, c.grand_slams_count
FROM cte2 c
LEFT JOIN Players_1783 p ON c.id = p.id;





