# Joins


__Joins__ (_left, right, outer, inner_) are used in order to select data from multiple (related) tables.  [See reference](https://dev.mysql.com/doc/refman/5.7/en/join.html).

---

### Inner join

The `INNER JOIN` keyword selects all rows from both tables with common column(s).

```SQL
SELECT column_name(s)
FROM table_1
INNER JOIN table_2
ON table_1.column_name=table_2.column_name;
```

