--Question 4
/*
The library would like to know the number of times a customer has an overdue fee and their total
overdue fee. Sort the output by the ‘Number of times overdue’ in descending order then by the ‘Total
overdue fee’ in descending order. Show only the total overdue fee greater or equal to $5 but less than
$100.
*/
SELECT LastName || ', ' || FirstName AS 'Full Name', COUNT(OverdueFee) AS "Number of times overdue", SUM(OverdueFee) AS "Total overdue fee"
FROM CUSTOMER cus JOIN LOAN loa ON cus.CustomerID = loa.CustomerID
GROUP BY LastName || ', ' || FirstName						-- There is no point having a WHERE clause to check if overdue is null because the
HAVING SUM(OverdueFee) >= 5 AND SUM(OverdueFee) < 100		-- HAVING clause only shows fees at least of $5. $0 means no overdue fee so this
ORDER BY COUNT(OverdueFee) DESC, SUM(OverdueFee) DESC		-- HAVING clause covers the explicit request.