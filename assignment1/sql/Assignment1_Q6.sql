--Question 6
SELECT DISTINCT Author
FROM Item
WHERE Author NOT LIKE 'a%,%' AND Author NOT LIKE '%a%,%' AND Author NOT LIKE '%a,%'