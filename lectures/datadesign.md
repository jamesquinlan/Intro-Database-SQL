

### Data modeling and design

---


Consider the design of a data structure.  It is important to have a well-designed database to make queries easy and to avoid redundancy.  System requirements must be transformed into a data model.  

#### Entity-Relationship Data Model (LOGICAL DATA MODELING)

The ER model is extremely popular. ER is a logical data model, as opposed to a database design which is the physical model.  

1.  __Entity__: something the user wants to track (e.g., ORDERS, PRODUCTS, STUDENTS, CUSTOMERS, etc.).  In DB terms: effectively, ENTITY = TABLE
2.  __Attribute__: characteristics of an entity.  (cost, quantity, length, weight).  ATTRIBUTES = COLUMNS in the table.
3.  __Identifies__: Each instance of an entity has identifiers (attributes that identify, e.g., SS Number).  If the identifier consists of two or more attributes, then it is a __composite identifier__.  Identifiers can be unique (ss #) or nonunique (name).  The unique identifier is associated with one and only one entity instance, whereas nonunique associated with sets of instances.
4.  __Relationships__: Associate entities with each other.  There are three types of Degree 2 relationships (a.k.a. binary relationships).

    a).  one-to-one (1:1).  Often used to improve performance; large columns can be in a separate table.

    b).  one-to-many (1:N).  Parent - Child.  Most types of relationships.  
    
    c).  many-to-many (M:N).  Requires a _linking_ table.  Example: faculty and committees.
    

Classify the relationships between (student and locker, customer and orders, product and manufacturer). 

More examples (also ID-Dependent entities)
1. Building-Apartment
2. Textbook - Edition
3. Salesperson - Order 1:OM
4. Project - Assignment 1:OM
5. Patient - Prescription 1:OM.  This is different than _Patient and Pills_ (M:N).  In that case, Prescription would be the linking table.
6. Employee - Project
7. Faculty and committees



______

#### Relational Data Model (near physical model)

TABLES = RELATIONS  = (2d table with rows and columns) have properties:
1. Each row holds data pertaining to the entity
2. Each column holds data represeting an attribute
3. Cells must hold single data type (value).  Cannot be name AND address
4. Columns must be the same data type.
5. Row and column order doesn't matter.
6. Rows are unique

Equivalent Terms:
 1. Table = Relation = Entity
 2. Row = Record = Tuple
 3. Column = Field = Attribute

______

#### KEYS (identifiers)

A __key__ is one or more columns of a relation that is used to identify a row.  Unique (ID) or nonunique (department).  A __composite key__ is two or more attributes.   

__Candidate key__ are keys that uniquely identify each row.  __Primary key__ is *the* choosen key.  In PRODUCTS table, *id*, *code* and *upc* are candidate keys.

__Surrogate keys__ added to be short, arbitrary, and never changing.  Auto-incremented.  *id* is a surrogate key.  

__Foreign key__ a primary key in one table that is used to make a relation between tables. In a relationship, the _many_ side.   

_______



Steps in the design of a data model (or structure) are:

