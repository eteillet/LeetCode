/* Write your T-SQL query statement below */
WITH Cte AS (
    SELECT
        tiv_2016,
        COUNT(*) OVER (PARTITION BY lat, lon) as city,
        COUNT(*) OVER (PARTITION BY tiv_2015) as t_2015
    FROM Insurance
)

SELECT ROUND(SUM(tiv_2016), 2) as tiv_2016
FROM Cte
WHERE city = 1 AND t_2015 > 1