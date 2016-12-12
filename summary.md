### Index

* [Overview](#overview)
* [Tables](#relations--tables)
* [Normal Forms](#data-model-and-normal-forms)
* [Aggregate Functions](#aggregate-functions)
* [DQL](#dql)
* [DBA](#dba)
* [Perfomance Tuning](#performance-tuning)
* [Stored Programs](#stored-programs)

 



#### Overview

* [MySQL](http://www.mysql.com/)


SQL stands for Structured Query Language and was developed in the 1970's by IBM.  SQL has various pronunciations.  

__Why learn SQL__?  

There are many relational database platforms including Oracle, Microsoft, SQL Server, DB2, SQLite, Microsoft Access, and PostgreSQL. We chose to use __MySQL__.  First, MySQL is open source, free for anybody to use, well understood, and used by many companies such as: Facebook, YouTube within Google, Yelp, Dropbox, GitHub, LinkedIn, Etsy, Send grid, Twitter, Booking.com, Square, Pintrest, Yahoo, and lots of others.   

Companies have to keep track of a lot of data, and the only practical way to do that is to store the data is some type of database.  The only way to retrieve data from a database is to write your own SQL queries, which are structured lines of computer code that extract data.  
Academic researchers of designed a study to determine skills needed by (technical) employers. They asked over 400 recruiters from technical companies to answer the question: "When I recruit, it is important that the students have the following coursework or knowledge:..." Then the recruiters had to rank a bunch of possible responses. The top three on the final list were:

1. Communication Skills, in particular, Data Visualization
2. SQL and Query skills
3. Basic Analytical skills 

FACT: Annual sales from the current database market are over $40 billion, and are expected to top $50 billion in the next few years.


#### Relations = Tables

Storing data in a flat file (e.g., Spreadsheet) is not efficient and typically there will be several redundacies.  A relational database (RDB) is much more efficient.  The basic unit is the __relation__ (or Table).  


#### Data Model and Normal Form(s)

The logical design of the database is of extreme importance.  Given a scenario, you will need to create a data model that contains relations and relationships among these relations.  The "graph" diagrams used during class are called __Entity Relation Diagrams__ (or ERD for short).  Essential to the design are __keys__ and __normal forms__.  Every relation should have a key and the entire design should follow the three normal forms (NOTE: There are eight total normal forms.  In theory, all designs should follow all normal forms, but in practice, only 3 are followed.  

View notes on [keys](https://github.com/jamesquinlan/mat301/blob/master/lectures/datamodel.md): 

View debate on natural vs. surrogate keys [here](http://www.databasejournal.com/features/mssql/article.php/3922066/SQL-Server-Natural-Key-Verses-Surrogate-Key.htm) 

1NF - requires each row to be unique.  In particular, one main rationale of using a RDB over a spreadsheet is to eliminate redundancy.  Second, each field (column, attribute) should only contain ONE piece of information.  For example, you do not want ADDRESS to be a column, instead split into street number, city, state, zip.  Similarly, NAME should be split into FIRST and LAST.  

2NF - Removes _functional dependencies_.   In a 2NF-compliant database structure, remove subsets of data that apply to multiple rows of a table and place them in separate tables.  Use foreign keys to connect.  For example, in the `CUSTOMERS` table storing the CITY, STATE, and ZIP would violate 2NF.  That is, the ZIP = f(CITY, STATE). The goal is to NOT include redundant data (for example, two customers from Portland, Maine).  NOTE: Assumes already in 1NF

3NF - Removes _transitive dependencies_. A transitive dependency exists if one attribute of a relation depends on another in the same relation (i.e., table).  For example, storing the manufacturer's website URL in the `Products`  table would produce a transitive dependency.  That is, the product is dependent on the manufacturer, a manufacturer's website URL is unique.  Then by transitivity, the product dependent on the URL.  NOTE:  Assumes table is already in 2NF.

#### Aggregate Functions

There are many ways to summarize data. Some of most common methods are to count the number or observations, add together all the values in a set of rows, take the average of values in a set of rows (or columns), or return the maximum value of a column in a set of rows.  Each of this summary methods aggregate the data in some way. Some aggregate functions in SQL are `count`, `sum`, `avg`, and `max`. 

#### DQL

Data query language uses the `SELECT` statement to obtain data from the database.  Every (nontrivial) query must contain the `FROM` clause.  By trivial query, we mean `SELECT 'HELLO WORLD'` uses the `SELECT` statement without the `FROM` clause, to print 'HELLO WORLD'.  Select queries can be simple or complex, contain subqueries and joins (depending on what questions you are trying to answer).  Here are a few questions (or statements).

* Find all product names that contain the word "Bird".

```sql
SELECT Products.name FROM unemath_quinlan.Products WHERE Products.name LIKE '%Bird%';
```

* Count all products that have the word "Bird" in its name.
```sql
SELECT COUNT(Products.id) FROM unemath_quinlan.Products WHERE Products.name LIKE '%Bird%';
```

* Find all products made in China from categories 116 and 430.
```sql
SELECT Products.id FROM unemath_quinlan.Products WHERE Products.country='China' and Products.category_id IN (116,430);
```

* Find the average cost of all products made in China from categories 116 and 430, round to two decimal places.
```sql
SELECT round(avg(Products.cost),2) 
FROM 
	unemath_quinlan.Products 
WHERE 
	Products.country='China' 
AND 	
	Products.category_id IN (116,430)
;
```


* Find all zipcodes from the state of West Virginia.
```sql
SELECT zip FROM unemath_quinlan.Zipcodes where state='WV';
```

* Find all customers' email addresses from West Virginia (note the use of a subquery).  Also, there is most likely more than one way to do this.

```sql
use unemath_quinlan;

SELECT 
    Customers.email
FROM
    Customers
WHERE
    Customers.zip IN 
       (
       SELECT 
            zip
        FROM
            unemath_quinlan.Zipcodes
        WHERE
            state = 'WV'
        )
; 
```

* List all products purchased from West Virginia customers.  In other words, what are the customers from West Virginia buying?  This is a complex query.  Ultimately, we want a listing of product names.  A good strategy would be to break this problem into smaller parts.  For example, first we will create a VIEW of customer ID from West Virginia.

```sql
use unemath_quinlan;

CREATE VIEW WVcustomers AS
SELECT 
    Customers.id
FROM
    Customers
WHERE
    Customers.zip IN 
       (
       SELECT 
            zip
        FROM
            unemath_quinlan.Zipcodes
        WHERE
            state = 'WV'
        )
; 
```

Next, we find all products using the VIEW we created.  This uses both inner and outer joins.  There is _certainly_ other ways to find this information.

```sql
use unemath_quinlan;

SELECT 
    Products.id, Products.name
FROM
	Products
		RIGHT OUTER JOIN
 OrderDetails ON Products.id = OrderDetails.product
    		INNER JOIN
 Orders ON OrderDetails.order = Orders.id
		INNER JOIN
	WVcustomers ON Orders.customer=WVcustomers.id;   
```

#### DBA

Discuss some of the primary responsibilities of a DBA (e.g., database replication and assigning user privileges)

#### Performance Tuning



#### Stored Programs

