# DML
---
DML (data manipulation language) commands are `INSERT`, `UPDATE`, and `DELETE`.

## INSERT
----
Insert, as the name implies, allows you to add records to a table. You should already be familiar with this command as you have used it to insert
many records into the store database.  The syntax is:

```sql
INSERT INTO table
[(column_list)]
VALUES (value1, value2, ...);
```

A _subquery_ may be used to insert into a table.  The syntax is:
```sql
INSERT INTO table
[(column_list)]
SELECT col1,col2 FROM table2 WHERE expression;
VALUES (value1, value2, ...);
```


## UPDATE
----

The `UPDATE` command is used to __update__ records.  IMPORTANT: Use `WHERE` clause!  The syntax is as follows:

```sql
UPDATE table
SET column='value'
WHERE [condition]
```

You can also update multiple column values by setting multiple columns as:
```sql
UPDATE table
SET column1='value1'
    column2='value2'
WHERE [condition]
```

TRY IT:  Update a customers phone number to: 614-223-2983.  (Pick one customer)


A _subquery_ may be used to update a table.  The syntax is:
```sql
UPDATE table 
SET 
    column = expression
WHERE
    column2 IN (SELECT 
            col1, col2
        FROM
            table2
        WHERE
            expression);
```


## DELETE 
---
The `DELETE` command removes records.  For example, suppose a customer demands to be removed from the database.  IMPORTANT: Do NOT forget the `WHERE` clause, else all records will be deleted.

```sql
DELETE FROM table
WHERE [condition]
```

_Subqueries_ can also be used in DELETE statements:

```sql
DELETE FROM table
WHERE column IN (SELECT col FROM anotherTable WHERE expression);
```


What about referential integrity?  




## Exercises (using SQL)
---

1. INSERT 10 new customer into the database that has NOT made orders.
1. Update a customer's address as 'they have moved' since you added it.
1. Delete a customer that you recently added.
1. Update a manufacturer's website information.
1. Update one of the unknown categories.
1. Find all customers that have not made any orders (of course they are probably the ones you just added)
1. Select all products that customers from zip code 26034 have ordered.
1. What other queries can you form?  What other queries might be of interest to the owners of the store?  What queries might be of interest to the customers?


