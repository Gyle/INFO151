--Question 12
/*
Use the SQL date modifier expression in chapter 44 of the Sqlite tutorial to add 3 days, 8 hours, 3
minutes, and 45 seconds to the date “2018-05-11 23:59:59”. This question does not require a
database.
*/
SELECT datetime('2018-05-11 23:59:59') AS "Original Date", datetime('2018-05-11 23:59:59', '3 days', '8 hours', '3 minutes', '45 seconds') AS "Modified Date"