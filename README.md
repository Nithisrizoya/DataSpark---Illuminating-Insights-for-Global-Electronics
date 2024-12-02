# DataSpark---Illuminating-Insights-for-Global-Electronics

# Problem Statement:

As part of Global Electronics' data analytics team, the goal is to conduct a comprehensive Exploratory Data Analysis (EDA) to uncover valuable insights from the company’s data. The goal is to provide actionable recommendations that can enhance customer satisfaction, optimize operations, and drive overall business growth. Global Electronics, a leading retailer of consumer electronics, has provided you with several datasets containing information about their customers, products, sales, stores, and currency exchange rates. The company seeks to leverage this data to better understand their business and identify areas for improvement.

# Business Use Cases:

By analyzing Global Electronics' customer, product, sales, and store data, one can aim to identify key insights that will enhance marketing strategies, optimize inventory management, and improve sales forecasting. This will help tailor marketing campaigns, develop better products, plan effective promotions, and decide on store expansions and optimizations. Additionally, understanding the impact of currency exchange rates on sales will allow for better international pricing strategies. Overall, these insights will help Global Electronics increase customer satisfaction and drive business growth.

# Tools Used:

Jupyter notebook and pycharm - IDE

Python, Pandas, Matplotlib, Seaborn - Data cleaning, exploratory data analysis

My SQL - Database to store and retrieve cleaned data

Power BI - Visualization

# Data Sources:

   **1. Customer data (customers.csv):** Contains information about customers such gender, D.O.B, and demographics, used for analyzing customer behavior and segmentation.
   
   **2. Sales data (sales.csv):** Includes records of transactions, such as number of sales, product ID, it's quantities, order date, delivery date, store ID, and currency essential for understanding sales patterns and performance.
   
   **3. Products data (products.csv):** Lists product details including IDs, names, categories, subcategory, unit prices, unit costs helping to analyze product performance and trends.
   
   **4. Stores data (stores.csv):** Provides information on store locations, IDs, and attributes, useful for examining geographic sales performance and store-related analysis.
   
   **5. Currency exchange rates data (exchangerates.csv):** Contains historical exchange rates between different currencies, crucial for analyzing sales and financial data in a global context.

# Approach:

**Data Cleaning and Preparation**

Checking for missing values and handle them appropriately. Converting data types where necessary (e.g., dates, numerical values). Merging datasets where necessary for analysis (e.g., linking sales data with product and customer data).

**Load Data**

Inserting the preprocessed data into an SQL database by creating relevant tables for each data source.

**Power BI Visualization**

Connecting SQL to Power BI/Tableau, import the data, and create interactive dashboards.

**Develop SQL Queries**

Formulating and executing SQL and Dax queries to extract key insights from the data.

# Analaysis Steps

**Customer Analysis**

Demographic Distribution: Analyze the distribution of customers based on gender, age (calculated from birthday), location (city, state, country, continent). Purchase Patterns: Identify purchasing patterns such as average order value, frequency of purchases, and preferred products. Segmentation: Segment customers based on demographics and purchasing behavior to identify key customer groups.

**Sales Analysis**

Overall Sales Performance: Analyze total sales over time, identifying trends and seasonality Sales by Product: Evaluate which products are the top performers in terms of quantity sold and revenue generated. Sales by Store: Assess the performance of different stores based on sales data. Sales by Currency: Examine how different currencies impact sales figures, considering exchange rates.

**Product Analysis**

Product Popularity: Identify the most and least popular products based on sales data. Profitability Analysis: Calculate profit margins for products by comparing unit cost and unit price. Category Analysis: Analyze sales performance across different product categories and subcategories.

**Store Analysis**

Store Performance: Evaluate store performance based on sales, size (square meters), and operational data (open date). Geographical Analysis: Analyze sales by store location to identify high-performing regions.


# Results\Findings

# 1. Customer Analysis
**Gender Analysis:**

 We can see the male customers are dominating in number when compared to female.
 
 Female targeted advertisements can help us fight this imbalance and grow overall sales.

**Age Analysis:**

The customers are bucketed based on their age and then visualised using the line chart.
     
We can see that the people over 75 years are higher in counts than others
      
**Location Analysis:**

The locations wise analysis was represented using the world map.

The darkness of the colour says about the intensity of sales from that area.

The country wise analysis suggests that the North America is having Highest sales.

# 2. Sales Analysis
**Monthly sales:**

We can see the highest sales are there in Feb, Dec and Jan for which the inventory should be ready to face the hike in demand.

The April and march month has recorded the lowest sales which can be overcome by doing proper marketing and maintaining good product portfolio.

**Top Performers:**

We can see that the computers are the top performers maintaining good SKU based on colours is important as we can see good proportion in each color.

# 3. Product Analysis
**Profit Margin by Top products:**

From the Pie chart, that has been shown for the top 10 products. It understood that the 10 top products are not uniformly distributed, they are properly distributed suggesting good signs.

**Top 10 Feequency Products:**

The top selling products are from the Desktop and computer segment.

It recommended to maintain sufficient inventory to meet the customer demand.

# 4. Store Analysis
**Store Size analysis:**

We can see that the stores with the area between 1750 to 2000 are contributing to morethan 50% of the entire sales.

We can see the stores with the highest area are not the highest selling.

**Store Age analysis:**

If the age of the store is between 10-15 then they are contributing to the highest amount of sales.

**Overall Analysis:**

After seeing the total revenue, it has been understood that the sales from north American stores are the highest.

There are very less number of stores in Australia which can cost us the opportunity.

Spreading the company across the Australia can help the company grow its sales well.

# Power BI Reports 

  1. customer_analysis_powerbi.jpg
  2. sales_analysis_powerbi.jpg
  3. product_analysis_powerbi.jpg
  4. store_analysis_powerbi.jpg







