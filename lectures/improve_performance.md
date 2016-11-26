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

|id|Last Name|
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




