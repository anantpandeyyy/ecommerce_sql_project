SELECT status, COUNT(*) AS cnt, ROUND(COUNT(*)*100.0/(SELECT COUNT(*) FROM orders),2) AS pct
FROM orders
GROUP BY status;
SELECT customer_id, SUM(order_amount - discount) AS revenue
FROM orders
WHERE status='Completed'
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 50;

