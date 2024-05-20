/* Write your T-SQL query statement below */
WITH tag_people AS (
    SELECT  *, 
            CASE
                WHEN people >= 100 THEN 1
                ELSE 0
            END AS is_more_100
    FROM Stadium
)

, consecutive_days AS (
    SELECT  *,
            LEAD(is_more_100) over (order by id) as lead1,
            LEAD(is_more_100, 2) over (order by id) as lead2,
            LAG(is_more_100) over (order by id) as lag1,
            LAG(is_more_100, 2) over (order by id) as lag2
    FROM tag_people
)

SELECT id, visit_date, people
FROM consecutive_days
WHERE   people >= 100 AND ( (lag1 = 1 AND lag2 = 1) 
                        OR  (lead1 = 1 AND lead2 = 1)
                        OR  (lag1 = 1 AND lead1 = 1) )
