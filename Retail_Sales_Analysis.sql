-- SQL Retail Analysis Project-1
CREATE DATABASE Sql_project1;


--Create Table
DROP TABLE IF EXISTS retail_sales;
Create table retail_sales
			(
					transactions_id INT Primary Key,	
					sale_date DATE,
					sale_time TIME,
					customer_id INT,
					gender VARCHAR(15),
					age INT,
					category VARCHAR(25),
					quantiy Int,	
					price_per_unit float,
					cogs float,
					total_sale float
			);


SELECT * FROM retail_sales
LIMIT 10;


SELECT COUNT(*) FROM retail_sales;

-- Data Cleaning

SELECT * FROM retail_sales
WHERE transactions_id IS NULL;

SELECT * FROM retail_sales
WHERE sale_date IS NULL;

SELECT * FROM retail_sales
WHERE sale_time IS NULL;

SELECT * FROM retail_sales
WHERE 
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	customer_id IS NULL
	OR
	gender IS NULL
	OR
	age IS NULL
	OR
	quantiy IS NULL
	OR
	price_per_unit IS NULL
	OR
	COGS IS NULL
	OR
	total_sale IS NULL;


--Repalced the null values in age column Average Age

SELECT ROUND(AVG(age))
FROM retail_sales
where age is not null;


UPDATE retail_sales
	SET age = 41
	WHERE age IS NULL;



-- 

DELETE FROM retail_sales
WHERE 
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	customer_id IS NULL
	OR
	gender IS NULL
	OR
	age IS NULL
	OR
	quantiy IS NULL
	OR
	price_per_unit IS NULL
	OR
	COGS IS NULL
	OR
	total_sale IS NULL;


-- Data Exploration

--How many sales do we have?
SELECT Count(*) AS total_sales FROM retail_sales;

--How many unique customers do we have?
SELECT Count(Distinct customer_id) AS total_sales FROM retail_sales;

--How many unique category do we have?
SELECT Distinct category FROM retail_sales;



--Data Analysis & Business Key Problems and Answers

--Q1.How many sales made on '2022-11-05'
SELECT * FROM retail_sales	
	WHERE sale_date = '2022-11-05';


--Q2.Retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022?
SELECT * FROM retail_sales
	WHERE category = 'Clothing' 
	AND 
	TO_CHAR(sale_date, 'YYYY-MM') = '2022-11'
	AND
	quantiy >= 4;

--Q3.Calculate the total sales for each category?
SELECT 
	category,
	SUM(total_sale) AS net_Sale,
	COUNT(*) as total_orders
FROM retail_sales
GROUP BY category;



--Q4.Find the average age of customers who purchased items from the 'Beauty' category?
Select 
	ROUND(AVG(age),2) AS average_age
	from retail_sales
	WHERE category = 'Beauty';


--Q5.Find all transactions where the total_sale is greater than 1000?
Select COUNT(*) from retail_sales
	WHERE total_sale > 1000
	;

Select * from retail_sales
	WHERE total_sale > 1000
	;


--Q6.Find the Total no of transactions made by each gender in each category?
SELECT 
	category,
	gender,
	COUNT(*) AS total_transactions 
FROM retail_sales
GROUP BY 
	category, gender
ORDER BY category;



--Q7.Calculate the average sale for each month. Find out best selling month in each year?
SELECT 
       year,
       month,
    avg_sale
FROM 
(    
SELECT 
    EXTRACT(YEAR FROM sale_date) as year,
    EXTRACT(MONTH FROM sale_date) as month,
    AVG(total_sale) as avg_sale,
    RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY AVG(total_sale) DESC) as rank
FROM retail_sales
GROUP BY 1, 2
) as t1
WHERE rank = 1
    
-- ORDER BY 1, 3 DESC


-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
SELECT 
    customer_id,
    SUM(total_sale) as total_sales
FROM retail_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5

-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.


SELECT 
    category,    
    COUNT(DISTINCT customer_id) as cnt_unique_cs
FROM retail_sales
GROUP BY category



-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17)

WITH hourly_sale
AS
(
SELECT *,
    CASE
        WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END as shift
FROM retail_sales
)
SELECT 
    shift,
    COUNT(*) as total_orders    
FROM hourly_sale
GROUP BY shift


-- Q11.Which category generated the highest total revenue?
SELECT 
	category, SUM(total_sale) AS highest_revenue
FROM retail_sales
GROUP BY category
ORDER BY highest_revenue DESC
LIMIT 1;


-- Q12. What is the average revenue generated per transaction in each category?
SELECT 
	category, 
	ROUND(AVG(total_sale)::numeric, 2) AS 
avg_sale
FROM retail_sales
GROUP BY category
ORDER BY avg_revenue DESC;


-- Q13.Which 5 dates recorded the highest sales revenue?
SELECT 
	sale_date,
	SUM(total_sale) AS highest_sales_revenue  
FROM retail_sales
GROUP BY sale_date
ORDER BY highest_sales_revenue DESC
LIMIT 5;


-- Q14.Find the Top 10 customers by total spending?
SELECT 
	customer_id,
	SUM(total_sale) AS total_spending  
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spending DESC
LIMIT 10;



-- Q15.Find customers who made more than 5 purchases?
SELECT
	customer_id,
	COUNT(*) AS total_purchases
FROM retail_sales
GROUP BY customer_id
HAVING COUNT(*) > 5
ORDER BY total_purchases DESC;


-- Q16.What is the average age of customers in each category?
SELECT 
	category,
	ROUND(AVG(age),2) AS avg_age
FROM retail_sales
GROUP BY category;


-- Q17.Which month generated the highest total revenue?
SELECT 
	EXTRACT(MONTH FROM sale_date) AS month,
	SUM(total_sale) AS highest_revenue
FROM retail_sales
GROUP BY month
ORDER BY highest_revenue DESC
LIMIT 3;


-- Q18. Compare Morning , Afternoon, and Evening shifts by total revenue.
WITH shift_sale
AS
(
SELECT *,
    CASE
        WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END as shift
FROM retail_sales
)
SELECT 
    shift,
    SUM(total_sale) as total_revenue  
FROM shift_sale
GROUP BY shift;


-- Q19.Which day of the week has the highest sales revenue?
SELECT
	TO_CHAR(sale_date, 'DAY') AS day_name,
	SUM(total_sale) AS revenue
FROM retail_sales
GROUP BY day_name
ORDER BY revenue DESC;


-- Q20.Rank categories based on their revenue.
SELECT
	category,
	SUM(total_sale) AS revenue,
	RANK() OVER(
			ORDER BY SUM(total_sale) DESC
	) AS rank
FROM retail_sales
GROUP BY category;



-- End of project













































	