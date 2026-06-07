-- Create Database
CREATE DATABASE superstore_analysis;

-- Use Database
USE superstore_analysis;

-- STEP 1: CREATE CUSTOMERS TABLE USING SELECT DISTINCT
CREATE TABLE customers AS
SELECT DISTINCT
    `Customer ID`,
    `Customer Name`,
    Segment
FROM superstore_raw;
SELECT * FROM customers;

-- STEP 2: CREATE PRODUCTS TABLE USING SELECT DISTINCT
CREATE TABLE products AS
SELECT DISTINCT
    `Product ID`,
    `Product Name`,
    Category,
    `Sub-Category`
FROM superstore_raw;
SELECT * FROM products;

-- STEP 3: CREATE ORDERS TABLE USING SELECT DISTINCT
CREATE TABLE orders AS
SELECT DISTINCT
    `Row ID`,
    `Order ID`,
    `Order Date`,
    `Ship Date`,
    `Customer ID`,
    `Product ID`,
    Sales,
    Quantity,
    Discount,
    Profit,
    Region,
    State,
    City
FROM superstore_raw;
SELECT * FROM orders LIMIT 10;


-- TASK 1: Orders with Sales Greater Than Average Sales Using Subquery
SELECT * FROM orders WHERE Sales > (SELECT AVG(Sales) FROM orders);

-- TASK 2: Highest Sales Order for Each Customer Using Subquery
SELECT o.* FROM orders o JOIN (SELECT `Customer ID`, MAX(Sales) AS Max_Sales FROM orders GROUP BY `Customer ID`) m
ON o.`Customer ID` = m.`Customer ID`
AND o.Sales = m.Max_Sales;

-- TASK 3: Total Sales for Each Customer Using CTE
WITH customer_sales AS (SELECT `Customer ID`, SUM(Sales) AS Total_Sales FROM orders GROUP BY `Customer ID`)
SELECT * FROM customer_sales;

-- TASK 4: Customers with Above-Average Total Sales Using CTE and Subquery
WITH customer_sales AS (SELECT `Customer ID`, SUM(Sales) AS Total_Sales FROM orders GROUP BY `Customer ID`)
SELECT * FROM customer_sales WHERE Total_Sales > (SELECT AVG(Total_Sales) FROM customer_sales);

-- TASK 5: Rank Customers Based on Total Sales Using RANK() Window Function
WITH customer_sales AS (SELECT `Customer ID`, SUM(Sales) AS Total_Sales FROM orders GROUP BY `Customer ID`)
SELECT `Customer ID`, Total_Sales, RANK() OVER(ORDER BY Total_Sales DESC) AS Sales_Rank FROM customer_sales;

-- TASK 6: Assign Row Numbers to Orders Within Each Customer Using ROW_NUMBER()
SELECT `Customer ID`, `Order ID`, `Order Date`, Sales, ROW_NUMBER() OVER (PARTITION BY `Customer ID` ORDER BY `Order Date`) AS Order_Number FROM orders;

-- TASK 7: Display Top 3 Customers Based on Total Sales Using RANK()
WITH customer_sales AS (SELECT `Customer ID`, SUM(Sales) AS Total_Sales FROM orders GROUP BY `Customer ID`)
SELECT * FROM (SELECT `Customer ID`, Total_Sales, RANK() OVER(ORDER BY Total_Sales DESC) AS Sales_Rank FROM customer_sales ) ranked_customers
WHERE Sales_Rank <= 3;

-- FINAL QUERY: Display Customer Name, Total Sales and Sales Rank
-- Concepts Used: JOIN + CTE + Window Function
WITH customer_sales AS (SELECT `Customer ID`, SUM(Sales) AS Total_Sales FROM orders GROUP BY `Customer ID`)
SELECT c.`Customer ID`, c.`Customer Name`, cs.Total_Sales, RANK() OVER(ORDER BY cs.Total_Sales DESC) AS Sales_Rank FROM customer_sales cs JOIN customers c ON cs.`Customer ID` = c.`Customer ID` ORDER BY Sales_Rank;

-- BUSINESS QUERIES
-- BUSINESS QUERY 1: Identify Top 5 Customers Based on Total Sales
WITH customer_sales AS (SELECT c.`Customer Name`, SUM(o.Sales) AS Total_Sales
    FROM orders o
    JOIN customers c
    ON o.`Customer ID` = c.`Customer ID`
    GROUP BY c.`Customer Name`
)
SELECT * FROM customer_sales ORDER BY Total_Sales DESC LIMIT 5;

-- BUSINESS QUERY 2: Identify Bottom 5 Customers Based on Total Sales
WITH customer_sales AS ( SELECT c.`Customer Name`, SUM(o.Sales) AS Total_Sales
    FROM orders o
    JOIN customers c
    ON o.`Customer ID` = c.`Customer ID`
    GROUP BY c.`Customer Name`
)
SELECT * FROM customer_sales ORDER BY Total_Sales ASC LIMIT 5;

-- BUSINESS QUERY 3: Find Customers Who Placed Only One Order
SELECT
    c.`Customer Name`,
    COUNT(DISTINCT o.`Order ID`) AS Order_Count
FROM orders o
JOIN customers c
ON o.`Customer ID` = c.`Customer ID`
GROUP BY c.`Customer Name`
HAVING COUNT(DISTINCT o.`Order ID`) = 1;

-- BUSINESS QUERY 4: Find Customers with Above-Average Total Sales
WITH customer_sales AS (
    SELECT
        c.`Customer Name`,
        SUM(o.Sales) AS Total_Sales
    FROM orders o
    JOIN customers c
    ON o.`Customer ID` = c.`Customer ID`
    GROUP BY c.`Customer Name`
)
SELECT * FROM customer_sales WHERE Total_Sales > (SELECT AVG(Total_Sales) FROM customer_sales);

-- BUSINESS QUERY 5: Find Highest Order Value for Each Customer
SELECT
    c.`Customer ID`,
    c.`Customer Name`,
    MAX(o.Sales) AS Highest_Order_Value
FROM orders o
JOIN customers c
ON o.`Customer ID` = c.`Customer ID`
GROUP BY c.`Customer ID`, c.`Customer Name`
ORDER BY Highest_Order_Value DESC;