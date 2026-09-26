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
ON e.dept_id =d.dept_id; -- We can use 'USING(table_column)' Only if the column name is the same for both tables


-- JOINING THREE OR MORE TABLES

SELECT a.account_id, c.fed_id, e.fname,e.lname
FROM account a INNER JOIN customer c
ON a.cust_id= c.cust_id
INNER JOIN employee e 
ON a.open_emp_id=e.emp_id
WHERE cust_type_cd ='B';

-- Using Subqueries As Tables

SELECT a.account_id, a.cust_id,a.open_date, a.product_cd
FROM account a INNER JOIN 
(SELECT emp_id, assigned_branch_id
FROM employee
WHERE year(start_date) < 2007
AND (title ='Teller' OR title ='Head teller')) e
ON a.open_emp_id= e.emp_id
INNER JOIN (SELECT branch_id FROM branch WHERE name = 'woburn Branch') b
ON e.assigned_branch_id = b.branch_id;


 

