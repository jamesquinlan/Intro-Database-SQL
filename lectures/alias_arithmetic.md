###  Arithmetic Operators and Aggregate Functions
---



#### Arithmetic operators

Arithmetic operators (`+`, `-`, `*`, `/`) can be used to perform calculations on the columns.  Alias results of using arithmetic operators.  For example, 


```SQL
SELECT 1.35*price AS `Sale Price` FROM Products;
```

Create a column containing a 10% discount on MSRP.


```SQL
SELECT MSRP-0.1*MSRP AS `Sale Price` FROM Products;
```

---

### Aggregate Functions

Aggregate functions `COUNT`, `SUM`, `MAX`, `MIN`, and `AVG` expand the variety of queries and allow returning several useful results.  For instance using the Products table, we can find the maximum (or minumim) priced items.  In a Sales table, we could use `AVG` to return the average sale or `SUM` to find the total sales.  `SUM` and `AVG` must be applied to numeric data whereas `MAX` and `MIN` can also be applied to character data.

###### DISTINCT

Combining `COUNT` with `DISTINCT` returns the number of distinct records meeting a certain condition.  Use `DISTINCT` only with a column name and not the `*` wildcard.  For example, the following query will return all unique countries.

```SQL
SELECT COUNT(DISTINCT country) FROM Products;
```





