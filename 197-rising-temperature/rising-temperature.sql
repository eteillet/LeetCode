/* Write your T-SQL query statement below */

SELECT w1.id
FROM Weather w1, Weather w2
WHERE w2.recordDate = DATEADD(day, -1, w1.recordDate) and w1.temperature > w2.temperature