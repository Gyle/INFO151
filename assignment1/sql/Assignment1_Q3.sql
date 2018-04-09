--Question 3
SELECT InventoryItemID, Title, Status, Condition
FROM InventoryItem Inv JOIN Item Itm
ON Inv.ItemID = Itm.ItemID
WHERE Condition = "Poor"
ORDER BY Inv.ItemID ASC