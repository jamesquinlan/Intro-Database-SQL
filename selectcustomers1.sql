# Find all customers that ordered a particular product (e.g., 11884)

SELECT Customers.fname,Customers.lname,Customers.zip 
FROM unemath_quinlan.Customers
WHERE Customers.id 
IN 
  (
	  Select Orders.customer from unemath_quinlan.Orders inner join unemath_quinlan.OrderDetails
    on Orders.id=OrderDetails.order where OrderDetails.product=11884
  )
;
