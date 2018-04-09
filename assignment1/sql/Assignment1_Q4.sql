--Question 4
SELECT Title AS "Title of Item", PubYear AS "Year of Publication", Round(ReplacementCost,2) AS "ReplacementCost", Round(ReplacementCost*1.1,2) AS "ReplacementCost(NEW)"
FROM Item
WHERE PubYear = 2010 OR PubYear = 2014
ORDER BY PubYear DESC