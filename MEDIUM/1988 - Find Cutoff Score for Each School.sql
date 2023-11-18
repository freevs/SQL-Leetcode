CREATE TABLE schools_1988 (school_id INT PRIMARY KEY,capacity INT);
INSERT INTO schools_1988 (school_id, capacity) VALUES
(11, 151),
(5, 48),
(9, 9),
(10, 99);

CREATE TABLE Exam_1988 (score INT,student_count INT); 
INSERT INTO Exam_1988 (score, student_count) VALUES
(975, 10),
(966, 60),
(844, 76),
(749, 76),
(744, 100);

select s.school_id, ifnull(min(e.score),-1) as score
from schools_1988 s left join Exam_1988 e
on s.capacity>=e.student_count
group by s.school_id


