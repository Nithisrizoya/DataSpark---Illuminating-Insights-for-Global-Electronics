-- size bucket vs total_sales

SELECT
    CASE
        WHEN SquareMeters < 250 THEN '<250'
        WHEN SquareMeters BETWEEN 250 AND 500 THEN '250 to 500'
        WHEN SquareMeters BETWEEN 501 AND 750 THEN '500 to 750'
        WHEN SquareMeters BETWEEN 751 AND 1000 THEN '750 to 1000'
        WHEN SquareMeters BETWEEN 1001 AND 1250 THEN '1000 to 1250'
        WHEN SquareMeters BETWEEN 1251 AND 1500 THEN '1250 to 1500'
        WHEN SquareMeters BETWEEN 1501 AND 1750 THEN '1500 to 1750'
        WHEN SquareMeters BETWEEN 1751 AND 2000 THEN '1750 to 2000'
        WHEN SquareMeters > 2000 THEN '> 2000'
    END AS size_bucket,
    ROUND(SUM(UnitPriceUsd * Quantity),2) AS total_sales
FROM overall
GROUP BY size_bucket
ORDER BY
    CASE
        WHEN size_bucket = '<250' THEN 1
        WHEN size_bucket = '250 to 500' THEN 2
        WHEN size_bucket = '500 to 750' THEN 3
        WHEN size_bucket = '750 to 1000' THEN 4
        WHEN size_bucket = '1000 to 1250' THEN 5
        WHEN size_bucket = '1250 to 1500' THEN 6
        WHEN size_bucket = '1500 to 1750' THEN 7
        WHEN size_bucket = '1750 to 2000' THEN 8
        WHEN size_bucket = '> 2000' THEN 9
    END;
    
-- store_age_bucket vs total sales    

SELECT
    CASE
        WHEN YEAR(CURDATE()) - YEAR(OpenDate) <= 5 THEN '<=5'
        WHEN YEAR(CURDATE()) - YEAR(OpenDate) BETWEEN 6 AND  10 THEN '5 to 10'
        WHEN YEAR(CURDATE()) - YEAR(OpenDate) BETWEEN 11 AND 15 THEN '10 to 15'
        WHEN YEAR(CURDATE()) - YEAR(OpenDate) BETWEEN 16 AND 20 THEN '15 to 20'
    END AS store_age_bucket,
    ROUND(SUM(UnitPriceUsd * Quantity), 2) AS total_sales
FROM overall
GROUP BY store_age_bucket
ORDER BY store_age_bucket

-- Storekey vs Country vs Continent vs State
  
SELECT
  StoreKey,Country_customer,Continent_customer,
  ROUND(SUM((UnitPriceUsd)*Quantity),2) AS total_revenue_USD
FROM
  overall
GROUP BY
  StoreKey,Country_customer,Continent_customer
order by total_revenue_USD desc
