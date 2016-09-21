## Database Design

### Data and Relational Modeling
(a.k.a. data structure)
----

##### Definitions (alphebetical):

1. __Attributes__: columns of a table 
1. __Data model__: is a description of data (information/situation/etc.) that includes the structure (attributes), the operations (queries/modifications), and constraints (field types)
1. __Domain__: Each component of the tuple is atomic data type (integer, string)
2. __Record__: (a.k.a. *row*) of a relation (table)
1. __Relation__: is a table; a set of tuples, not ordered list (see tuple below).  Relations change over time (tables get updated)
1. __Relational Model__: describes data using relations (i.e., tables)
1. __Schemas__: Name and attributes of a relation.  For example, `Course(title, room, time, instructor)`
1. __Tuples__: rows of a relation.  Tuples have one component for each attribute.

---
##### Key Constraints
Keys play an important part in relational models (thus database design). Keys are one or more attribute in a relation used to identify a record.  Keys ideally are unique, however, it is possible to have a nonunique key.   

A key containing two or more attributes is referred to as a __composite key__.  __Candidate keys__ are one or more attributes that uniquely identify each row in a relation.  Primary key(s) is/are the selected candidate key(s) to use.  In the `Products` table, `product_id` was the primary key.  Note `UPC` was a candidate key.

__Surrogate key__ is a column made by an arbitrary assignment of a key to a row.  Mostly, a surrogate key is an auto-incremented integer that has no connection to the data and is void of meaning.  For example, a __natural key_ for products is the `UPC` since it is unique to each product and each product has (or should have) a UPC.  (Another example of a *natural key* is a social security number of individuals).  However, it is possible for the UPC to change or become obsolete.  A generic (surrogate) key is often a better choice.  Google 'natural key vs. surrogate key', there is much discussion and debate on which is better and why.

__Foreign Key__ of one relation is a primary key in another.  Foreign keys are used to represent relationships between the relations.  In our case, there is a Manufacturers table which has `manufacturer_id` as its primary key, but is a foreign key in the `Products` table which is used to connected (or relate) the two tables.  

---
### Functional Dependencies

A __functional dependency__ is a form expression of a relationship between objects.  For example, `TotalCost = Quantity x Unit Cost`.  Therefore, (Quantity, Unit Cost) --> TotalCost.  That is, the quantity and unit cost DETERMINE the total cost.  The arrow --> can be read "determines".  Consider objects of different color, shape and weight.  If a yellow object is round and weighs 5lbs, a blue object is round and weigh 6 lbs, and a red object is cubic and weighs 5 lbs, THEN the object's color DETERMINES the weight and shape.  `color` is a candidate key.

### Relational Modeling
The basic steps are:
1. Identify entities
2. Subdivide (further) objects within entities
3. Select primary key (composite key)
4. Determine 





