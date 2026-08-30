# SQL (SEQUEL)
**SQL** is a standard programming language used to manage, manipulate,and retrieve data stored in **relational databases**

## How to Study

## Part I
This  part is an introduction to SQL schema statements also known as DDL _'Data Definition language'  _



## SQL Statement Classes
**SQL schema statements:** which are used to define the data structures
stored in the database.<br>
**SQL data statements:** which are used to manipulate the data
structures previously defined using SQL schema statements.<br>
**SQL transaction statements:** which are used to begin, end, and roll back transactions 

## MYSQL
Relational databases have been available commercially for over two decades. Some of
the most mature and popular commercial products include:
* Oracle Database from Oracle Corporation
* SQL Server from Microsoft
* DB2 Universal Database from IBM
* Sybase Adaptive Server from Sybase

## SQL configuration

`mysql -u root -p` -> Login to MYSQL as root. <br>
`CREATY USER 'username'@'localhost' IDENTIFIED BY 'passwowd';` -> Creates a user.<br>
`GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost';` -> Gives all privileges to all databases to a specific user,
we can add **WITHI GRANT OPTION** at the end so the user can give privileges to other users. <br>
`GRANT ALL PRIVILEGES ON mydb.* TO 'user'@'localhost';` -> Gives all privileges to a specific database to a user. <br>
`SHOW GRANTS FOR 'username'@'localhost';` -> Displays privileges of a specific user.




