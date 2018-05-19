--Question 6
/*
(a) Find the total overdue fee for the customer "Barclay, Fletcher" without using ID in the query.
(b) How many distinct students (exclude "Barclay, Fletcher") with a single overdue fee greater than
half the total overdue fee of "Barclay, Fletcher"? You must use 6(a) as a subquery. You must use
the “NOT” SQL in this question.
*/
-- SUB QUERY
SELECT SUM(OverdueFee)	-- I am comparing OverdueFee in where clause as this question wants to compare by 'single overdue fee'
FROM Customer c1 JOIN Loan l1 ON c1.CustomerID = l1.CustomerID
WHERE LastName || ', ' || FirstName = "Barclay, Fletcher" 
