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



#### Functions (UDF)
---

Functions (a.k.a. user defined functions) is a executable block of code.  MySQL only allows scalar functions (functions that return a single value).  Use the`RETURN` keyword in the function declaration (just before the `BEGIN`) and use the `RETURN()` to specify the value returned.

NOTE: Functions do not execute DML.

To CREATE a function: 

```sql
USE `unemath_quinlan`;
Delimiter //
CREATE FUNCTION `getManufacturerID` 
(
	manufacturer_parameter varchar(38) 
)
RETURNS INT
BEGIN
	declare man_id_var int;

	SELECT 
		manufacturer_id
	INTO man_id_var FROM
		unemath_quinlan.Manufacturers
	WHERE
		Manufacturers.manufacturer = manufacturer_parameter;

	RETURN man_id_var;
END//

DELIMITER ;
```

To use a function, call it just like any other (built-in) function in SQL.  For example, 

```sql
SELECT * FROM unemath_quinlan.Products WHERE manufacturer_id=ManufacturerID('Artline');
```


##### TRIGGERS
---
Triggers (introduced in 5.0) execute __before__ or __after__  (in response to) a DML command.  A `FOR EACH ROW` clause must be used.  `OLD` and `NEW` keywords can be used to get and set the values for the columns that are stored in the old row and the new row.


```sql
USE unemath_quinlan;
DELIMITER \\
CREATE TRIGGER customer_before_update
	BEFORE UPDATE ON customers
	FOR EACH ROW
BEGIN
	SET NEW.email=LOWER(NEW.email);
END\\
DELIMITER ;
```

Fire the trigger like:
```sql
UPDATE Customers
SET email='JSMITH@YAHOO.COM'
WHERE Customers.id=1;
```
