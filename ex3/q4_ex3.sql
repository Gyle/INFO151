/*
Find the minimum, average, and maximum age of the employees for each
department.
*/
SELECT D.DeptID, DeptName, MIN(Age), AVG(Age), MAX(Age)
FROM Department D JOIN Work W JOIN Employee E ON D.DeptID = W.DeptID AND W.EmpID = E.EmpID
GROUP BY (DeptName)