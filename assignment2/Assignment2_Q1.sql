--Question 1
/*
Produce a table showing the total books that are currently “CheckedOut” 
by every major. Show the Major and “Total Books Checkedout” in the
query result and sort the “Total Books Checkedout” in descending order. 
Use only the MediaCode in the Where condition.
*/
SELECT Major, count(status) as 'Total Books Checkedout'
