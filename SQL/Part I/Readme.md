# PART 1

## DDL & DML
**DDL** Stands for Data definition language which is used to define schemas or design databases.<br>
**DML** Stands for Data manipulation language which is used to interact with data in the database

 ## BASIC DATATYPES

| INT          | Used to store Integir numbers                               |
|--------------|-------------------------------------------------------------|
| DECIMAL(M,N) | Used to store decimal numbers                               |
| VARCHAR(1)   | Useed to store Strings                                      |
| BLOB         | Used to store Binary large objects (images, videos, audios) |
| DATE         | Use to store date on format AAAA-MM-DD                      |
| DATETIME     | Use to store date on format AAAA-MM-DD  HH:MM:SS            |

## BASIC COMMANDS

`DESCRIBE TableName` ->Show the structure of the table. <br>
`SHOW create table TableNAme` -> Shows the whole table structure. <br>

## DROP VS TRUNCATE

`DROP` -> SQL command used to delete a table in a database.<br>
`TRUNCATE` -> SQL command used to delete all data/records in a table.  

## TABLES
When confronted with the term table, most people think of a set of related rows stored
in a database. While this does describe one type of table, I would like to use the word
in a more general way by removing any notion of how the data might be stored and
concentrating on just the set of related rows. Three different types of tables meet this
relaxed definition:

* Permanent tables (i.e., created using the create table statement)
* Temporary tables (i.e., rows returned by a subquery)
* Virtual tables (i.e., created using the create view statement) <br>
Each of these table types may be included in a query’s from clause. By now, you should
be comfortable with including a permanent table in a from clause, so I briefly describe
the other types of tables that can be referenced in a from clause.

