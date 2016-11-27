### DATABASE MANAGEMENT:  Performance Tuning
---
In many cases queries return tens of thousands (if not hundreds of thousands) of records or are highly complex, subsequently affecting the performance (i.e., slow queries).  There are several techniques for improving the performance of a database, this is referred to as __performance tuning__.

A few ways to improve the performance of a database (assuming it is in third normal form 3NF):

1. Create indexes
2. SQL statement tuning
3. Properly joining tables
4. Avoid using `OR` and `HAVING`
5. Avoid using large sorting operations

### Indexes
---

Imagine seaching a book from the first page to the last for a particular topic or keyword.  It is much faster to look the keyword up in the book's index which specifies the page or pages the topic is found.  Without an index, a query will have to perform a _full table scan_.  

An index is stored in a separate file from the table.  The main purpose of an index is to improve performance of data retrieval.  Indexes are created and destroyed with no effect on the data contained in a table.  NOTE: index files can grow quite large, therefore consider your database storage when creating index files.  For example, an index can be created on customers last name.  For each customer, the record number is stored.  Here is how an index works:

When a query is executed using the `WHERE` clause with a indexed column, the index file is first searched for the values specified in the `WHERE` clause.  The index will return the specific location of the data.  

For example:

__CUSTOMERS__

|id|Name|
|---|---|
|1|Jones|
|2|Williams|
|3|Johnson|
|4|Smith|
|5|Williams|
|6|Smith|
|7|Davis|
|8|Smith|
|9|Williams|
|10|Davis|
|...|...|
|1000|Smith|



__INDEX__

|Name|Location|
|---|---|
|Davis|7, 10|
|Johnson|3|
|Jones|1|
|Smith|4, 6, 8, 1000|
|Williams|2, 5, 9|

```sql
SELECT *
FROM CUSTOMERS
WHERE NAME='SMITH';
```

##### CREATE INDEX

The MySQL syntax is:  

```sql
CREATE INDEX index_name ON TABLE_NAME
```

NOTE: Syntax varies on database vendors (MySQL, MS SQL Server, Oracle, Postgres, etc.)

##### TYPES OF INDEXES

__Single-column__: the simplest and most common.  Best used with frequently searched columns used in the `WHERE` clause. 

_EXAMPLE_:
```sql
CREATE INDEX last_name_idx
ON Customers (last_name)
```

__Unique Indexes__: Best used when designing database one columns that are to be distinct.  This will help ensure the constraint on the inputed data.  Primary keys implicitly defined unique index.  

```sql
CREATE UNIQUE INDEX last_name_idx
ON Customers (last_name)
```

__Composite Indexes__: index on two or more columns of a table (typically columns frequently queried together).  Order matters, therefore consider putting the most frequently used column first.


```sql
CREATE UNIQUE INDEX customer_idx
ON Customers (last_name, first_name)
```

##### Implicit Indexes
 
Indexes are automatically created for primary key and unique constraints. 

##### To index or not to index

__USE__: As already mentioned, Indexes are automatically created for primary key and unique constraints. Also, __foreign keys__ are excellent candidates to be indexed as they are often used to join the parent table.  In short, __columns used for table joins should be indexed__.  Columns used in `ORDER BY` and `GROUP BY` should be indexed.  Index columns columns with high frequency of unique values and columns used in `WHERE` clause that return a low percentage of rows. 

__DO__:  Test using different indexes.



__DO NOT USE__: On small tables, filter conditions returning high percentage of the table's data, columns with high number of NULL values, or columns that are frequently manipulated.  

---


### SQL Statement Tuning 
---

Optimally written SQL statements mainly consisting of "fine tuning" the `FROM` and `WHERE` clauses, NOT to be confused with _database tuning_ which is concerned with the design and structure of the tables, the allocation of memory, and disk usage.  NOTE: All SQL tuning performance depends on the _SQL Optimizer_ and not all optimizers are the same.  Check your implementation and/or consult DBA to learn how the optimizer reads SQL code. NOTE: Although not directly effecting the performance, __ALWAYS__ establish __coding standards__ in a multiuser programming environment.


Three tuning techniques:

- The order of the tables in the `FROM` clause should be listed from smallest to largest.  For example,
```sql
SELECT * FROM Smallest_Table, Largest_Table;
```


- Place the most restrictive conditions first in the `WHERE` clause (which actually maybe last since some optimizers read bottom up).  The most restrictive condition is the one that returns the fewest rows of data.  You can test the order of the optimizer by switching conditions in the `WHERE` condition.  For example, test the two queries 
```sql
Select * from unemath_LastName.Products Where inventory<100 and category_id=200;
```

```sql
Select * from unemath_LastName.Products Where category_id=200 and inventory<100;
```


Here the condition `inventory<100` should return the most records, so `category_id=200` is the most restrictive.  

It is also good practice to use an indexed column as the most restrictive condition in a query as in general indexes improve query performance.   





- Placement of join conditions in the `WHERE` clause.  The general rule of thumb is to place the base table condition on the right side of the `WHERE` condition.  A __base__ table is a table that links two tables with a common column when needing to retrieve data from two tables taht do not have a common column to join.  If no need to use a base table, then place the most restrictive condition on the right side of the `WHERE` condition.  For example, suppose we want a list of categories that manufacturer 200 makes.  Notice the Categories and Manufacturers tables are not directly linked, but indirectly through the (base) table Products.

```sql
use unemath_quinlan;
SELECT 
    M.manufacturer_id
FROM
    Manufacturers AS M
        INNER JOIN
    Products AS P ON M.manufacturer_id = P.manufacturer_id
        INNER JOIN
    Categories AS C ON C.category_id = P.category_id
WHERE
    C.category_id = 200
        AND M.manufacturer_id = P.manufacturer_id
GROUP BY M.manufacturer_id;   
```


##### Other considerations
---
1. Avoid the `LIKE` operator or wildcards
2. Avoid the `OR` operator
3. Avoid the `HAVING` clause (recall: used with `GROUP BY` and aggregate functions)
4. Avoid sorting (large recordsets)
5. Do use stored procedures
