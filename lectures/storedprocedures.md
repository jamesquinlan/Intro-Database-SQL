### Stored Programs INCOMPLETE (Covered Monday after Thankgiving)
---
__Stored Procedures__ are one of four types of stored programs introduced with version MySQL 5.0.   _Stored programs_ which uses procdural code to control the flow of execution and consists of one or more SQL statements stored within the database.  

There are four types of stored programs:

1. __Stored Procededures__:  Called from an application that has access to the database
2. __Stored function__: called from a SQL statement  
3. __Trigger__: executed in response to DML commands
4. __Event__: scheduled execution

### Flow Control Statements
---

`IF...ELSEIF...ELSE`: conditional flow control.

`CASE...WHEN...ELSE`: also a conditional flow control typically used when there are a small number of conditional cases

`WHILE...DO...LOOP`: repetition structure that continually executes while a condition is true

`REPEAT...UNTIL...END REPEAT`:  repeat while condition is true

`DECLARE CURSOR FOR`:  Defines a result set that can be processed by a loop

### Stored Procedures
---
The basic sytax for a store procedure is given below.  Note the use of `DELIMITER`.  This is needed to change from the default (semi-colon), to something else because semi-colons are used within the procedure.  Procedures are called using the `CALL` command.

```sql
USE [database];  # database is the name of the database you want to use  

# change the delimited (// is also commonly used)
DELIMITER $$  

CREATE PROCEDURE procedure_name
(
       parameters 
)
BEGIN
      DECLARE variable varType Default def_value;
      
      QUERY
END $$

DELIMITER;

CALL procedure_name;

```

__Example__:  Create a stored procedure that gets all the products.

```sql

```

NOTE:  Duration time - is the time that query needs to be executed. You should try to minimize it when optimizing performance of sql query.
