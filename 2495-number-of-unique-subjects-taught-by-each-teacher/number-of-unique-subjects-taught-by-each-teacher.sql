/* Write your T-SQL query statement below */
SELECT teacher_id, COUNT(distinct subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id