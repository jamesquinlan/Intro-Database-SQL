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

1. Single-column: the simplest and most common.  Best used with frequently searched columns used in the `WHERE` clause. 

__EXAMPLE__:
```sql
CREATE INDEX last_name_idx
ON Customers (last_name)
```

2. Unique Indexes: Best used when designing database one columns that are to be distinct.  This will help ensure the constraint on the inputed data.  Primary keys implicitly defined unique index.  

```sql
CREATE UNIQUE INDEX last_name_idx
ON Customers (last_name)
```

3. Composite Indexes: index on two or more columns of a table (typically columns frequently queried together).  Order matters, therefore consider putting the most frequently used column first.


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

Optimally written SQL statements mainly consisting of "fine tuning" the `FROM` and `WHERE` clauses, NOT to be confused with _database tuning_ which is concerned with the design and structure of the tables, the allocation of memory, and disk usage.  

The three tuning techniques:

1. The order of the tables in the `FROM` clause
2. Placing the most restrictive conditions first in the `WHERE` clause
3. Placement of join conditions in the `WHERE` clause.

NOTE: Although not directly effecting the performance, __ALWAYS__ establish __coding standards__ in a multiuser programming environment.

