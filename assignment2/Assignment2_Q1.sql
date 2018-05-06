--Question 1
/*
Produce a table showing the total books that are currently “CheckedOut” 
by every major. Show the Major and “Total Books Checkedout” in the
query result and sort the “Total Books Checkedout” in descending order. 
Use only the MediaCode in the Where condition.
*/
SELECT c.Major, COUNT(status) as 'Total Books Checkedout'
FROM Media m JOIN Item i JOIN InventoryItem inven JOIN Loan l JOIN Customer c
	ON  m.MediaID = i.MediaID AND i.ItemID = inven.ItemID AND inven.InventoryItemID = l.InventoryItemID AND l.CustomerID = c.CustomerID
WHERE MediaCode = "HDBK" OR MediaCode = "PAPER" --These two mediacodes are books in the database
GROUP BY Major
ORDER BY COUNT(status) DESC