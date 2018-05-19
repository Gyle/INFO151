--Question 3 SUB QUERY
SELECT l.LoanID
FROM Customer c JOIN Loan l JOIN InventoryItem ii JOIN Item i JOIN Media m
	 ON c.CustomerID = l.CustomerID AND l.InventoryItemID = ii.InventoryItemID AND ii.ItemID = i.ItemID AND i.MediaID = m.MediaID
WHERE Major = 'INFO' AND MediaCode = 'DVD'