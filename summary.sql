WITH base AS (
  SELECT SUM(order_amount) AS gmv, SUM(order_amount - discount) AS net_rev,
         SUM(CASE WHEN status='Returned' THEN 1 ELSE 0 END) AS returns, COUNT(*) AS total_orders
  FROM orders
  WHERE status IN ('Completed','Returned','Cancelled')
)
SELECT gmv, net_rev, ROUND(returns*100.0/total_orders,2) AS return_rate_pct FROM base;

