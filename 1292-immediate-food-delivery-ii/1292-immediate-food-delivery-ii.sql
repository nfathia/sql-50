# Write your MySQL query statement below
SELECT
    ROUND(
        100 * SUM(CASE WHEN a.order_date = a.customer_pref_delivery_date THEN 1 ELSE 0 END) / COUNT(*), 2
    ) AS immediate_percentage
FROM(
    SELECT 
        customer_id,
        MIN(order_date) AS first_order_date
    FROM Delivery
    GROUP BY customer_id
) AS b
JOIN delivery AS a ON b.customer_id = a.customer_id
WHERE a.order_date = b.first_order_date;