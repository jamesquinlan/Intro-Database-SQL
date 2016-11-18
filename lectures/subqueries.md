## SUBQUERIES
---
A __subquery__ is a `SELECT` statement used within another SQL statement.  A subquery can return results just like any query.  

There are two questions that immediately need answered:

1. Where do you place the subquery?
2. When do you use them?

#### Using subqueries: Where to place them

Subqueries can be introduced:
1. In a `WHERE` clause
2. In a `HAVING` clause
3. In the `FROM` clause
4. In the `SELECT` clause (as a column specifier)

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
