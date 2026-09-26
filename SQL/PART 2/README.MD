# PART 2

For this part we are going to use the book Alan_Beaulieu-Learning_SQL, and we'll explore its chapters.<br>
There's a script use to create the database and populate it. We are going to use this database.

## The order by Clause
In general, the rows in a result set returned from a query are not in any particular order.
If you want your result set in a particular order, you will need to instruct the server to
sort the results using the order by clause:<br>
_The order by clause is the mechanism for sorting your result set using either raw column
data or expressions based on column data._

## Condition Types

There are many different ways to filter out unwanted data. You can look for specific
values, sets of values, or ranges of values to include or exclude, or you can use various
pattern-searching techniques to look for partial matches when dealing with string data.
The next four subsections explore each of these condition types in detail.

## The between operator
When you have both an upper and lower limit for your range, you may choose to use
a single condition that utilizes the between operator rather than using two separate
conditions. <br>
When using the between operator, there are a couple of things to keep in mind. You
should always specify the lower limit of the range first (after between) and the upper
limit of the range second (after and). Here’s what happens if you mistakenly specify the
upper limit first.

## Using wildcards
When searching for partial string matches, you might be interested in:
* Strings beginning/ending with a certain character
* Strings beginning/ending with a substring
* Strings containing a certain character anywhere within the string
* Strings containing a substring anywhere within the string
* Strings with a specific format, regardless of individual characters <br>
You can build search expressions to identify these and many other partial string
matches by using the wildcard characters shown the in Table bellow

| Wildcard character | Macthes                              |
|--------------------|--------------------------------------|
| -                  | Exacyly one character                |
| %                  | Any number of characters(icluding 0) |

The underscore character takes the place of a single character, while the percent sign
can take the place of a variable number of characters. When building conditions that
utilize search expressions, you use the like operator, as in: <br>
` SELECT lname FROM employee WHERE lname LIKE '_a%e%';` <br>

The search expression in the previous example specifies strings containing an 'a' in the
second position and followed by an 'e' at any other position in the string (including the
last position). Table bellow shows some more search expressions and their interpretations.

| Search expression | Interpretation                                                        |
|------------------|-----------------------------------------------------------------------|
| F%               | Strings beginning with F                                              |
| %t               | Strings ending with T                                                 |
| %bas%            | Strings conttainning the subString 'bas'                              |
| ___t_            | Four-character String with 'T' in the third position                  |
| ___-__-____      | Eleven character string with dashes in the forth and seventh position |


## NULL
Null is the **absence** of a value; before an
employee is terminated, for example, her end_date column in the employee table should
be null. There is no value that can be assigned to the end_date column that would make
sense in this situation.<br>

When working with null, you should remember:
* An expression can be null, but it can never equal null.
* Two nulls are never equal to each other.

## JOINING THREE OR  MORE TABLES

Joining three tables is similar to joining two tables, but with one slight wrinkle. With
a two-table join, there are two tables and one join type in the from clause, and a single
on subclause to define how the tables are joined. With a three-table join, there are three
tables and two join types in the from clause, and two on subclauses

## Does Join Order Matter?
SQL is a nonprocedural language, meaning
that you describe what you want to retrieve and which database objects need to be
involved, but it is up to the database server to determine how best to execute your
query. 
Using statistics gathered from your database objects, the server must pick one
of three tables as a starting point (the chosen table is thereafter known as the driving
table), and then decide in which order to join the remaining tables. Therefore, the order
in which tables appear in your from clause is not significant

## Using Subqueries As Tables


## JOIN conditions Versus Filter conditions

You are now familiar with the concept that join conditions belong in the 'on' subclause,
while filter conditions belong in the 'where' clause. However, SQL is flexible as to where
you place your conditions, so you will need to take care when constructing your queries.


## Working with Sets
