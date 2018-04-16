--Question 3
/* 
Find the customers who have an item due on the 8th August 2015 and 
has not “checkedin” in the loan table. Sort the Full Name in ascending order. 
Show only the date without the time. Do not use strftime() in this question.
*/
SELECT FirstName || ' ' || LastName AS 'Fullname', Date(DueDate) AS  'Due Date'
FROM Customer Cus JOIN Loan Lon ON Cus.CustomerID = Lon.CustomerID
WHERE Date(DueDate) =  '2015-08-08'
ORDER BY FirstName || ' ' || LastName ASC