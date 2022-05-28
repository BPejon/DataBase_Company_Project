CREATE TABLE student (
    student_id INT PRIMARY KEY,
    studentname VARCHAR(20),
    major VARCHAR(20)
);

DESCRIBE student;

SELECT * FROM student; --Show all the data from table student

DROP TABLE student; -- DELETE TABLE

ALTER TABLE student ADD gpa DECIMAL(3,2); --MODIFY student to ADD gpa variable

INSERT INTO student VALUES(4,'Breno', NULL); --Have to put in the same order as the table - id, name, major

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student(student_id, studentname) VALUES(3, 'Claire');  --Insert only id and name. major will be NULL