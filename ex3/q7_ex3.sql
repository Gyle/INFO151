/*
Find employees who were hired in 2014. Show their names, the dates of hire,
and the number of days since they join the company. Hint: use the julianday()
and strftime() functions.
https://www.tutorialspoint.com/sqlite/sqlite_date_time.htm
*/
SELECT EmpName, HireDate, JULIANDAY('now') - JULIANDAY(HireDate) AS 'Tenure (Days)'
FROM Employee
--WHERE HireDate LIKE '2014%'
WHERE strftime('%Y',  HireDate) = '2014'