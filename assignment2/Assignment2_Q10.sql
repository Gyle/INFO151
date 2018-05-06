--Question 10
/*
Use only a left outer join to find the customers who did not make any loan. Show the CustomerID, Full
Name, and Major. Show only the rows contain “INFO” major only.
*/
SELECT DISTINCT c.CustomerID, LastName || ', ' || FirstName AS 'Full Name', Major  -- used DISTINCT as there were duplicate names
FROM Customer c LEFT OUTER JOIN Loan l ON c.CustomerID = l.CustomerID 
WHERE Major = 'INFO' AND l.CustomerID IS NULL  --by checking if right_table.CustomerID == null, we eliminate the inner join matching results.
Order by c.CustomerID 