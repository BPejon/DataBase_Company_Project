--Query Grab pieces of information

SELECT studentname, major
FROM student;
-- OR more specify where from
SELECT student.studentname, student.major
FROM student;
 
SELECT student.studentname, student.major
FROM student
ORDER BY studentname DESC;

SELECT student.studentname, student.major
FROM student
ORDER BY student_id ASC;

SELECT *
FROM student
ORDER BY major, student_id; --If they have the same major, then order by second order (id)

SELECT *
FROM student
ORDER BY student_id 
LIMIT 2;

--Where -> Filter
SELECT *
FROM student
WHERE major = 'biology'; 

SELECT *
FROM student
WHERE major IN ('Biology', 'Chemistry');  
/*
    Compare to a lot of values.
    Como se fosse um conjunto de valores
*/

SELECT *
FROM student
WHERE student_id BETWEEN 1 AND 4;  
