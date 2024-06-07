/* Write your T-SQL query statement below */
SELECT distinct customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(distinct product_key) = (SELECT COUNT(*) FROM Product)
ORDER BY customer_id