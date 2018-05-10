--Question 11
/*
How many students with a total overdue fee greater than half the total overdue fee of "Barclay,
Fletcher" (exclude "Barclay, Fletcher")?
*/
SELECT DISTINCT LastName || ', ' || FirstName AS 'Full Name', SUM(OverdueFee) AS "Total Overdue Fee"
FROM Customer c JOIN Loan l ON c.CustomerID = l.CustomerID
WHERE NOT LastName || ', ' || FirstName = "Barclay, Fletcher"
GROUP BY LastName || ', ' || FirstName
HAVING SUM (OverdueFee) > (SELECT SUM(OverdueFee) -- I am comparing OverdueFee in having clause as this question wants to compare by 'total overdue fee'
						   FROM Customer c1 JOIN Loan l1 ON c1.CustomerID = l1.CustomerID
						   WHERE LastName = "Barclay" AND FirstName = "Fletcher") / 2