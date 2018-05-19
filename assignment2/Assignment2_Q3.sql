--Question 3
/* 
Find the customers who have an item due on the 8th August 2015 and 
has not “checkedin” in the loan table. Sort the Full Name in ascending order. 
Show only the date without the time. Do not use strftime() in this question.
*/
SELECT LastName || ', ' || FirstName AS 'Full Name', Title, DATE(DueDate) AS  'Due Date'
FROM Customer Cus JOIN Loan Lon JOIN InventoryItem inven JOIN Item ite ON Cus.CustomerID = Lon.CustomerID AND inven.ItemID = ite.ItemID AND Lon.InventoryItemID = inven.InventoryItemID
WHERE Date(DueDate) = '2015-08-08' AND CheckedIn IS NULL  -- if checkedin is null, then customer has not checked in the load table.
ORDER BY LastName || ', ' || FirstName ASC