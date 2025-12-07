SELECT customer_id,
  COUNT(*) AS total_orders,
  SUM(order_amount - discount) AS total_revenue
FROM orders
WHERE status='Completed'
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 20;

