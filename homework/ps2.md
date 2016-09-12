### Problem Set 2 - Query Writing (continued)
---



#### Column Aliases

Often column names are obfuscated which make query's output difficult to understand. 
**Column Aliases** is a "nickname" (or *alias*) for a table's column(s) that gives a more user friendly (descriptive) name.
To give a column an alias, use the `AS` keyword followed by the alias name.  For example:

```SQL
SELECT product_id AS itemcode FROM Products;
```

If the alias contains space, use quotes.  

```SQL
SELECT product_id AS `item code` FROM Products;
```

NOTE: The alias does not permenantly rename the column and is only temporary assignment.




---

#### SQL operators

---

Operators are reserved words used with the `WHERE` clause to perform an operation such as comparisons.  The primary operators are:

- Comparison operators (e.g., equality)
- Logical operators (including negation)
- Conjunctive operators
- Arithmetic operators

##### Comparison operators

Comparison operators include equality, non-equality, less than, and greater than.  The equal sign is used to test equality.  For example, 

```SQL
SELECT product_id FROM Products WHERE product_id=2000;
```
One way to select all product_id's not equal to 2000 is the following SELECT statement 

```SQL
SELECT product_id FROM Products WHERE product_id<>2000;
```
---

###### Less than (and greater than)

And example using less than, (greater than is similar), which will return all product id's that cost less than $10:

```SQL
SELECT product_id FROM Products WHERE price<10;
```

###### Less than or equal

Combining the operators can give more specific results.  For example, SELECT all product id's less than or equal to $10.


```SQL
SELECT product_id FROM Products WHERE price<=10;
```

---

##### Logical Operators

Logical operators include `IS NULL`, `BETWEEN`, `IN`, `LIKE`, `EXISTS`, `UNIQUE`, `ALL`, `SOME`, and `ANY`.
Logical operators are used (mostly) with the `WHERE` clause.  

The following queries serve as examples for the LOGICAL operators.


```SQL
SELECT * FROM Products WHERE price IS NULL;
```


```SQL
SELECT * FROM Products WHERE price BETWEEN 10 and 20;
```


```SQL
SELECT * FROM Products WHERE price IN(9.99, 19.99, 29.99);
```

The `LIKE` operator returns similar values using *wildcards* (underscore _ and percent %).  The underscore represents one character where as the percent represents multiple characters.

The following returns all rows where the country starts with a letter 'C'.  

```SQL
SELECT * FROM Products WHERE country like 'C%';
```

The following returns all rows where the price ends in a 9.


```SQL
SELECT * FROM Products WHERE price like '%9';
```

The following returns rows where price has any value for the tens place and a 9 in the ones (pennies):


```SQL
SELECT * FROM Products WHERE price like '%._9';
```

#### Conjunctive operators (AND and OR)

Conjunctions are used to make more complex queries.  For example suppose we want all products whose price is greater than 10 but less than 20.  The following will return the desired results:

```SQL
SELECT * FROM Products WHERE price>10 AND price<20;
```

Two ways to write the query to return products with price less than or equal to $20:


```SQL
SELECT * FROM Products WHERE price<=20;
```


```SQL
SELECT * FROM Products WHERE price<20 OR price=20;
```

#### Negation

Equality is negated using `!=` or `<>`.  All other statements can be negated using `NOT` operator. 



#### Arithmetic operators

Arithmetic operators (`+`, `-`, `*`, `/`) can be used to perform calculations on the results of columns.  It is good to alias results of using arithmetic operators.  For example, 


```SQL
SELECT 1.35*price AS `Sale Price` FROM Products;
```




#### Exercises


===

1. Select all products (UPC) made in China whose price is less than $50.
2. Find products with "bird bath" in the description.
3. Find products whose cost is between $10 and $100.
4. Find products whose cost is less than or equal to $59.99.
5. Find products whose ID is between 5000 and 6000 or 7483, 4939, 3452, 9848, 11293, 12001.
6. Find products that are not between 5000 and 6000 or 7483, 4939, 3452, 9848, 11293, 12001.
7. Find products whose country code is NULL.


