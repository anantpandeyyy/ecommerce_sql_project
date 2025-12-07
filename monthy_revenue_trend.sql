SELECT
  to_char(order_date, 'YYYY-MM') AS month,
  COUNT(*) AS total_orders,
  SUM(order_amount) AS gmv,
  SUM(order_amount - discount) AS net_revenue
FROM orders
WHERE status='Completed'
GROUP BY 1
ORDER BY 1;





