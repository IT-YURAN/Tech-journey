-- Querying Multiple Tables

USE bank;

--  JOIN 
-- The 'JOIN' Clause is used to combine rows from Two or more tables based on related column between them. 
-- There are 4 types of 'JOIN' which are:
-- INNER JOIN -> Returns only roes that have values in both tables.
-- LEFT JOIN -> Returns all rows from the LEFT TABLE plus matching rows from the right table. Unmatched rows show NULL
-- RIGHT JOIN -> Returns all rows from the RIGHT TABLE plus matching rows from the LEFT table. Unmatched rows show NULL
-- FULL JOIN -> Returns all rows from the RIGHT TABLE and all rows from the LEFT TABLE . Unmatched rows show NULL

SELECT e.fname,e.lname,d.name -- INNER JOIN
FROM employee e INNER JOIN department d
ON e.dept_id =d.dept_id; -- We can use 'USING(table_column)'


















