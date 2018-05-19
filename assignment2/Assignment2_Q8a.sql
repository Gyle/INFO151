--Question 8
/*
(a) Find the total number of loan for each customerID.
(b) Show the total number of loan for each customer include customers who have no loan. You must
use 8(a) as sub-query to form the right part of the outer join table. Show the result according to the
format below
*/
-- SUB QUERY
SELECT CustomerID, COUNT(CustomerID) AS "Totalloan"  -- count of customerID counts how many times they appear in the loan table
FROM Loan											 -- and did not use * as we only need CustomerID to join and COUNT() to get total.
GROUP BY CustomerID