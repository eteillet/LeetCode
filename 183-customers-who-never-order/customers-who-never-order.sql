/* Write your T-SQL query statement below */

SELECT c.name as Customers
FROM Customers c
FULL OUTER JOIN Orders o
ON o.customerId = c.id
WHERE o.Id IS NULL