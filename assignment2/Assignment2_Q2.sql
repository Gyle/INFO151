--Question 2
/*
Produce a table showing the total books published by each author between 
2000 and 2015. Show only the rows if the total published books is greater 
or equal 3. Sort the authors in ascending order. Assuming you do not 
know the MediaID but you know the MediaCode.
*/
SELECT Author, count(PubYear) as 'Total books published by each author between 2000 and 2015'
