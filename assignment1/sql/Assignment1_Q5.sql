--Question 5
SELECT FirstName || " " || LastName AS "Full Name", Gender, MemberStatus, MemberSince AS "Member Since", Major
FROM Customer
WHERE FirstName LIKE '% %' OR FirstName LIKE '%-%'