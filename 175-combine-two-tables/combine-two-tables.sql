/* Write your T-SQL query statement below */

SELECT p.firstname, p.lastname, a.city, a.state
FROM Person p
LEFT JOIN Address a
ON a.personId = p.personId