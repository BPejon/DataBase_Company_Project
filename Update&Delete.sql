CREATE TABLE student (
    student_id INT,
    studentname VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

SELECT * FROM student;

DROP TABLE student;

INSERT INTO student VALUES(1, 'Jack', 'Literature');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES(3, 'Claire', "Chemistry");  --Insert only id and name. major will be NULL
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike' , 'Computer Science');
INSERT INTO student VALUES(8, 'Arthur', 'Biology');

--Tudo eh uma linha so
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';

UPDATE student
SET studentname = 'Tom', major = 'undecided'
WHERE student_id = 1;

UPDATE student
SET major = 'undecided'; --Apply for everyone

DELETE FROM student
WHERE student_id = 5;

DELETE FROM student 
WHERE studentname = 'Tom' AND major= 'undecided';