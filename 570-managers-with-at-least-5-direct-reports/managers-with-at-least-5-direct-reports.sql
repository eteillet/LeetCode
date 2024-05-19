/* Write your T-SQL query statement below */

SELECT E2.name
FROM Employee E1
INNER JOIN Employee E2 ON E2.id = E1.managerId
GROUP BY E1.managerId, E2.name
HAVING COUNT(*) >= 5

