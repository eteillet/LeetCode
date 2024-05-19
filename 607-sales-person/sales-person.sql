# Write your MySQL query statement below
# names of all the salespersons who did not have any orders related to the company with the name "RED"

SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (
    # we select the id of the salesperson which have sales to company RED
    SELECT s.sales_id
    FROM Orders o
    LEFT JOIN SalesPerson s ON s.sales_id = o.sales_id
    LEFT JOIN Company c ON c.com_id = o.com_id
    WHERE c.name = 'RED'
)