--Question 5
/*
 (a) Find all the unique customer full name with at least one loan.
*Important*
(1) Use the join syntax below for questions that require an inner join. Other syntax will not
be accepted.
SELECT column-list
FROM table 1 JOIN table 2 ON joint-condition
Where conditions
(2) Use “=” sign, for example “percent_time =100” not “percent_time IS 100”.
(b) Use 5(a) as a subquery, find all INFO students who did not make any loan. Include both their Full
Name, CustomerID, and Major in your results. 
*/
SELECT CustomerID, LastName || ', ' || FirstName AS 'Full Name', Major
FROM Customer
WHERE Major = 'INFO' AND LastName NOT IN(SELECT DISTINCT c.LastName
										 FROM Customer c JOIN Loan l on c.CustomerID = l.CustomerID)