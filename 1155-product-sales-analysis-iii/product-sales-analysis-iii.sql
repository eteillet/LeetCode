/* Write your T-SQL query statement below */

WITH K AS (
    SELECT product_id, MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
)

SELECT K.product_id, K.first_year, S.quantity, S.price
FROM K
LEFT JOIN Sales S
    ON K.product_id = S.product_id AND K.first_year = S.year
