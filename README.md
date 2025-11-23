Project Overview

This project analyzes a small retail dataset using SQL to understand:

Total revenue

Category performance

Top-selling products

City-wise sales

Customer spending patterns

Monthly revenue trends

Dataset Description

Columns included:

order_id

order_date

customer_id

product

category

quantity

price

city

Dataset size: 10 rows

Tools Used

SQLite (SQL engine)

SQLiteOnline (Browser-based SQL environment)

SQL (DDL, DML, Aggregations)

SQL Queries & Explanations
1. Total Revenue
SELECT SUM(quantity * price) AS total_revenue
FROM retail_sales;

2. Revenue by Category
SELECT category, SUM(quantity * price) AS category_revenue
FROM retail_sales
GROUP BY category
ORDER BY category_revenue DESC;

3. Top Selling Products
SELECT product, SUM(quantity) AS total_quantity_sold
FROM retail_sales
GROUP BY product
ORDER BY total_quantity_sold DESC;

4. City-wise Revenue
SELECT city, SUM(quantity * price) AS city_revenue
FROM retail_sales
GROUP BY city
ORDER BY city_revenue DESC;

5. Monthly Sales Trend
SELECT 
    strftime('%Y-%m', order_date) AS month,
    SUM(quantity * price) AS monthly_revenue
FROM retail_sales
GROUP BY month
ORDER BY month;

6. Top Customer
SELECT customer_id, SUM(quantity * price) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 1;


Insights

Electronics generated the highest revenue

Bangalore and Chennai show strong sales

Customer C001 is the highest spender

Clothing category shows regular buying patterns


Conclusion

This project demonstrates essential SQL skills:

Table creation

Data insertion

Filtering

Aggregation

Grouping

Trend analysis
