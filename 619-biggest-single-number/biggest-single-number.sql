/* Write your T-SQL query statement below */
WITH max_single_num AS (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
)

SELECT ISNULL(MAX(num), NULL) num
FROM max_single_num