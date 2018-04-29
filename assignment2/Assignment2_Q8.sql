--Question 8
/*
(a) Find the total number of loan for each customerID.
(b) Show the total number of loan for each customer include customers who have no loan. You must
use 8(a) as sub-query to form the right part of the outer join table. Show the result according to the
format below
*/
SELECT c.CustomerID, LastName, FirstName, T.TotalloanAll AS "Totalloan"
FROM Customer c LEFT OUTER JOIN (SELECT *, COUNT(OverdueFee) AS "TotalloanAll"
								 FROM Loan
								 GROUP BY CustomerID) T ON c.CustomerID = T.CustomerID