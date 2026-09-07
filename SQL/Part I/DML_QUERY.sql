-- DML QUERY

-- Query Clauses
/*
Several components or clauses make up the select statement. While only one of them
is mandatory when using MySQL (the select clause), you will usually include at least
two or three of the six available clauses.

Select -> Determines which columns to include in the query’s result set
From -> Identifies the tables from which to draw data and how the tables should be joined/
The from clause defines the tables used by a query, along with the means of linking the tables together
Where -> Filters out unwanted data
Group by -> Used to group rows together by common column values
Having -> Filters out unwanted groups
Order by -> Sorts the rows of the final result set by one or more columns
*/

SELECT name, email
FROM student;

SELECt DISTINCT id -- -> The DISTINCT keyword is used to remove duplicates from the result set
FROM student;















