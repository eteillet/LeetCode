/* 
 Please write a DELETE statement and DO NOT write a SELECT statement.
 Write your T-SQL query statement below
 */

DELETE p1 
FROM Person p1, Person p2
WHERE p1.Id > p2.Id AND p1.email = p2.email 