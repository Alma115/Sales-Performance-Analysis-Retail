SELECT
  YEAR(order_date) AS years,
  SUM(sales) AS sales,
  COUNT(order_id) AS number_of_order
FROM
  dqlab_sales_store
WHERE
  order_status = 'order finished' AND
  YEAR(order_date) BETWEEN 2009 AND 2012
GROUP BY
  years
ORDER BY
  years;
