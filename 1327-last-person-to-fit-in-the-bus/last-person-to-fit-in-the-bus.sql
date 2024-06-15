/* Write your T-SQL query statement below */
WITH cumul AS (
    SELECT  turn, person_name, weight, SUM(weight) OVER (ORDER BY turn) as total_weight
    FROM Queue
),

closer AS (
    SELECT  person_name, 1000 - total_weight as diff        
    FROM cumul
    WHERE total_weight <= 1000
)

SELECT person_name
FROM closer
WHERE diff = (SELECT MIN(diff) FROM closer)