/* Write your T-SQL query statement below */

WITH minimum_salary_high_earner AS (
    SELECT  departmentId, name, salary,
            DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS RN
    FROM Employee
)

SELECT D.name as Department, E.name as Employee, E.salary as Salary
FROM Employee E
LEFT JOIN Department D
    ON D.id = E.departmentId
LEFT JOIN minimum_salary_high_earner H
    ON H.departmentId = E.departmentID AND H.name = E.name AND H.salary = E.salary
WHERE H.RN <= 3 
ORDER BY E.departmentId ASC, E.salary DESC