# 🛍️ Retail Sales Analysis using PostgreSQL

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-000000?style=for-the-badge&logo=database&logoColor=white)
![Data Analysis](https://img.shields.io/badge/Data%20Analysis-2E8B57?style=for-the-badge&logo=googleanalytics&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

> An end-to-end SQL analytics project exploring retail transaction data — from raw table setup through to sales performance, customer behaviour, and product-level business insights using PostgreSQL.

---

## 📌 Table of Contents

- [Project Overview](#-project-overview)
- [Dataset Information](#-dataset-information)
- [Database Setup](#️-database-setup)
- [Analysis Modules](#-analysis-modules)
- [Key Business Insights](#-key-business-insights)
- [SQL Concepts Used](#️-sql-concepts-used)
- [Getting Started](#-getting-started)
- [Sample Queries](#-sample-queries)
- [Author](#-author)

---

## 📋 Project Overview

This project performs a structured SQL analysis on a retail sales dataset to answer real business questions across revenue performance, customer demographics, product categories, and time-based trends.

The workflow covers:

- **Schema design** — creating a clean, typed table for retail transactions
- **Data exploration** — understanding the structure and distribution of the dataset
- **Business KPIs** — total revenue, order counts, average order value, and more
- **Customer analysis** — top spenders, gender-based segmentation, age group breakdown
- **Product analysis** — best-selling categories and high-revenue products
- **Time analysis** — monthly and seasonal sales patterns

---

## 📊 Dataset Information

| Attribute | Value |
|-----------|-------|
| Database | PostgreSQL |
| Domain | Retail / E-Commerce |
| Key Fields | Transaction ID, Date, Customer ID, Gender, Age, Category, Quantity, Price per Unit, Total Amount |

The dataset captures individual retail transactions including customer demographics, product category, quantity purchased, and transaction value.

---

## 🏗️ Database Setup

The table schema is designed with correct data types from the start — avoiding common pitfalls like storing numeric values as text.

```sql
CREATE TABLE retail_sales (
    transactions_id   INT PRIMARY KEY,
    sale_date         DATE,
    sale_time         TIME,
    customer_id       INT,
    gender            VARCHAR(15),
    age               INT,
    category          VARCHAR(25),
    quantity          INT,
    price_per_unit    FLOAT,
    cogs              FLOAT,
    total_sale        FLOAT
);
```

---

## 🔍 Analysis Modules

### 1. Data Exploration & Quality Checks
- Row counts and column null checks
- Date range of transactions
- Distinct customers, categories, and genders

### 2. KPI Analysis
| KPI | Description |
|-----|-------------|
| Total Revenue | Sum of all transaction amounts |
| Total Orders | Count of distinct transaction IDs |
| Avg Order Value | Revenue ÷ Order count |
| Total Quantity Sold | Sum of all units purchased |

### 3. Product & Category Analysis
- Revenue breakdown by product category
- Top-selling categories by volume (quantity)
- Average price per unit across categories

### 4. Customer Analysis
- Top 5 customers by total spend
- Revenue split by gender
- Age group segmentation (e.g., 18–25, 26–35, 36–50, 50+)
- Customer purchase frequency

### 5. Time-Series Analysis
- Monthly revenue trends
- Day-of-week sales patterns
- Best and worst performing months
- Year-over-year comparison (if multi-year data)

---

## 💡 Key Business Insights

| # | Insight |
|---|---------|
| 1 | 💰 A small number of customers contribute disproportionately to total revenue |
| 2 | 👗 Certain product categories consistently outperform others in both volume and revenue |
| 3 | 📅 Sales exhibit clear monthly seasonality with distinct peak periods |
| 4 | 👥 Gender-based spending patterns differ meaningfully across product categories |
| 5 | 🎂 Specific age groups show higher average order values, suggesting targeting opportunities |
| 6 | ⏰ Certain days of the week drive significantly higher transaction volumes |

---

## 🛠️ SQL Concepts Used

**Data Definition & Loading**
- `CREATE TABLE` with appropriate data types
- `COPY` / `INSERT` for data ingestion
- `IS NULL` checks for data quality validation

**Aggregation & Filtering**
- `SUM`, `COUNT`, `AVG`, `ROUND`
- `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT`
- `WHERE` with date range and category filters

**Advanced SQL**
- `EXTRACT()` for month, day, and year from dates
- `CASE WHEN` for age group binning
- CTEs (`WITH` clause) for readable multi-step queries
- Subqueries for ranked results
- `RANK()` window function for top-N analysis

---

## 🚀 Getting Started

### Prerequisites
- PostgreSQL installed
- pgAdmin or any SQL client

### Setup

```bash
# Clone the repository
git clone https://github.com/YashPrajapati989/Retail-Sales-Analysis-Project.git
cd Retail-Sales-Analysis-Project
```

```sql
-- In your PostgreSQL client:
-- 1. Create a new database
CREATE DATABASE retail_sales_db;

-- 2. Run the schema setup script
\i sql/01_schema.sql

-- 3. Load the data
\i sql/02_data_load.sql

-- 4. Run the analysis queries
\i sql/03_analysis.sql
```

---

## 🧪 Sample Queries

### Revenue by Category
```sql
SELECT
    category,
    COUNT(*)                           AS total_orders,
    SUM(total_sale)                    AS total_revenue,
    ROUND(AVG(total_sale)::numeric, 2) AS avg_order_value
FROM retail_sales
GROUP BY category
ORDER BY total_revenue DESC;
```

### Top 5 Customers by Spend
```sql
SELECT
    customer_id,
    SUM(total_sale)  AS total_spent,
    COUNT(*)         AS total_orders
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;
```

### Monthly Sales Trend
```sql
SELECT
    EXTRACT(YEAR FROM sale_date)  AS year,
    EXTRACT(MONTH FROM sale_date) AS month,
    ROUND(SUM(total_sale)::numeric, 2) AS monthly_revenue
FROM retail_sales
GROUP BY year, month
ORDER BY year, month;
```

### Age Group Segmentation
```sql
SELECT
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18–25'
        WHEN age BETWEEN 26 AND 35 THEN '26–35'
        WHEN age BETWEEN 36 AND 50 THEN '36–50'
        ELSE '50+'
    END AS age_group,
    COUNT(*)         AS total_orders,
    SUM(total_sale)  AS total_revenue
FROM retail_sales
GROUP BY age_group
ORDER BY total_revenue DESC;
```

---

## 👤 Author

**Yash Prajapati**

[![GitHub](https://img.shields.io/badge/GitHub-YashPrajapati989-181717?style=for-the-badge&logo=github)](https://github.com/YashPrajapati989)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Yash%20Prajapati-0077B5?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/yash-prajapati-2b99392b8)

---

> ⭐ Found this helpful? Give it a star on GitHub!
