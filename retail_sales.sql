
-- Retail Sales Analysis using SQL
-- Dataset: 10 sample retail transactions

-- 1.CREATE TABLE
CREATE TABLE retail_sales (
    order_id INT,
    order_date TEXT,
    customer_id TEXT,
    product TEXT,
    category TEXT,
    quantity INT,
    price INT,
    city TEXT
);

--  INSERT DATA INTO TABLE
INSERT INTO retail_sales VALUES
(1001, '2023-01-05', 'C001', 'Laptop', 'Electronics', 1, 55000, 'Bangalore'),
(1002, '2023-01-07', 'C002', 'Mouse', 'Electronics', 2, 500, 'Mumbai'),
(1003, '2023-01-10', 'C003', 'T-Shirt', 'Clothing', 3, 700, 'Delhi'),
(1004, '2023-01-12', 'C001', 'Headphones', 'Electronics', 1, 2000, 'Chennai'),
(1005, '2023-01-15', 'C004', 'Jeans', 'Clothing', 1, 1500, 'Bangalore'),
(1006, '2023-01-18', 'C005', 'Mixer Grinder', 'Home', 1, 3500, 'Mumbai'),
(1007, '2023-01-20', 'C003', 'Jacket', 'Clothing', 1, 2500, 'Delhi'),
(1008, '2023-01-22', 'C006', 'AC', 'Electronics', 1, 34000, 'Hyderabad'),
(1009, '2023-01-25', 'C001', 'Shirt', 'Clothing', 2, 900, 'Chennai'),
(1010, '2023-01-28', 'C004', 'Blender', 'Home', 1, 2000, 'Bangalore');

-- SQL ANALYSIS QUERIES

-- 3. View all data
SELECT * FROM retail_sales;

-- 4. Total Revenue
SELECT 
    SUM(quantity * price) AS total_revenue
FROM retail_sales;

-- 5. Revenue by Category
SELECT 
    category,
    SUM(quantity * price) AS category_revenue
FROM retail_sales
GROUP BY category
ORDER BY category_revenue DESC;

-- 6. Top Selling Products (by quantity)
SELECT 
    product,
    SUM(quantity) AS total_quantity_sold
FROM retail_sales
GROUP BY product
ORDER BY total_quantity_sold DESC;

-- 7. City-wise Revenue
SELECT 
    city,
    SUM(quantity * price) AS city_revenue
FROM retail_sales
GROUP BY city
ORDER BY city_revenue DESC;

-- 8. Monthly Sales Trend
SELECT 
    strftime('%Y-%m', order_date) AS month,
    SUM(quantity * price) AS monthly_revenue
FROM retail_sales
GROUP BY month
ORDER BY month;

-- 9. Top Customer (highest spender)
SELECT 
    customer_id,
    SUM(quantity * price) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 1;


-- END OF FILE

