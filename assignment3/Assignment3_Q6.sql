--Question 6
/*Use a correlated sub query method to find the customers who had made at least
one loan. Show the CustomerID and the ‘full name’ (firstname, lastname).(Hint:
use the customer table, the loan table and the “where exists’ method.)*/

SELECT CustomerID AS "CustomerID", FirstName||','||LastName AS "Full Name"
FROM Customer
WHERE EXISTS (SELECT CustomerID
			  FROM Loan
			  WHERE Customer.CustomerID = Loan.CustomerID)
