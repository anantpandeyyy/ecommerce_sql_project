SELECT p.category,
  COUNT(*) AS total_order_items,
  SUM(CASE WHEN o.status='Returned' THEN 1 ELSE 0 END) AS returned_count,
  ROUND(SUM(CASE WHEN o.status='Returned' THEN 1 ELSE 0 END)*100.0 / COUNT(*),2) AS return_rate_pct
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
GROUP BY p.category
ORDER BY return_rate_pct DESC;


