-- Catagory and sub catagory analysis

SELECT
    Category,Subcategory,
    ROUND(SUM(UnitPriceUsd * Quantity),2) AS total_sales
FROM overall
GROUP BY Category,Subcategory
ORDER BY total_sales DESC;

-- Product Popularity: Identify the most And popular products based on sales data.

select distinct(ProductName),sum(Quantity) as Quantity
from overall
group by ProductNname
order by Quantity desc
limit 10

select distinct(ProductName),sum(Quantity) as Quantity
from overall
group by ProductName
order by Quantity 
limit 10

-- Profitability Analysis: Calculate profit margins for products by comparingunit cost and unit price.

Select
product_name,
ROUND(Sum((UnitPriceUsd-UnitCostUsd)*Quantity),2) as Profit_Margin
from overall
group by ProductName
order by Profit_Margin desc
limit 10
