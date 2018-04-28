--Question 4
/*
The library would like to know the number of times a customer has an overdue fee and their total
overdue fee. Sort the output by the ‘Number of times overdue’ in descending order then by the ‘Total
overdue fee’ in descending order. Show only the total overdue fee greater or equal to $5 but less than
$100.
*/
SELECT loa.CustomerID, FirstName || ' ' || LastName AS 'Full Name', COUNT(OverdueFee) AS "Number of times overdue", SUM(OverdueFee) AS "Total overdue fee"
FROM CUSTOMER cus JOIN LOAN loa ON cus.CustomerID = loa.CustomerID
WHERE OverdueFee is not NULL and OverdueFee >= 5 and OverdueFee < 100
GROUP BY loa.CustomerID
ORDER BY COUNT(OverdueFee) DESC, SUM(OverdueFee) DESC