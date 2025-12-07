SELECT 
  COUNT(*) AS total_orders,
 SUM(order_amount) AS gmv,
 SUM(order_amount - discount) AS net_revenue
FROM orders
WHERE status = 'Completed';




