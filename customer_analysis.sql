-- Query to Age Distribution

SELECT Gender, COUNT(*) AS Count_gender
FROM customers
GROUP BY Gender;

 -- Query to segment customers based on age
SELECT 
    c.CustomerKey,
    TIMESTAMPDIFF(YEAR, c.Birthday, CURDATE()) AS Age,
    CASE
        WHEN TIMESTAMPDIFF(YEAR, c.Birthday, CURDATE()) BETWEEN 20 AND 29 THEN '20s'
        WHEN TIMESTAMPDIFF(YEAR, c.Birthday, CURDATE()) BETWEEN 30 AND 39 THEN '30s'
        WHEN TIMESTAMPDIFF(YEAR, c.Birthday, CURDATE()) BETWEEN 40 AND 49 THEN '40s'
        WHEN TIMESTAMPDIFF(YEAR, c.Birthday, CURDATE()) BETWEEN 50 AND 59 THEN '50s'
        WHEN TIMESTAMPDIFF(YEAR, c.Birthday, CURDATE()) BETWEEN 60 AND 69 THEN '60s'
        WHEN TIMESTAMPDIFF(YEAR, c.Birthday, CURDATE()) >= 70 THEN 'Over 70'
        ELSE 'Unknown'
    END AS AgeGroup
FROM 
    Customers c;

-- country wise customer count
SELECT 
    Continent_customer,Country_customer,State_customer,City_customer, 
    COUNT(CustomerKey) AS customer_count
FROM 
    CUSTOMERS
GROUP BY 
    Continent_customer,Country_customer,State_customer,City_customer
ORDER BY 
    customer_count DESC
