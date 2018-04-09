/*
Donald King, manager of the Marketing department, would like to know
which employees in his department are younger than 40 OR earn less than
$100,000. Your query should show all the columns from Employee table.
*/

SELECT Emp.EmpID, Emp.EmpName, Age, Salary, HireDate
FROM Employee Emp JOIN Manager Man JOIN Department Dep ON Emp.EmpID = Man.EmpID AND Man.DeptID = Dep.DeptID
WHERE (Emp.Age < 40 OR Salary < 100000) AND DeptName = 'Marketing'
ORDER BY Budget DESC