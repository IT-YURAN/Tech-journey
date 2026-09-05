CREATE DATABASE School;

USE school; -- This command is used to Select a database

CREATE Table Student(
	id int AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    primary key(id)
);

SHOW TABLES; -- List all Tables in the Database

CREATE TABLE teacher(
	id INT AUTO_INCREMENT,
   name VARCHAR(25) NOT NULL,
   email VARCHAR(30) NOT NULL UNIQUE,
   gender ENUM('M','F') NOT NULL,
   primary key(id)
);

CREATE TABLE department(
	id INT AUTO_INCREMENT,
    name VARCHAR(50)  NOT NULL,
    email VARCHAR(20) NOT NULL,
    CONSTRAINT pk PRIMARY KEY(id),
    CONSTRAINT uni_name UNIQUE(name),
    CONSTRAINT uni_email UNIQUE(email)
);

/*
	CONSTRAINTS
    
    NOT NULL -> Prevents null values
    UNIQUE -> Prevents duplicates values
    DEFAULT -> Define a standard value
    CHECK -> Imposes condition INT age CHECK(age >=18)
    PRIMARY KEY -> Identifies each record int the database
    FOREIGN KEY -> Creates a relationship between tables
*/

/*
ALTER 
The ALTER statement is used to add, delete, or modify an existing table.
The ALTER statement is also used to add or delete constraints on an existing table.
Common ALTER TOperations are:

ADD COLUMN ->  Adds new column to the tables
DROP COLUMN -> Deletes a specific column in the table
RENAME COLUMN -> Renames a column
MODIFY COLUMN -> Changes the Datatype, length, or constraints Troca  on a tables.
ADD CONSTRAINT -> adds a new constraint.
RENAME TABLE -> Renames the table
*/
DESC student;
ALTER TABLE student ADD COLUMN gender ENUM('M','F') AFTER email;
ALTER TABLE student MODIFY gender ENUM('M','F') NOT NULL;
ALTER TABLE student RENAME COLUMN st_email to email;
ALTER TABLE student ADD COLUMN dpart_id INT;
ALTER TABLE student ADD CONSTRAINT fk_dpart FOREIGN KEY(dpart_id) REFERENCES department (id); 

SHOW create table student;

