/*
The hardware department wants to give its employees 2% bonus because they
finished the project early. This 2% bonus is based on the percentage of time an
employee works for the Hardware department. For instance, if an employee
works 50% for the Hardware department and earns $20,000, this extra bonus
will be calculated on $10,000 because only 50% of total salary is paid by the
Hardware department.
Write a query to calculate the 2% bonus for all the employees’ of Hardware
department. This newly calculated column should be named as “Bonus from
Hardware Dept.”. The output format should be the same as the table below.
Try to use the alias for employee as “E”, department as “D” and work as “W”.
*/

SELECT Emp.EmpName AS 'Name', Salary, Percent_Time, Percent_Time/100*Salary AS 'Bonus from Hardware Dept.'
FROM Employee Emp JOIN Work Wor JOIN Department Dep ON Emp.EmpID = Wor.EmpID AND Wor.DeptID = Dep.DeptID
WHERE DeptName = 'Hardware'
ORDER BY Budget DESC