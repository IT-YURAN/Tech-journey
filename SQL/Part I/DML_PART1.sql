-- DML (DATA MANIPULATION LANGUAGE)

-- DML is used to interact with data in a database, we can make CRUD operations with it which include : CREATE, UPDATE, RETRIEVE, AND DELETE.

-- INSERTING INTO DEPARTMENT

-- INSERT INTO department  VALUES(); Used to insert all columns
INSERT INTO department (name,email) VALUES('Physics','Phisicsdp@gmail.com'), -- Used insert specific columns
('IT', 'ITdp@gmail.com'),
('Medicine','Medicinedp@gmail.com');

-- INSERTING INTO STUDENT

INSERT INTO student VALUE(1,'Jorge','Jorge@gmailcom','M',2);
INSERT INTO student (name,email,gender,dpart_id) VALUES('Jorge','Jorge@gmailcom','M',2),
('Julias','Julias@gmail.com','F',3),
('Gloria','Gloria@gmail.com','F',1),
('Joao','Joao@gmail.com','M',1);

-- Updating

Update department
SET name ='physics', 
email ='physicsdp@gmail.com'
WHERE name = 'physics';
/*
Depending on the conditions in your where clause, it is also possible to modify more
than one row using a single statement. Consider, for example, what would happen if
your where clause looked as follows:
WHERE id < 10
*/

-- Deleting Data
DELETE FROM Student
WHERE id=1;

/*
Again, the primary key is being used to isolate the row of interest, so a single row is
deleted from the table. Similar to the update statement, more than one row can be
deleted depending on the conditions in your where clause, and all rows will be deleted
if the where clause is omitted
*/





