--Question 9
/*
Show the number of books published each year by each author. Show only the rows for author who
published more than 1 book in a year. The table should show author, Pubyear, and “Total Book
Published in Year”. MediaID should not be used in this query, use MediaCode.
*/
SELECT Author, PubYear, COUNT(PubYear) AS "Total Book Published in Year"
FROM Item i JOIN Media m ON i.MediaID = m.MediaID
WHERE MediaCode = "HDBK" OR MediaCode = "PAPER" --These two mediacodes are books in the database
GROUP BY Author, PubYear   -- Grouping by PubYear as well to ensure COUNT shows for only > 1 per year instead of overall.
HAVING COUNT(PubYear) > 1