🛒 Retail Sales Analysis Using SQL
📌 Project Overview

This project analyzes retail sales data using SQL to uncover customer behavior, sales trends, product performance, and revenue insights. The goal is to transform raw transactional data into actionable business intelligence that can help retail organizations make informed decisions.

🎯 Objectives
Perform data cleaning and validation.
Conduct exploratory data analysis (EDA).
Analyze customer demographics and purchasing behavior.
Identify top-performing product categories.
Discover seasonal and monthly sales trends.
Find high-value customers and transactions.
Generate business insights through SQL queries.
🗄️ Database Schema
Table: retail_sales
Column	Description
transactions_id	Unique transaction ID
sale_date	Date of transaction
sale_time	Time of transaction
customer_id	Unique customer ID
gender	Customer gender
age	Customer age
category	Product category
quantity	Quantity purchased
price_per_unit	Price per item
cogs	Cost of Goods Sold
total_sale	Total transaction value
🧹 Data Cleaning

The following data quality checks were performed:

Identified missing (NULL) values.
Removed incomplete records.
Validated transaction data.
Verified category and customer information.
Example Query
SELECT *
FROM retail_sales
WHERE sale_date IS NULL
   OR sale_time IS NULL
   OR customer_id IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR category IS NULL
   OR quantity IS NULL
   OR price_per_unit IS NULL
   OR cogs IS NULL;
📊 Business Questions Solved
Sales Analysis
Sales made on a specific date.
High-volume clothing sales in November 2022.
Category-wise revenue analysis.
High-value transactions above ₹1000.
Customer Analysis
Average age of Beauty category customers.
Top 5 customers by total spending.
Unique customers per category.
Gender-wise purchase distribution.
Trend Analysis
Best-selling month each year.
Monthly average sales trends.
Revenue by shopping shift.
Peak shopping periods.
📈 Key Insights
Customer Insights
A small group of customers contributes significantly to overall revenue.
Loyal customers repeatedly purchase products and represent an important business segment.
Different age groups show different purchasing preferences.
Product Insights
Certain categories consistently generate higher sales revenue.
Popular categories attract a larger customer base.
High-performing categories should receive more inventory and promotional support.
Sales Insights
Monthly sales fluctuate throughout the year, indicating seasonality.
Some periods experience significantly higher sales activity.
High-value transactions contribute substantially to total revenue.
Operational Insights
Customer shopping behavior varies throughout the day.
Identifying peak shopping shifts helps optimize staffing and operations.
Understanding busy sales periods supports inventory planning.
🛠️ SQL Concepts Used
Aggregate Functions (SUM, AVG, COUNT)
Filtering (WHERE)
Grouping (GROUP BY)
Sorting (ORDER BY)
Window Functions (RANK)
Date Functions (EXTRACT, TO_CHAR)
Common Table Expressions (CTEs)
Data Cleaning Techniques
📂 Project Structure
Retail-Sales-Analysis/
│
├── Retail_Sales_Analysis.sql
├── README.md
└── Dataset
🚀 Results

The project successfully identified:

Top-performing product categories
High-value customers
Seasonal sales trends
Customer demographics
Revenue-generating periods
Shopping behavior patterns

These insights can help businesses improve marketing strategies, optimize inventory management, and increase profitability.

🎓 Skills Demonstrated
SQL Querying
Data Cleaning
Exploratory Data Analysis (EDA)
Business Analytics
Data Aggregation
Window Functions
Retail Data Analysis
🏁 Conclusion

This project demonstrates how SQL can be used to analyze retail sales data and generate meaningful business insights. Through data cleaning, exploratory analysis, and business-focused queries, valuable patterns in customer behavior and sales performance were discovered, providing a strong foundation for data-driven decision-making.

Author

Yash Prajapati

Aspiring Data Analyst | SQL | Data Analytics | Business Intelligence
