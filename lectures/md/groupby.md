#### AGGREGATE FUNCTIONS

The basic set of aggregate functions are: `COUNT`, `SUM`, `MAX`, `MIN`, `AVG`, `ROUND`.

###### COUNT

`COUNT` is used to count rows that do not contain NULL.  It can be used in conjunction with `DISTINCT`.  NOTE:  `COUNT(*)` includes the NULL values too. 

Here are a few examples:

```SQL
 SELECT COUNT(category_id) FROM Products;
 ```
 
 ```SQL
 SELECT COUNT(DISTINCT category_id) FROM Products;
 ```
 
 
 #### SUM

```SQL
 SELECT SUM(cost) FROM Products;
 ```


 
 #### MAX

```SQL
 SELECT MAX(cost) FROM Products;
 ```



 #### MIN

```SQL
 SELECT MIN(cost) FROM Products;
 ```


 #### AVG

```SQL
 SELECT AVG(cost) FROM Products;
 ```


 #### ROUND

```SQL
 SELECT ROUND(1.35*cost) FROM Products;
 ```



#### GROUP BY 
###### Summarizing data
 ----
 `GROUP BY` is used together with aggregate functions to group results of a query in order to produce summary results.  The `GROUP BY` will be applied after the `SELECT` command to determine the grouping.  A basic example is to select the average price grouped by category.
 
 ```SQL
 SELECT category_id, ROUND(AVG(price),2) as AveragePrice
 FROM Products
 GROUP BY catgory_id;
 ```
 
The query will always group the results of the SELECT statement (including the WHERE clause if used which must come before the `GROUP BY` clause).  

 ```SQL
 SELECT category_id, ROUND(AVG(price),2) as AveragePrice
 FROM Products
 WHERE manufacturer_id=208
 GROUP BY catgory_id;
 ```
 
 ---
 
#### HAVING 
 
 
 
 `GROUP BY` also has its own conditional clause statement, called the `HAVING` clause.  The `HAVING` clause specifies a search condition for the group or aggregate.  Some RDBMS (e.g., MySQL) apply the `HAVING` condition after groups are formed effectively acting as a filter.
 
 The following query returns the average price of the categories by a particular manufacturer.
 
  ```SQL
 SELECT category_id, ROUND(AVG(price),2) as AveragePrice
 FROM Products
 WHERE manufacturer_id=208
 GROUP BY category_id
 HAVING AveragePrice>10;
 ```
 
 It is possible to have compound conditional statements in the `HAVING` clause (using `AND` and `OR`)  
 
 
 Lastly, the `ORDER BY` clause can be appended after the `GROUP BY` / `HAVING` clause(s).  
 
  ```SQL
 SELECT category_id, ROUND(AVG(price),2) as AveragePrice
 FROM Products
 WHERE manufacturer_id=208
 GROUP BY category_id
 HAVING AveragePrice>10
 ORDER BY category_id DESC;
 ```
 
 However, the same results will be return by using the `DESC` after the column name in the `GROUP BY` clause.  In particular, the above query returns the same results as:
 
  ```SQL
 SELECT category_id, ROUND(AVG(price),2) as AveragePrice
 FROM Products
 WHERE manufacturer_id=208
 GROUP BY category_id DESC
 HAVING AveragePrice>10;
 ```
 
 ---
 
 
 
