--Question 3
/*. Write the SQL statement to update the “DueDate” of all the “DVD” items
borrowed by “INFO” students in the Loan table. The new ”DueDate” is the
original “DueDate” plus 10 days and 12 hours. (Note: ignore the “CheckedIn”
column.)*/

UPDATE Loan
SET DueDate = datetime(DueDate, '10 days', '12 hours') 
WHERE LoanID IN (SELECT l.LoanID
				 FROM Customer c JOIN Loan l JOIN InventoryItem ii JOIN Item i JOIN Media m
					  ON c.CustomerID = l.CustomerID AND l.InventoryItemID = ii.InventoryItemID AND ii.ItemID = i.ItemID AND i.MediaID = m.MediaID
				 WHERE Major = 'INFO' AND MediaCode = 'DVD')

