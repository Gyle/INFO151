--Question 7
/*Update the customer table to create an email for the active member who has
been a member on and before 2011 and made at least one loan. In the same
update, change the ‘active’ status to ‘active gold’ for those customers who meet
the criteria. The email format is firstname.lastname@vuw.ac.nz. (Hint: use the
“where exists” method.)*/

UPDATE Customer
SET MemberStatus = 'active gold',
	Email = FirstName||'.'||LastName||'@vuw.ac.nz'
WHERE MemberSince <= 2011 AND EXISTS (SELECT CustomerID
									  FROM Loan
									  WHERE Customer.CustomerID = Loan.CustomerID)
	
