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
 
 #### HAVING
 
 ----
 
 `GROUP BY` also has its own conditional clause statement, called the `HAVING` clause.  The `HAVING` clause specifies a search condition for the group or aggregate.  Some RDBMS (e.g., MySQL) apply the `HAVING` condition after groups are formed effectively acting as a filter.
 
 The following query returns the average price of the categories by a particular manufacturer.
 
  ```SQL
 SELECT category_id, ROUND(AVG(price),2) as AveragePrice
 FROM Products
 WHERE manufacturer_id=200
 GROUP BY category_id
 HAVING AveragePrice>10;
 ```
 
 Lastly, the `ORDER BY` clause can be appended after the `GROUP BY` / `HAVING` clause(s).  
 
  ```SQL
 SELECT category_id, ROUND(AVG(price),2) as AveragePrice
 FROM Products
 WHERE manufacturer_id=200
 GROUP BY category_id
 HAVING AveragePrice>10
 ORDER BY category_id DESC;
 ```
 
 ---
 
 
 
