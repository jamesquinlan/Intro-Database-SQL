### Stored Programs 
---
__Stored Procedures__ are one of four types of stored programs introduced with version MySQL 5.0.   _Stored programs_ which uses procdural code to control the flow of execution and consists of one or more SQL statements stored within the database.  

There are four types of stored programs:

1. __Stored Procededures__:  Called from an application that has access to the database
2. __Stored function__: called from a SQL statement.  Works much like a pre-build function like `sum` or `max` 
3. __Trigger__: executed in response to DML commands
4. __Event__: scheduled execution


##### Benefits of Stored Procedures

- Stored procedures can increase the database performance since in many implementations stored procedures are __compiled__ and stored in the database. NOTE: MySQL implements the stored procedures differently as stored procedures are compiled on the fly (the first time per connection) and stores the compiled version in cache.  Applications that call the stored procedure multiple times per connection will use the compiled version, thus run faster.  

- Stored procedures reduce traffic between application and database.  The application only sends name and parameters to the procedure instead of multi-line queries. 

- Stored procedures are secure. Permissions can be given to access stored procedures without giving permissions to the underlying database tables.  Using stored procedures can counter SQL injection attacks.


### Stored Procedures
---
The basic syntax for a store procedure is given below.  Note the use of `DELIMITER`.  This is needed to change from the default (semi-colon), to something else because semi-colons are used within the procedure.  Procedures are called using the `CALL` command.

```sql
USE [database];  # database is the name of the database you want to use  

# change the delimited (// is also commonly used)
DELIMITER $$  

CREATE PROCEDURE procedure_name
(
       parameters 
)
BEGIN
      DECLARE variableName varType Default def_value; #NOTE: Must be called different than Table Column
      
      QUERY or CODE
END $$

DELIMITER;

CALL procedure_name;

```

__Example__:  Create a stored procedure that gets all the products.

```sql
use unemath_quinlan; 	# select database to use

DROP PROCEDURE IF EXISTS GetAllProducts;

DELIMITER //			# change the delimited from semi-colon to something else

 CREATE PROCEDURE GetAllProducts()
   BEGIN
		SELECT *  FROM Products;
   END //
 
 DELIMITER ;			# change delimited back to original	
```

NOTE:  Duration time - is the time that query needs to be executed. You should try to minimize it when optimizing performance of sql query.



### Flow Control Statements
---

`IF...ELSEIF...ELSE`: conditional flow control.

`CASE...WHEN...ELSE`: also a conditional flow control typically used when there are a small number of cases

`WHILE...DO...LOOP`: repetition structure that continually executes while a condition is true

`REPEAT...UNTIL...END REPEAT`:  repeat while condition is true

`DECLARE CURSOR FOR`:  Defines a result set that can be processed by a loop


##### STORED PROCEDURE EXAMPLE (use as a template)

```sql
USE unemath_quinlan;
DROP PROCEDURE IF EXISTS OrderTotal;
DELIMITER //	# change default delimiter
 CREATE PROCEDURE OrderTotal
 (
       # parameters - use if needed
       IN order_num 	int,		# can be used without the keyword IN
       OUT order_total 	decimal(9,2)  	# must use keyword OUT
 )
   BEGIN
	# declare local variables
	declare quantity	int default 1; 
        declare unit_price 	decimal(9,2);
	declare running_total	decimal(9,2);
        
	SELECT 
    		SUM(P.msrp * OD.qty) AS order_total
	FROM
    		unemath_quinlan.Products AS P
        		INNER JOIN
    		unemath_quinlan.OrderDetails AS OD ON P.id = OD.product
	WHERE
    		OD.`order` = order_num;
   END //
 DELIMITER ;
```


Call this procedure using `CALL OrderTotal(1,@order_total)`.


##### IF THEN ELSE

__EXAMPLE__: We want all orders before a certain date (or after a certain date)



```sql
USE unemath_quinlan;
DROP PROCEDURE IF EXISTS OrdersBeforeDate;
DELIMITER //    # change default delimiter
 CREATE PROCEDURE OrdersBeforeDate
 (
       # parameters - use if needed
       theDate      date       # NOTE: no IN keyword
 )
   BEGIN
    IF theDate<Now() THEN
        SELECT 
                Orders.id AS Order_Number,
				Orders.date AS Order_Date,
                Orders.customer AS Customer
        FROM
                Orders;
	END IF;
END //

DELIMITER ;
```
