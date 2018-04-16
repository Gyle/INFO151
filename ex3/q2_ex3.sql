/*
List the average salary of the Full Time employees in each department. Round
Average Salary to 2 decimal places (Hint: use the Round function)
*/
SELECT DeptName, ROUND( AVG(Salary) , 2) AS 'Average Salaray'
FROM Department Dep JOIN Work Wor JOIN Employee Emp ON Dep.DeptID = Wor.DeptID AND Wor.EmpID = Emp.EmpID
WHERE Percent_Time = 100
GROUP BY (DeptName)