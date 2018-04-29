--Question 10
/*
Use only a left outer join to find the customers who did not make any loan. Show the CustomerID, Full
Name, and Major. Show only the rows contain “INFO” major only.
*/
SELECT CustomerID, LastName || ', ' || FirstName AS 'Full Name', Major