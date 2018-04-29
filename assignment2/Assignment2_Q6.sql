--Question 6
/*
(a) Find the total overdue fee for the customer "Barclay, Fletcher" without using ID in the query.
(b) How many distinct students (exclude "Barclay, Fletcher") with a single overdue fee greater than
half the total overdue fee of "Barclay, Fletcher"? You must use 6(a) as a subquery. You must use
the “NOT” SQL in this question.
*/

SELECT DISTINCT LastName || ', ' || FirstName AS 'Full Name'
FROM Customer NATURAL JOIN Loan
WHERE OverdueFee >= (SELECT SUM(OverdueFee)
					 FROM Customer NATURAL JOIN Loan
					 WHERE LastName = "Barclay" AND FirstName = "Fletcher") / 2