--Question 8
/*Delete the rows in the Loan table which item has been ‘checkedin’ and with a
‘damaged’ status in the InventoryItem table. (Hint: use the “where exists”
method.)*/

DELETE FROM Loan
WHERE CheckedIn IS NOT NULL AND EXISTS (SELECT *	-- checking for if checked in is not null as that mean it is checked it.
									    FROM InventoryItem
									    WHERE Loan.InventoryItemID = InventoryItem.InventoryItemID 
										  	  AND Status = 'Damaged')

