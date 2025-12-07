SELECT 
  p.category,
  SUM(oi.quantity * oi.price) AS gmv,
  SUM(oi.quantity * (oi.price - p.cost_price)) AS gross_profit,
  ROUND( (SUM(oi.quantity * (oi.price - p.cost_price)) * 100.0) / NULLIF(SUM(oi.quantity * oi.price),0), 2) AS gross_margin_pct
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON o.order_id = oi.order_id
WHERE o.status='Completed'
GROUP BY p.category
ORDER BY gmv DESC;





