--Question 11
/*
How many students with a total overdue fee greater than half the total overdue fee of "Barclay,
Fletcher" (exclude "Barclay, Fletcher")?
*/
SELECT DISTINCT LastName || ', ' || FirstName AS 'Full Name', COUNT(OverdueFee) AS "Number of Overdue Fees", SUM(OverdueFee) AS "Overdue Fee"
FROM Customer c JOIN Loan l ON c.CustomerID = l.CustomerID
WHERE NOT LastName = "Barclay"
GROUP BY LastName
HAVING SUM (OverdueFee) > (SELECT SUM(OverdueFee)
						   FROM Customer NATURAL JOIN Loan
						   WHERE LastName = "Barclay" AND FirstName = "Fletcher") / 2