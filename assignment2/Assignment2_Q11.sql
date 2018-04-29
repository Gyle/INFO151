--Question 11
/*
How many students with a total overdue fee greater than half the total overdue fee of "Barclay,
Fletcher" (exclude "Barclay, Fletcher")?
*/
SELECT LastName, FirstName--COUNT(CustomerID) AS "Total amount of students overdue fee > threshold", 
FROM Customer NATURAL JOIN Loan
WHERE LastName != "Barclay" AND OverdueFee > (SELECT SUM(OverdueFee)
													 FROM Customer NATURAL JOIN Loan
													 WHERE LastName = "Barclay" AND FirstName = "Fletcher") / 2