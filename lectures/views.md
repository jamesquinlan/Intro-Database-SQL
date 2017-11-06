### Views
---
A __view__ is a virtual table based on the result-set of an SQL statement. It looks like and acts like a table from the users point of view but does not require physical storage.  It is a stored query (or filter) that represents a users "view".  A view is a database object. 

Views can be created from tables or other views.  


It is often desirable to run a particular (`SELECT`) query over and over.  For example, you may want to track products with low or no inventory on a weekly or daily basis.  A query to SELECT low inventory, where "low" inventory is defined as inventory less than 5:

```sql
SELECT Products.id, Products.inventory 
FROM Products
WHERE inventory<5;
```

Therefore you may want to save this query along with any other queries used frequently.  Saving this query as a script (.sql) file is one way, 
another way is to create a VIEW which are stored as part of the databaase.  That is, a VIEW is a SELECT query that is stored as a database object.  
 
Views can be used as a form of security.  Views can contain limited information of a table.  For example, views allow you restrict access to a table that contains sensitive information.  The view can allow someone access to the parts of the table you allow them to retrieve.  

Views can be used to maintain summarized data and calculations instead of storing these in the table.  


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

In particular, product 1001 has 0 inventory.  We can update the inventory in the products table _through_ the LowInventory _view_.

```sql
UPDATE LowInventory
  SET
     inventory=11
  WHERE
    id=1001;
```

#### DROP a view
You can drop a view using the `DROP` command (just like dropping a table).

```sql
DROP VIEW LowInventory
```



#### Benefits of using VIEWs
---
1. Views can limit the exposure of underlying tables to both users and application which increases design independence.  This means that the design of the table can be altered without impeding on the users. 

2. Views can restrict access to the data to improve data security.

3. Complex queries can be stored as a view then simplier queries based on the view can be run by non power users.

4. As mentioned before, views can be used to update, insert, and delete data from the base table as long as the view is not based on a query containing aggregate functions, `DISTINCT`, `GROUP BY`, or `HAVING` clauses, nor the `UNION` operator.  Aggregate functions compress many records into one record and therefore updates would not be well-defined.

5. You can create views based on other views (a.k.a. _nested view_).

6. You cannot update data through a view using joins.

NOTE: You cannot use `DISTINCT`, `GROUP BY`, `HAVING` clauses, `UNION` operator, or aggregate functions in updatable VIEWs.




#### OR REPLACE
---
You can __replace__ a view with the `CREATE OR REPLACE VIEW` statement, else you must specify a new name for a view.

---

#### EXERCISES

1. Write a statement to create a view based on products with inventory.

2. Write a statement that creates a summarized view containing the average cost of products in several categories.

3.  Create a view for average customer order.

4. Create a view for customers and phone numbers.

5. Drop the view for customers and phone numbers.

6. Create a view that contains the count of all products made from China.

7. Create a view of all customers from Maine.

8.  Create a view of all customers without including full address, only zip code.

9.  Create a view for products weight and shipping dimensions.

10.  Create a view of orders that contain customer and order information.
---
