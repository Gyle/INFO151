--Question 1
/*Write the SQL to update the Replacement Cost of all items published between
2005 and 2010. The new replacement cost = old replacement cost + (0.5% of
old replacement cost) X (Published Year - 2005) and at the same time update
the LostFee. The LostFee is the new ReplacementCost plus a re-stocking fee of
$10. (Note: use only one update statement.)*/

UPDATE Item		-- 0.005 as that is 0.5%
SET ReplacementCost = ROUND(ReplacementCost + (ReplacementCost * 0.005) * (PubYear - 2005),2),
	LostFee = ROUND(ReplacementCost + (ReplacementCost * 0.005) * (PubYear - 2005),2) + 10
WHERE PubYear BETWEEN 2005 AND 2010