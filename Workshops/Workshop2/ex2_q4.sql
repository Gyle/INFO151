SELECT Man.EmpID || '-' || Emp.EmpName AS 'Manager ID and Name', DeptName AS 'Name of Department', Budget
FROM Employee Emp JOIN Manager Man JOIN Department Dep ON Emp.EmpID = Man.EmpID AND Man.DeptID = Dep.DeptID
WHERE Budget > 750000
ORDER BY Budget DESC