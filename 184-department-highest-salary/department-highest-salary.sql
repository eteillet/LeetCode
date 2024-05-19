/* Write your T-SQL query statement below */
WITH Cte as (
    SELECT  D.name as Department,
            E.name as Employee,
            E.salary as Salary,
            RANK() over (PARTITION BY D.name ORDER BY e.salary DESC) as rank
    FROM Employee E
    LEFT JOIN Department D ON D.id = E.departmentId
)
SELECT Department, Employee, Salary
FROM Cte
WHERE rank = 1
