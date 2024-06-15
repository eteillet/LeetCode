/* Write your T-SQL query statement below */

WITH first_order AS (
    SELECT  customer_id,
            MIN(order_date) AS first_order_date
    FROM Delivery
    GROUP BY customer_id
)

, delay AS (
    SELECT  F.customer_id,
            CASE
                WHEN DATEDIFF(DAY, F.first_order_date, Del.customer_pref_delivery_date) = 0 THEN 1
                ELSE 0
            END AS is_immediate
    FROM first_order F
    LEFT JOIN Delivery Del
        ON Del.customer_id = F.customer_id AND Del.order_date = F.first_order_date
)

SELECT ROUND(SUM(is_immediate) * 100.0 / COUNT(*), 2) AS immediate_percentage 
FROM delay