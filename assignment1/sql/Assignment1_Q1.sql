--Question 1
SELECT Title, PubYear
FROM Item
WHERE PubYear IN (2011,2012,2014,2016)
ORDER BY PubYear DESC, Title ASC