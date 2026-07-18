🛒 Amazon E-Commerce Sales Analysis Using MySQL
Project Overview

This project analyzes an Amazon e-commerce sales dataset using MySQL to explore revenue trends, product performance, fulfillment methods, and geographic sales distribution.

The goal was to practice SQL by answering business questions and extracting meaningful insights from transactional sales data.

Database

Database: e-commerce profitability & sales

Main Table: amazon sale report

Reference Table: sale report

SQL Skills Demonstrated

SELECT statements

Aggregate functions (SUM, COUNT)

GROUP BY

ORDER BY

LIMIT

WHERE filtering

HAVING

JOIN operations

ROLLUP totals

Business reporting queries

Business Questions Answered

What is the total revenue generated?

How many unique orders were placed?

How many units were sold?

Which product categories generate the most revenue?

Which SKUs are the top revenue generators?

Which states contribute the highest sales?

How does revenue vary by fulfillment method?

What are the monthly revenue trends?

Which product sizes generate the most revenue?

Which categories exceed a revenue threshold of 50,000?

Key Insights

Identified the highest-revenue product categories.

Determined the top-performing SKUs by sales value.

Compared sales performance across different states.

Analyzed revenue trends by month.

Evaluated the impact of fulfillment methods on revenue.

Combined data from two tables using JOIN operations for deeper analysis.

Advanced SQL Features Used
GROUP BY category
HAVING SUM(amount) > 1000
GROUP BY category WITH ROLLUP
JOIN sale_report ON ar.sku = sr.`SKU Code`
Files
Amazon_Ecommerce_SQL_Analysis.sql
README.md
Author

Olawale Excellent

Aspiring Data Analyst

Skills: MySQL, Microsoft Excel, Power BI
