/* Group By Review
Let's get more familiar with the E-Commerce dataset.

Write a query to print the number of paid and unpaid orders.

The result should look something like this:

+-------+-------+
| paid  | count |
+-------+-------+
| true  | 4     |
+-------+-------+
| false | 2     |
+-------+-------+
Hints:

You should only need to use the orders table

Maybe the GROUP BY and COUNT keywords would be useful!

For reference, here is an example of the orders table:

+----+---------+------------+-------+
| id | user_id | product_id | paid  |
+----+---------+------------+-------+
| 1  | 1       | 3          | true  |
+----+---------+------------+-------+
| 2  | 3       | 3          | false |
+----+---------+------------+-------+
| 3  | 5       | 5          | true  |
+----+---------+------------+-------+
| 4  | 1       | 4          | true  |
+----+---------+------------+-------+
| 5  | 4       | 2          | false |
+----+---------+------------+-------+
| 6  | 2       | 1          | true  |
+----+---------+------------+-------+ */

select paid, count(*)
from orders
group by paid;


/*
Inner Join Review
Join together the users and orders tables.  Print the first_name and last_name of each user, then whether or not they have paid for their order.

Hints:

Remember that to join two tables, we use something like JOIN orders ON orders.user_id = users.id

A user might have more than one order, so they might show up twice!  That is OK - we want to see each of their orders.

Reminder on the structure of the orders table:

+----+---------+------------+-------+
| id | user_id | product_id | paid  |
+----+---------+------------+-------+
| 1  | 1       | 3          | true  |
+----+---------+------------+-------+
| 2  | 3       | 3          | false |
+----+---------+------------+-------+
| 3  | 5       | 5          | true  |
+----+---------+------------+-------+
| 4  | 1       | 4          | true  |
+----+---------+------------+-------+
| 5  | 4       | 2          | false |
+----+---------+------------+-------+
| 6  | 2       | 1          | true  |
+----+---------+------------+-------+
Reminder on the structure of the users table:

+----+------------+-----------+
| id | first_name | last_name |
+----+------------+-----------+
| 1  | Iva        | Lindgren  |
+----+------------+-----------+
| 2  | Ignatius   | Johns     |
+----+------------+-----------+
| 3  | Jannie     | Boehm     |
+----+------------+-----------+
| 4  | Neal       | Wehner    |
+----+------------+-----------+
| 5  | Mikayla    | Casper    |
+----+------------+-----------+
| 6  | Patience   | Stracke   |
+----+------------+-----------+ */

select first_name, last_name, paid
from users
join orders ON orders.user_id = users.id;