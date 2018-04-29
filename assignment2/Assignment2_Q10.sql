--Question 10
/*
Use only a left outer join to find the customers who did not make any loan. Show the CustomerID, Full
Name, and Major. Show only the rows contain “INFO” major only.
*/
SELECT c.CustomerID AS 'Customer ID', LastName || ', ' || FirstName AS 'Full Name', Major
FROM Customer c JOIN (SELECT *
					  FROM Loan
					  WHERE OverdueFee IS NULL) no_loan_table ON c.CustomerID = no_loan_table.CustomerID
WHERE Major = 'INFO'