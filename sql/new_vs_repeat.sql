WITH first_purchase AS (
  SELECT customer_id, MIN(order_date) AS first_order
  FROM orders
  GROUP BY 1
)
SELECT
  CASE WHEN o.order_date = fp.first_order THEN 'New' ELSE 'Repeat' END AS customer_type,
  COUNT(*) AS orders,
  SUM(o.order_amount - o.discount) AS revenue
FROM orders o
JOIN first_purchase fp ON o.customer_id = fp.customer_id
WHERE o.status='Completed'
GROUP BY 1;




