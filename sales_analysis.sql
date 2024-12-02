-- sales analysis by month

SELECT
  MONTHNAME(OrderDate) AS month,
  ROUND(SUM((UnitPriceUsd)*Quantity),2) AS total_revenue_USD
FROM
  overall
GROUP BY
  MONTHNAME(OrderDate);
  
-- sales by top product performance

SELECT
  ProductName,
  SUM(Quantity) AS total_quantity
FROM
   overall
GROUP BY
  ProductName
Order by total_quantity Desc  
Limit 10   

-- sales by revenue performance

SELECT
  ProductName,
  ROUND(SUM((UnitPriceUsd)*Quantity),2) AS total_revenue_USD
FROM
  overall
GROUP BY
  ProductName
order by total_revenue_USD desc limit 10

