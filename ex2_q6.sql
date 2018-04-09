--Find employees who work half-time (Work.Percent_Time=50) in the
--Hardware department or the Operations department with more than $25,000
--Use the join syntax below for questions that require join.
--SELECT column-list
--FROM table 1 JOIN table 2 ON joint-condition
--Where conditions
--SQL EX02 p2
--salary. Your query should display “EmpID”, “EmpName”, “Salary” and
--“DeptName” columns. 

SELECT Emp.EmpID, Emp.EmpName, Salary, DeptName
FROM Employee Emp JOIN Work Wor JOIN Department Dep ON Emp.EmpID = Wor.EmpID AND Wor.DeptID = Dep.DeptID
WHERE Wor.Percent_Time = 50 AND Budget > 25000 AND DeptName IN('Operations','Hardware')
ORDER BY Budget DESC