                                Create a table called Student with various columns
 

CREATE TABLE Student(
  STUD_NUM CHAR(3),
  STUD_LNAME VARCHAR(15),
  STUD_FNAME VARCHAR(15),
  STUD_INITIAL CHAR(1),
  STUD_REGISTRATION_DATE DATE,
  COURSE_CODE CHAR(3),
  TASK_NUM INT,
  PRIMARY KEY (STUD_NUM)
  );
                             Write the SQL code to enter data for the first ten rows of the table
  

INSERT INTO Student (STUD_NUM,STUD_LNAME,STUD_FNAME,STUD_INITIAL,
                     STUD_REGISTRATION_DATE,COURSE_CODE,Task_NUM)
VALUES
('101','Smith','John','G','2017-11-08','502',4),
('102','Senior','David','H','2018-07-12','501',2),
('103','Varane','Raphael','B','2017-12-14','503',6),
('104','Hazard','Eden','C','2018-02-16','504',8),
('105','Kane','Harry','D','2018-02-18','504',10),
('106','Mbappe','Kylian','E','2018-03-20','505',3),
('107','Edinson','Cavani','A','2017-11-10','506',5),
('108','Modric','Luka','F','2019-01-10','506',7),
('109','Mane','Sadio','J','2019-02-12','507',1),
('110','Bekker','Alisson','K','2019-01-14','508',9);




                               Write the SQL code that will list all attributes for a COURSE_CODE of 502

SELECT *
FROM Student
WHERE course_code = 502

                              Write the SQL code to change the course code to 501 for the student whose 
                              student number is 101.

UPDATE Student
SET COURSE_CODE = '501'
WHERE STUD_NUM = '101';


                              Write the SQL code to delete the row of the person named John Smith, who 
                              was hired on 8 Nov 2017, and whose course code is 501 and task number is 4. 
                              Use logical operators to include all of the information given in this problem. 
 


DELETE FROM Student
WHERE STUD_LNAME = 'Smith'
AND STUD_FNAME = 'John'
AND STUD_REGISTRATION_DATE = '2017-11-08'
AND COURSE_CODE = '501'
AND TASK_NUM = 4



                              Write the SQL code that will change the TASK_NUM to 14 for all those 
                              students who registered before 1 January 2019


UPDATE Student
SET TASK_NUM = 14
WHERE STUD_REGISTRATION_DATE < '2019-01-01';



                              Write the SQL code that will delete all of the data inside a table, but not the 
                              table itself. 


TRUNCATE Student;


                              Write the SQL code that will delete the STUDENT table entirely.

DROP TABLE Student;

  