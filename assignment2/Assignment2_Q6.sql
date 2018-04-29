--Question 6
/*
(a) Find the total overdue fee for the customer "Barclay, Fletcher" without using ID in the query.
(b) How many distinct students (exclude "Barclay, Fletcher") with a single overdue fee greater than
half the total overdue fee of "Barclay, Fletcher"? You must use 6(a) as a subquery. You must use
the “NOT” SQL in this question.
*/

SELECT LastName || ', ' || FirstName AS 'Full Name', OverdueFee--, COUNT(OverdueFee) AS "Number of Overdue Fees", SUM(OverdueFee) AS "Overdue Fee"
FROM Customer NATURAL JOIN Loan
/*WHERE LastName IS NOT "Barclay" AND OverdueFee > (SELECT SUM(OverdueFee)
												  FROM Customer NATURAL JOIN Loan
												  WHERE LastName = "Barclay" AND FirstName = "Fletcher") / 2
GROUP BY LastName
HAVING COUNT(OverdueFee) = 1  --Want Single Overdue Fee
--Kim, Soing. shouldnt be in the results but she is?*/