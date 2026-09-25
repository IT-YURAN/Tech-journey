-- Filtering

-- A where clause may contain one or more conditions, separated by the operators 'AND' and 'OR'.
-- If multiple conditions are separated only by the 'AND' operator, then all the conditions must evaluate to true for the row to be included in the result set.

-- If all conditions int the where clause are separated by the 'OR' operator, however, only one of the conditions must evaluate tp true for the row to be included in the result set.

-- Using Parentheses
-- If your where clause includes three or more conditions using both the and and or operators, you should use parentheses to make your intent clear, both to the database server and to anyone else reading your code
-- Exemple: 
USE bank;
SELECT emp_id,fname,lname
FROM employee
WHERE end_date IS NULL AND (title = 'Teller' OR start_date < '2007-01-01');

-- Using the not Operator

-- WHERE end_date IS NULL AND title != 'Teller' AND start_date >= '2007-01-01 OR WHERE end_date IS NULL AND title NOT ('Teller' AND start_date >= '2007-01-01)

SELECT emp_id,fname,lname
FROM employee	
WHERE end_date IS NULL AND (title !='Teller' OR start_date < '2007-01-01');

-- The BETWEEN Operator

SElECT emp_id,fname,lname,start_date
FROM employee
WhERE start_date BETWEEN '2005-01-01' AND 2007-01-01;

-- The  IN Operator

SELECT account_id, product_cd, cust_id
FROM account
WHERE product_cd IN ('MM', 'SAV','CD');

SELECT account_id, product_cd, cust_id, avail_balance
FROM account
WHERE product_cd IN (
SELECT product_cd FROM product
WHERE product_type_cd ='ACCOUNT'
);

-- WildCards

 SELECT fname, lname FROM employee WHERE fname LIKE '%re%'; 
 SELECT fname, lname FROM employee WHERE fname LIKE '%T';
 SELECT fname, lname FROM employee WHERE fname LIKE '%le%';
