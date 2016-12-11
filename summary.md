### Index

* [Overview](#overview)
 



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

#### Aggregate Functions

There are many ways to summarize data. Some of most common methods are to count the number or observations, add together all the values in a set of rows, take the average of values in a set of rows (or columns), or return the maximum value of a column in a set of rows.  Each of this summary methods aggregate the data in some way. Some aggregate functions in SQL are `count`, `sum`, `average`, and `max`. 

#### Database Design








