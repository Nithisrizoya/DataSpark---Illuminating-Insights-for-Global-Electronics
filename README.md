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

# Analysis Steps:

# 1. Customer Analysis
**Gender Analysis:**
      We can see the male customers are dominating in number when compared to female.
      Female targeted advertisements can help us fight this imbalance and grow overall sales.

**Age Analysis:**
     The customers are bucketed based on their age and then visualised using the bar chart.
      We can see that the people above 65 years are higher in counts than others


