## SUBQUERIES
---
A __subquery__ is a `SELECT` statement used within another SQL statement.  A subquery can return results just like any query.  Subqueries can be _nested_. 

NOTE: 

1. Subqueries cannot include `ORDER BY` clause. 
2. Most JOINS can be coded as subqueries and most subqueries can be coded as JOINS.

There are two questions that immediately need answered:

1. Where do you place the subquery?
2. When do you use them?

#### Using subqueries: Where to place them

Subqueries can be introduced:

1. In a `WHERE` clause
2. In a `HAVING` clause
3. In the `FROM` clause
4. In the `SELECT` clause (as a column specifier)

NOTE: A subquery must return a single column of values when using after the `IN` operator.  Furthermore, a query using `NOT IN` subquery is prime to use `OUTER JOIN`.

__EXAMPLE__: Select all customers from West Virginia.  Note that the state is not stored in the Customers table, only the zip code.  Therefore, we need to "look up" the zip codes from West Virginia using a subquery.

```sql
SELECT Customers.id 
FROM Customers 
WHERE Customers.zip in 
  (
    SELECT zip 
    FROM Zipcodes 
    WHERE state='WV'
  )
  ;
```

Can you think of a way to code the above example using JOINS?

__EXAMPLE__: Select (100) products that have not sold yet.  

```sql
SELECT Products.id
FROM unemath_quinlan.Products 
WHERE Products.id NOT IN 
  (
    SELECT OrderDetails.product 
    FROM OrderDetails
  )
LIMIT 100;
```

The same example using a OUTER JOIN.

```sql
SELECT Products.id
FROM unemath_quinlan.Products LEFT JOIN unemath_quinlan.OrderDetails
ON Products.id=OrderDetails.product
WHERE OrderDetails.product IS NULL 
ORDER BY Products.id 
LIMIT 100; 
```
