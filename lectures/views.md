### Views
---

It is often desirable to run a particular (`SELECT`) query over and over.  For example, you may want to track products with low or no inventory.
A query to SELECT low inventory, where "low" inventory is defined as inventory less than 5:

```sql
SELECT Products.id, Products.inventory 
FROM Products
WHERE inventory<5;
```

Therefore you may want to save this query along with any other queries used frequently.  Saving this query as a script (.sql) file is one way, 
another way is to create a VIEW which are stored as part of the databaase.  That is, a VIEW is a SELECT query that is stored as a database object.  
 

#### CREATE VIEW
---
The syntax to create a view is:

```sql
CREATE VIEW view_name AS
       SELECT 
            column(s)
       FROM 
            table
```

For example,  a view of low product inventory is:

```sql
CREATE VIEW `LowInventory` AS
    SELECT 
        Products.id, Products.inventory
    FROM
        unemath_quinlan.Products
    WHERE
        inventory < 5;
```


Creating a VIEW as a means of saving a query as opposed to saving as a script file is not really advantagous.  The real benefit of creating
a views is that they can be used anywhere you would normally use a table in a `SELECT`, `INSERT`, `UPDATE`, or `DELETE` command.  In other words, the 
VIEW is __updatable__ since it _always_ refers back to the base table(s). 

In particular, product 1001 has 0 inventory.  We can update the inventory in the products table _through_ the LowInventory 
