--Question 4b
/*(b) After creating the above table, the library manager wants to add a MediaID
attribute which is a foreign key from the Media table to the Category table.
Write the alter SQL to add MediaID in the table. Use the Integer data type
for the MediaID attribute.*/

ALTER TABLE Category
ADD MediaID INTEGER;

--ALTER TABLE Category
--ADD FOREIGN KEY(`MediaID`) REFERENCES Media(MediaID);