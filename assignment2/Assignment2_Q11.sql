--Question 11
/*
How many students with a total overdue fee greater than half the total overdue fee of "Barclay,
Fletcher" (exclude "Barclay, Fletcher")?
*/
-- I decided to not display 1 row using COUNT() like Question 6 because I need the HAVING clause. And to
-- use the HAVING clause, we need to use GROUP BY. I need HAVING clause to compare for the "total overdue fee".
-- Using the GROUP BY clause splits up the result of COUNT(), not making the result 1 row anymore.
SELECT DISTINCT LastName || ', ' || FirstName AS 'Full Name', SUM(OverdueFee) AS "Total Overdue Fee"
FROM Customer c JOIN Loan l ON c.CustomerID = l.CustomerID
WHERE NOT LastName || ', ' || FirstName = "Barclay, Fletcher"
GROUP BY LastName || ', ' || FirstName
HAVING SUM (OverdueFee) > (SELECT SUM(OverdueFee) -- I am comparing SUM of OverdueFee in having clause as this question wants to compare by 'total overdue fee'
						   FROM Customer c1 JOIN Loan l1 ON c1.CustomerID = l1.CustomerID
						   WHERE LastName = "Barclay" AND FirstName = "Fletcher") / 2