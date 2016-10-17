# Joining Tables - Selecting data from multiple tables


__JOIN__ (_left, right, outer, inner_) are used in order to select data from multiple (related) tables.  [See reference](https://dev.mysql.com/doc/refman/5.7/en/join.html).

---

### INNER JOIN
---

The `INNER JOIN` keyword selects all rows from both tables with common column(s).  This is perhaps the most common JOIN.  It is also known as the EQUIJOIN.  In terms of Venn diagrams, it is the INTERSECTION.  The syntax follows:

```SQL
SELECT column_name(s)
FROM table_1
INNER JOIN table_2
ON table_1.column_name=table_2.column_name;
```


### LEFT (RIGHT) JOIN
---

A LEFT JOIN returns all rows from the left table (table_1) and the matching rows of the right table (table_2). The result of the right is NULL when there is no match. The RIGHT JOIN is defined analogous replacing _left_ with _right_ and _table_1_ with _table_2_ in definition above.   The syntax for LEFT JOIN is:

```SQL
SELECT column_name(s)
FROM table_1
LEFT JOIN table_2
ON table_1.column_name=table_2.column_name;
```

Syntax for RIGHT JOIN:
```SQL
SELECT column_name(s)
FROM table_1
RIGHT JOIN table_2
ON table_1.column_name=table_2.column_name;
```

### OUTER JOIN
---

OUTER JOIN returns all rows from both tables.  This is the UNION in terms of Venn diagrams  The syntax is:

```SQL
SELECT column_name(s)
FROM table_1
OUTER JOIN table_2
ON table_1.column_name=table_2.column_name;
```

#### Returning all records from table_1 that have no match in table_2.   [See reference](https://dev.mysql.com/doc/refman/5.7/en/join.html).

```SQL
SELECT Table_1.column 
FROM  Table_1 LEFT JOIN Table_2 
ON Table_1.column=Table_2.column
WHERE Table_2.column is NULL;
```


##### OTHER JOINS

There are several other types of joins including SELF JOIN and CROSS JOINS.  
