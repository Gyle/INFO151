--Question 4a
/*The Library manager plans to group items by genre and asks the database
administrator for these changes to the database. Database administrator makes
the following suggestions. Write the SQL statements to implement his
suggestions.
(a) Create a table named Category. The Category table contains three attributes:
i. CategoryID: Integer, Primary Key (without auto-increment)
ii. CategoryDescription: Text
iii. CategoryCode: Text*/

CREATE TABLE Category(
	CategoryID INTEGER PRIMARY KEY,
	CategoryDescription TEXT,
	CategoryCode Text
)
