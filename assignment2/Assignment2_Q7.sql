--Question 7
/*
The manager is interested to know yearly borrowing volume by Gender. Present a table displaying the
Gender, Year, Month and The Number of Loans. Sort the results in descending order by Gender,
ascending order by Year and ascending order by Month. Show only the rows if the number of loans is
less than 25.
Hint: (1) Use CheckedOut date to extract the year and month when the book is loaned; (2) Use
strftime() function to deal with the year and month.
*/
SELECT Gender, strftime('%Y',CheckedOut) AS "Year", strftime('%m',CheckedOut) AS "Month", COUNT(CheckedOut) AS "The Number of Loans"
FROM Customer c JOIN Loan l ON c.CustomerID = l.CustomerID
GROUP BY strftime('%m',CheckedOut)
HAVING COUNT(CheckedOut) < 25
ORDER BY Gender DESC, strftime('%Y',CheckedOut) ASC, strftime('%m',CheckedOut) ASC