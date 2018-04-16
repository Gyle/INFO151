/*
List the departments with less than 5 part-time employees (i.e., Percent_Time
< 100).
*/
SELECT DeptName 
FROM Department Dep JOIN  Work Wor ON Dep.DeptID = Wor.DeptID
WHERE Percent_Time < 100
GROUP BY DeptName
HAVING  COUNT(EmpID) < 5
