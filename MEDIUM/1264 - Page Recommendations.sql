CREATE TABLE Friendship_1264 (
  user1_id int,
  user2_id int
);
INSERT INTO Friendship_1264
  (user1_id,user2_id)
VALUES
  (1,2),
  (1,3),
  (1,4),
  (2,3),
  (2,4),
  (2,5),
  (6,1);
  
CREATE TABLE Likes_1264 (
  user_id int,
  page_id int
);

INSERT INTO Likes_1264
  (user_id,page_id)
VALUES
  (1,88),
  (2,23),
  (3,24),
  (4,56),
  (5,11),
  (6,33),
  (2,77),
  (3,77),
  (6,88);

WITH cte AS (
    SELECT CASE 
             WHEN user1_id = 1 THEN user2_id 
             WHEN user2_id = 1 THEN user1_id 
           END AS friends
    FROM Friendship_1264
)

SELECT DISTINCT page_id AS recommended_page
FROM Likes_1264
WHERE user_id IN (SELECT friends FROM cte)
  AND page_id NOT IN (
      SELECT page_id FROM Likes_1264
      WHERE user_id = 1
  );
