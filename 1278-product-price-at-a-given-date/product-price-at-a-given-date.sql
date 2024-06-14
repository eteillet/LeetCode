/* Write your T-SQL query statement below */
WITH never_change AS (
    SELECT product_id, 10 AS price
    FROM Products
    GROUP BY product_id
    HAVING MIN(change_date) > '2019-08-16'
),

last_change AS (
    SELECT product_id, new_price AS price
    FROM Products p1
    WHERE change_date IN (SELECT MAX(change_date) AS date
                            FROM Products p2
                            WHERE p2.change_date <= '2019-08-16' AND p2.product_id = p1.product_id
                            GROUP BY p2.product_id)
    )

SELECT * FROM never_change
UNION
SELECT * FROM last_change
