# 🛒 Retail Sales Analysis Using SQL | Data Analytics Portfolio Project

> **SQL-based retail transaction analysis** — data cleaning, exploratory data analysis (EDA), customer segmentation, sales trend analysis, and business intelligence using real-world retail data.

[![SQL](https://img.shields.io/badge/Language-SQL-blue?style=flat-square)](https://github.com/YashPrajapati989)
[![Data Analysis](https://img.shields.io/badge/Domain-Data%20Analytics-green?style=flat-square)](https://github.com/YashPrajapati989)
[![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=flat-square)](https://github.com/YashPrajapati989)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Yash%20Prajapati-0077B5?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/yash-prajapati-2b99392b8)

---

## 📌 Project Overview

The **Retail Sales Analysis** project is a complete **SQL data analytics case study** that analyzes retail transaction data to uncover actionable business insights. It covers the full data analytics workflow — from raw data ingestion and cleaning to exploratory analysis and business reporting.

This project is ideal for anyone learning:
- **SQL for data analysis**
- **Retail analytics and sales reporting**
- **Business intelligence using SQL queries**
- **Customer behavior analysis with SQL**
- **EDA (Exploratory Data Analysis) in SQL**

By applying SQL queries on retail sales data, this project transforms raw transaction records into insights that help businesses improve decision-making, optimize inventory, and boost customer engagement.

**Keywords:** SQL retail analysis, sales data analysis SQL, retail EDA SQL, business intelligence SQL project, SQL portfolio project, data analyst project SQL, customer segmentation SQL, sales trend analysis SQL

---

## 🎯 Project Objectives

- ✅ Build and manage a **retail sales database** from scratch
- ✅ Perform **data cleaning and validation** on raw sales records
- ✅ Execute **Exploratory Data Analysis (EDA)** using SQL
- ✅ Analyze **customer demographics and purchasing behavior**
- ✅ Identify **top-performing product categories**
- ✅ Detect **sales trends and seasonal patterns**
- ✅ Generate **business insights** through advanced SQL queries
- ✅ Support **data-driven business decisions**

---

## 🗄️ Database Schema

### Table: `retail_sales`

| Column Name | Data Type | Description |
|---|---|---|
| `transactions_id` | INT | Unique transaction identifier |
| `sale_date` | DATE | Date of the transaction |
| `sale_time` | TIME | Time of the transaction |
| `customer_id` | INT | Unique customer identifier |
| `gender` | VARCHAR | Customer gender (Male/Female) |
| `age` | INT | Customer age |
| `category` | VARCHAR | Product category (Beauty, Clothing, Electronics, etc.) |
| `quantity` | INT | Number of units purchased |
| `price_per_unit` | DECIMAL | Price of a single unit |
| `cogs` | DECIMAL | Cost of Goods Sold |
| `total_sale` | DECIMAL | Total transaction value |

---

## 🧹 Data Cleaning & Preprocessing

Before analysis, the dataset was thoroughly cleaned and validated:

- 🔍 Identified and removed records containing **NULL values**
- ✔️ Validated all transaction details for consistency
- 🔗 Ensured referential integrity across customer and product data
- 📐 Standardized data types for accurate aggregation
- 🧪 Prepared a **clean, analysis-ready dataset**

**SQL techniques used:** `IS NULL` checks, `DELETE` statements, `UPDATE` for standardization, constraint validation.

---

## 📊 Exploratory Data Analysis (EDA)

The following EDA tasks were performed using SQL:

| Analysis | Description |
|---|---|
| Total Transactions | Count of all sales records |
| Unique Customers | Distinct customer count |
| Category Distribution | Number of transactions per product category |
| Customer Demographics | Age and gender breakdown of buyers |
| Revenue by Category | Total sales revenue per product category |
| Date Range | Time span of the sales dataset |

---

## 🔍 Business Questions Answered with SQL

### 📦 Sales Analysis
- Retrieve all sales made on a **specific date**
- Analyze **clothing sales** with high purchase quantities
- Calculate **total revenue by product category**
- Identify **high-value transactions** above a threshold (e.g., ₹1000+)

### 👥 Customer Analysis
- Calculate the **average age** of Beauty category customers
- Find the **top-spending customers** by total purchase value
- Count **unique customers per product category**
- Analyze **gender-wise purchasing patterns**

### 📈 Trend & Time-Series Analysis
- Identify the **best-selling month** each year
- Track **monthly average sales** over time
- Evaluate **sales performance by time-of-day shifts** (morning, afternoon, evening)
- Discover **peak shopping periods** and seasonal demand

---

## 📈 Key Business Insights

### 👥 Customer Insights
- A **small group of high-value customers** contributes disproportionately to total revenue — ideal targets for loyalty programs.
- **Repeat purchasers** are identifiable and critical for retention strategies.
- Different **age groups show distinct category preferences**, enabling personalized marketing.

### 🛍️ Product & Category Insights
- Certain **product categories consistently outperform** others in revenue.
- **Popular categories attract more unique customers**, indicating broader market appeal.
- High-performing categories should receive **greater inventory and marketing investment**.

### 💰 Revenue & Sales Insights
- Multiple transactions exceed **₹1000**, indicating a healthy **premium purchase segment**.
- **Monthly sales patterns** reveal clear seasonal demand fluctuations.
- **Peak sales periods** offer opportunities for targeted promotional campaigns.

### ⏰ Operational Insights
- Customer activity **varies significantly by time of day**, enabling smarter staffing decisions.
- **Shift-based sales analysis** helps optimize store operations and resource allocation.
- Identifying **dead periods** allows for promotional pushes to drive off-peak traffic.

---

## 🛠️ SQL Concepts & Techniques Used

| SQL Concept | Usage |
|---|---|
| `SELECT`, `WHERE`, `ORDER BY` | Data retrieval and filtering |
| `GROUP BY` + Aggregate Functions | `SUM()`, `AVG()`, `COUNT()` for summarization |
| `RANK()` Window Function | Ranking customers, categories, months |
| `EXTRACT()`, `TO_CHAR()` | Date and time parsing for trend analysis |
| Common Table Expressions (CTEs) | Modular, readable complex queries |
| Subqueries | Nested logic for multi-step analysis |
| `CASE WHEN` | Conditional segmentation (e.g., time shifts) |
| `HAVING` | Post-aggregation filtering |
| `NULL` Handling | Data quality checks and cleaning |

---

## 📂 Project Structure

```
Retail-Sales-Analysis/
│
├── Retail_Sales_Analysis.sql   ← All SQL queries (cleaning, EDA, business analysis)
├── README.md                   ← Project documentation (you are here)
└── Dataset/                    ← Raw sales transaction data
```

---

## 🚀 How to Run This Project

1. **Clone the repository**
   ```bash
   git clone https://github.com/YashPrajapati989/Retail-Sales-Analysis.git
   cd Retail-Sales-Analysis
   ```

2. **Set up your SQL environment**  
   Use any SQL platform: PostgreSQL, MySQL, SQLite, or SQL Server.

3. **Import the dataset**  
   Load the CSV file from the `Dataset/` folder into your database.

4. **Run the SQL script**  
   Open `Retail_Sales_Analysis.sql` and execute queries section by section.

5. **Explore the results**  
   Analyze outputs for each business question.

---

## 🎓 Skills Demonstrated

This project showcases real-world skills sought by hiring managers for **Data Analyst**, **Business Analyst**, and **BI Analyst** roles:

- ⚙️ **SQL Query Writing** — from basic to advanced
- 🧹 **Data Cleaning & Preprocessing** in SQL
- 🔎 **Exploratory Data Analysis (EDA)**
- 📊 **Business Analytics & Reporting**
- 👤 **Customer Segmentation** using SQL
- 📉 **Sales Trend & Time-Series Analysis**
- 🧮 **Data Aggregation & KPI Reporting**
- 🪟 **Window Functions & CTEs**

---

## 🏁 Conclusion

The **Retail Sales Analysis SQL Project** demonstrates how structured query language can turn raw transactional data into **meaningful, actionable business intelligence**. Through data cleaning, EDA, and business-focused queries, this project uncovers patterns in:

- 👥 Customer purchasing behavior
- 🛍️ Product category performance
- 📅 Seasonal and time-based sales trends
- 💎 High-value customer identification

This project is part of a growing **data analytics portfolio** and reflects the practical SQL skills used daily by Data Analysts and Business Intelligence professionals.

---

## 🔗 Related Topics & Tags

`sql` `data-analysis` `retail-analytics` `exploratory-data-analysis` `business-intelligence` `customer-segmentation` `sales-analysis` `sql-queries` `data-cleaning` `portfolio-project` `eda` `postgresql` `mysql` `data-analytics` `sales-trends` `window-functions` `cte` `aggregate-functions` `data-analyst-portfolio` `business-analytics`

---

## 👨‍💻 Author

**Yash Prajapati**  
*Aspiring Data Analyst | SQL | Data Analytics | Business Intelligence*

### 🌐 Connect With Me

| Platform | Link |
|---|---|
| 💼 LinkedIn | [linkedin.com/in/yash-prajapati-2b99392b8](https://www.linkedin.com/in/yash-prajapati-2b99392b8) |
| 🐙 GitHub | [github.com/YashPrajapati989](https://github.com/YashPrajapati989) |

---

> ⭐ **If you found this project helpful, consider giving it a star!** It helps others discover the project and motivates continued open-source contributions.