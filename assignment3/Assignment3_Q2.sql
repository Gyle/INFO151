--Question 2
/*Write the SQL to delete the rows in the Loan table where the *overdue fee* is less
than the average overdue fee in the Loan table. (Note: use only one delete
statement.)*/

DELETE FROM Loan
WHERE OverdueFee < (SELECT AVG(OverdueFee)
					FROM Loan )

