### Problem Set 1 - Introduction to DQL 
---

Data Query Language (DQL) is a sub-language of Structured Query Language (SQL).  The SELECT statement is the one (and only) statement needed to construct database queries.  A query extracts data from the database.  A SELECT statement **must** contain a FROM clause.  The basic syntax for SELECT statement is:

```SQL
SELECT column(s) FROM table(s)
```

Often (although not necessary) each statement/clause is written at the beginning of a line.  In particular, 

```SQL
SELECT column(s) 
FROM table(s)
```

NOTE: If database is housed on a shared server, the database name must proceed the table name separated with the dot notation.  In particular, 

```SQL
SELECT column(s) 
FROM database.table
```

If multiple columns are desired in the query results, a comma delimited list of column names is supplied after the SELECT statement. Similar a list of one or more tables follows the FROM clause.  The * is a wildcard and returns **all** columns from the table.  

For example, the following query will return the entire table (use with caution).

```SQL
SELECT * FROM database.table;
```

---

#### Exercises

Using the Products table, find the following 

===

1. Select ... 