1. __Identify data elements__ (make a list.  For example, customer's name would be a data element of an order)
2. __Subdivide elements into smallest useful component__ (address can be split into 4 or 5 parts including city, state, and zip)
3. __Identify tables and assign columns__ (group elements into "entities" = tables)
4. __Each entity will have attributes__ (the nouns on the list are attributes per entity.
4. __Identify primary and foreign keys__.  Each table needs a primary key.  There are different schools of thought, take notice.  If for each element in one table there exists several related elements in another table, include a foreign key in the "many" table. (Also see __Referential integrity__)
5. Normalize
6. Identify indexes

_______

#### Functional Dependencies

y=f(x)

y is dependent on x 

x --> y

SSN --> (Name, age, etc., i.e., Person)

Therefore, we can define __primary key__ more formally as "one or more attributes that functionally determine all other attributes in the relation.'  SSN --> (first, last, department, email, phone) of the STUDENTS table (i.e., relation), BUT email --> (first, last, department, phone, ssn) as does (first, last, department) --> ssn, email, phone; assuming (first, last, department) is a candidate key.  


#### Referential Integrity
Referential integrity preserves relationships between tables so as to not create _orphaned_ rows.  Referential integrity must be explicitly declared using foreign key constraints.  For example, if a row in the primate key table is deleted, then what happens to the related rows in the foreign key table?  Similar circumstances can occur if inserting a row in foreign key table, or updating values in either table. Recap: Delect row from primary table; Insert row in foreign key table.   Example: Manufacturer ID is a foreign key in the Products table.  If we deleted the manufacturer from the Manufacturer table, then there would be a orphan in Man_ID in the Products table.  Similar, if we insert a row in the Products table that doesn't have a match in the Manufacturers table.

______

#### Normalization


__Normalization__ is the process of splitting a relation with more than one theme into a set of (related) relations each having only one theme.  Normalization eliminates data redundancy (which causes storage and maintenance problems).  Normalization must be applied in sequential order.  There are 7 forms, but in practice typically only 3 are used.  In some cases you __denormalize__ a data structure. We cover the first three.  These are the essentials. 

Consider:

| __Customer__ | __Order Number__ | __Item 1__ | __Item 2__  | __Item 3__ |
|--------------|------------------|------------|-------------|------------|
| 1            | 1                | 1          | 2           | 3          | 
| 1            | 2                | 4          | 2           |            | 
| 2            | 3                | 5          | 9           |            | 
| 2            | 4                | 1          |             |            | 


Consider ADVISOR-LIST (advisorID, advisorName, department, phone, office, studentID, studentName).  What is the primary key?
__Problem__, advisor information is listed many times in the table, thus inefficient data design.  In particular, __modification problem__.  If you needed to change an advisors information (office), you must do it *many* times.  Also, if an advisor only has one advisee, then deleting the student will delete the advisor too.  Lastly, there is redundancy in storage.


##### RULES 

1. Well-formed relations mean that every determinant must be a candidate key.
2. Relations that are not well-formed can be broken into two or more relations that are well-formed.

###### 

1. (1NF) All data is atomic (indivisible units).  More specifically, rows contain data about one entity (e.g., products), no two rows hold identical data, and no repeated columns.  Primary key is set and all attributes depend on primary key.  Specifically, 

    - Each row holds data pertaining to the entity
    
    - Each column holds data represeting an attribute
    
    - Cells must hold single data type (value).  Cannot be name AND address
    
    - Columns must be the same data type.
    
    - Row and column order doesn't matter.
    
    - Rows are unique
    
    - No repeated columns
    



2. (2NF) Minimize redudancy.  All nonkey attributes are determined by the primary key. Split any (partial) functional depended data into separate table.  For example, if customer table contained order information (as customers place orders), move order data to new table.  To apply, data must already be in 1NF.  If the PK is composite, no nonkey attributes can be determined by attribute(s) in the PK.  For example, (a, b, c, d, e) where PK=(a,b), then c, d, and e cannot be determined by a or b. 

__Example__: Since two different orders may contain the same items, those items don't depend on the order.  



3. (3NF)  Non-key columns must depend _only_ on primary key, that is remove transitive dependencies.  Reduces the duplication of data and ensure referential integrity; improve database processing while minimizing storage costs. 

(a, b, c, d, e) where PK=(a,b), then c, d, and e cannot be determined by c, d, e, or any combination of them. In particular, c <> f(d,e).  Order lines (specific items and quantities) are not solely dependent on order_id, as other customers can order the same products.   Another example, employee position information is not dependent on the employee.  More specifically, "associate professor" and the duties/description of the position are not dependent on me.  To apply, data must already be in 2NF.

__Example__: CustNum, First, Last, Address, City, State, and Zip.  City and state are determined by Zip.  City and state are dependent on Zip.  Zip is a determinant of City and State.  That is [City, State] = f(Zip).City and State depend on Zip.  

__Example__: ProductID, Manufacturer, Model.  Since the model=f(manufacturer), this violoates 3NF.  Apple makes 13" MacBook Air.  So, 13" MacBook Air depends on manufacturer, "Apple".  



__________

Example:


| __Proj #__ | __Proj. Name__ | __Emp #__ | __Emp Name__  | __Job__              | __Rate__ | __Hours__ |
|------------|----------------|-----------|---------------|----------------------|----------|-----------|
| 15         | Evergreen      | 103       | Mary Jane     | Ele. Engineer        | 85.50    | 23.8      |
|            |                | 101       | John Newhall  | DBA                  | 105.00   | 19.4      |
|            |                | 105       | Alice Johnson | Programmer           | 45.75    | 12.8      |
|            |                | 102       | David Silver  | System Analyst       | 96.50    | 21.4      |
| 17         | Tinkers Creek  | 114       | James Frommer | Clerical Support     | 26.89    | 48.8      |
|            |                | 103       | Mary Jane     | Ele. Engineer        | 85.50    | 19.7      |
|            |                | 118       | Ann Ramorous  | System Analyst       | 96.50    | 34.2      |
|            |                | 123       | Larry Ludwig  | Application Designer | 48.10    | 58.2      |
|            |                | 124       | Ralph DeMouth | General Support      | 18.36    | 14.1      |
| 20         | Caller 9       | 102       | David Silver  | System Analyst       | 96.50    | 12.0      |
|            |                | 101       | John Newhall  | DBA                  | 105.00   | 37.5      |
|            |                | 111       | James Frommer | Clerical Support     | 26.89    | 39.5      |
