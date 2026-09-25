-- Test Your Knowledge (Filtering)



-- Test Your Knowledge (Filtering)

-- Exercise 4-1
-- Which of the transaction IDs would be returned by the following filter conditions? txn_date < '2005-02-26' AND (txn_type_cd = 'DBT' OR amount > 100)

SELECT Txn_id, Txn_date, Account_id,Txn_type_cd, Amount
FROM transaction
WHERE txn_date < '2005-02-26' AND (txn_type_cd = 'DBT' OR amount>100); --  Return 0 rows

-- Exercise 4-2
-- Which of the transaction IDs would be returned by the following filter conditions? account_id IN (101,103) AND NOT (txn_type_cd = 'DBT' OR amount > 100)

SELECT txn_id
FROM transaction
WHERE account_id IN (101,103) AND NOT(txn_type_cd='DBT' OR amount>100);

-- Exercise 4-3
-- Construct a query that retrieves all accounts opened in 2002.

SELECT account_id,open_date
FROM account
WHERE year(open_date)= 2002;

-- Exercise 4-4
-- Construct a query that finds all nonbusiness customers whose last name contains an 'a' in the second position and an e anywhere after the 'a'.

SELECT * 
FROM individual
WHERE lname LIKE '_a%e%';

