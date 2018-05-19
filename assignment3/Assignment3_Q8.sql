--Question 8
/*Delete the rows in the Loan table which item has been ‘checkedin’ and with a
‘damaged’ status in the InventoryItem table. (Hint: use the “where exists”
method.)*/

DELETE FROM Loan
WHERE EXISTS

(SELECT *
FROM 