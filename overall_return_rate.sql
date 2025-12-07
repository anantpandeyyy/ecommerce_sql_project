SELECT
  COUNT(*) AS total_orders,
  SUM(CASE WHEN status='Returned' THEN 1 ELSE 0 END) AS returns,
  ROUND(SUM(CASE WHEN status='Returned' THEN 1 ELSE 0 END)*100.0 / COUNT(*),2) AS return_rate_pct
FROM orders;





