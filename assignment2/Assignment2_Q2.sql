--Question 2
/*
Produce a table showing the total books published by each author between 
2000 and 2015. Show only the rows if the total published books is greater 
or equal 3. Sort the authors in ascending order. Assuming you do not 
know the MediaID but you know the MediaCode.
*/
SELECT Author, COUNT(PubYear) AS 'Total Books Published'
FROM Item i JOIN Media m ON	i.MediaID = m.MediaID 
WHERE PubYear >= 2000 AND PubYear <= 2015 AND MediaCode = "HDBK" OR MediaCode = "PAPER" --These two mediacodes are books in the database
GROUP BY Author
HAVING COUNT(PubYear) >= 3
ORDER BY Author ASC
