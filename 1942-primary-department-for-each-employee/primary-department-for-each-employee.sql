/* Write your T-SQL query statement below */
WITH unique_dept AS
(
    SELECT employee_id, MIN(department_id) as department_id, COUNT(department_id) as nb
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(department_id) = 1 
)

SELECT employee_id, department_id
FROM unique_dept
UNION
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'

