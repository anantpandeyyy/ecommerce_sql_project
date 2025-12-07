SELECT customer_id, SUM(order_amount - discount) AS revenue
FROM orders
WHERE status='Completed'
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 50;

