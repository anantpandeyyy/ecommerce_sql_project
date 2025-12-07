WITH cohort AS (
  SELECT customer_id, to_char(MIN(order_date),'YYYY-MM') AS cohort_month
  FROM orders
  GROUP BY 1
),
orders_monthly AS (
  SELECT customer_id, to_char(order_date,'YYYY-MM') AS order_month
  FROM orders
  WHERE status='Completed'
)
SELECT c.cohort_month, om.order_month, COUNT(DISTINCT om.customer_id) AS active_customers
FROM cohort c
JOIN orders_monthly om ON c.customer_id = om.customer_id
GROUP BY 1,2
ORDER BY 1,2;





