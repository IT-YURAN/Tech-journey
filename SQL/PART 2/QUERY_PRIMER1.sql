-- PART 2
USE bank;
/*
The where clause
Most of the time, however, you will not wish to retrieve every row from a
table but will want a way to filter out those rows that are not of interest. This is a job
for the where clause.
The where clause is the mechanism for filtering out unwanted rows from your result set.
For example, perhaps you are interested in retrieving data from the employee table, but
only for those employees who are employed as head tellers. The following query
employs a where clause to retrieve only the four head tellers:
*/

SELECT emp_id, fname,lname,start_date, title
FROM employee
WHERE title ='Head Teller';

/*
GROUP BY

Sometimes,however, you will want to find trends in your data that will require the database server
to cook the data a bit before you retrieve your result set. One such mechanism is the
group by clause, which is used to group data by column values. 
When using the group by clause, you may also use the having
clause, which allows you to filter group data in the same way the where clause lets you
filter raw data.
*/

SELECT d.name,COUNT(e.emp_id) num_employees
FROM department as d INNER JOIN employee e
ON d.dept_id=e.dept_id
GROUP BY d.dept_id
HAVING COUNT(e.emp_id)>2;

-- The Order By Clause
SELECT open_emp_id, product_cd
FROM account; -- The result is not ordered

-- If you are trying to analyze data for each employee, it would be helpful to sort the results
-- by the open_emp_id column; to do so, simply add this column to the order by clause:
SELECT open_emp_id, product_cd
FROM account
ORDER BY open_emp_id; -- Result set ordered

-- We can orde by multiple columns
SELECT open_emp_id, product_cd
FROM account
ORDER BY open_emp_id,product_cd; 
 
 /*
 ASC-> Used to sort the result set in Ascending order
 DESC-> Used to sort the result set in Descending order
 */
 
 SELECT account_id, product_cd, open_date, avail_balance
 FROM account
 ORDER BY avail_balance DESC;


