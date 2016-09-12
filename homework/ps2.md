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
SELECT product_id FROM Products WHERE cost<10;
```

###### Less than or equal

Combining the operators can give more specific results.  For example, SELECT all product id's less than or equal to $10.


```SQL
SELECT product_id FROM Products WHERE cost<=10;
```

---

##### Logical Operators

Logical operators include `IS NULL`, `BETWEEN`, `IN`, `LIKE`, `EXISTS`, `UNIQUE`, `ALL`, `SOME`, and `ANY`.



#### Exercises


===

1. What does SQL stand for?  How is it pronounced?
2. Are SQL commands case-sensitive?  How can you determine? 
3. What does DQL stand for?
4. True or False:  Is it necessary to use the `FROM` clause with the select statement? 
5. True or False:  Is it necessary to use a `WHERE` clause?  If not, when and why would you use a `WHERE` clause?
6. What is the purpose of the `ORDER BY` clause?  What is its default value?  
7. Is the data in the products table case sensitive?  Should it be case sensitive/insensitive? 
8. Select all product names.
9. List the MSRP for all products in ascending order.
10. Find all products within  category 430.  What is category 430?
11. Find all product id and names in category 430 manufactured by 428.
12. How many products in category 430 manufactured by 428?
13. How many countries make products contained in the store?
14. How many products are manufactured in the USA?
15. How many products cost the company less than $10?
16. How many products cost the company less than $10 and sell for more than $20?
17. How many products cost the company less than $10 and sell for less than $20?
18. Which products cost less than $10 and sell for more than $20?
19. Count all product's that have shipping weight less than 1 pound or greater than 20 pounds.
20. Create your own query.


