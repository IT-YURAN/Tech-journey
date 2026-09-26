-- Test Your Knowledge(Querying Multiple Tables)


-- Test Your Knowledge(Querying Multiple Tables)

-- Exercise 5-1

-- Fill in the blanks (denoted by <#>) :
/*
mysql> SELECT e.emp_id, e.fname, e.lname, b.name
-> FROM employee e INNER JOIN <1> b
-> ON e.assigned_branch_id = b.<2>*/

SELECT e.emp_id, e.fname,e.lname,b.name Branch_Name
FROM employee e INNER JOIN branch b
on e.assigned_branch_id = b.branch_id;

-- Exercise 5-2

/*
Write a query that returns the account ID for each nonbusiness customer
(customer.cust_type_cd = 'I') with the customer’s federal ID (customer.fed_id) and
the name of the product on which the account is based (product.name).
*/

SELECT a.account_id,p.name, c.fed_id -- Using Subqueries As Tables
FROM account a INNER JOIN
(SELECT cust_id,fed_id FROM customer WHERE cust_type_cd = 'I') c
ON a.cust_id=c.cust_id
INNER JOIN product p
ON a.product_cd = p.product_cd;
-- OR

SELECT a.account_id,c.fed_id, p.name
FROM account a INNER JOIN customer c
on a.cust_id=c.cust_id
INNER JOIN product p
ON a.product_cd=p.product_cd
WHERE cust_type_cd ='I';

-- Exercise 5-3
-- Construct a query that finds all employees whose supervisor is assigned to a different department. Retrieve the employees’ ID, first name, and last name.

SELECT emp.emp_id, emp.fname, emp.lname
FROM employee emp INNER JOIN employee mgr
ON emp.superior_emp_id=mgr.emp_id
where emp.dept_id !=mgr.dept_id

