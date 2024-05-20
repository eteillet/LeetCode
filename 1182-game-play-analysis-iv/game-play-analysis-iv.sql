/* Write your T-SQL query statement below */
WITH first_log_day AS (
    SELECT player_id, MIN(event_date) as event_date
    FROM Activity
    GROUP BY player_id
)

SELECT ROUND( COUNT(F.player_id) * 1.0 / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) as fraction
FROM first_log_day F
INNER JOIN Activity A
    ON A.player_id = F.player_id
WHERE DATEDIFF(day, F.event_date, A.event_date) = 1