create database Sales_analysis
use Sales_analysis


Select * from superstore

------------------- Feature Engineering -----------------------------

-- 1. Day_name
ALTER TABLE superstore
ADD day_name VARCHAR(20);

UPDATE superstore
SET day_name = DATENAME(WEEKDAY, Order_Date);

--2. Month_name
ALTER TABLE superstore
ADD month_name VARCHAR(20);

UPDATE superstore
SET month_name = DATENAME(MONTH, Order_Date);



----------------Exploratory Data Analysis (EDA)----------------------

Product Analysis

-- 1.What is the most common payment method?
SELECT TOP 1 Payment_Mode, COUNT(*) AS Payment_Count
FROM superstore
GROUP BY Payment_Mode
ORDER BY Payment_Count DESC;

-- 2.What is the most selling Segment?
SELECT TOP 1 Segment, COUNT(Segment) AS most_selling_product
FROM superstore
GROUP BY Segment
ORDER BY most_selling_product DESC

-- 3.What is the total revenue by month?
SELECT CONVERT(VARCHAR(7), Order_Date, 120) AS Month, SUM(Sales) AS Total_Revenue
FROM superstore
GROUP BY CONVERT(VARCHAR(7), Order_Date, 120)
ORDER BY Month;

-- 4.Which month recorded the highest Cost of Goods Sold (COGS)?
SELECT TOP 1 CONVERT(VARCHAR(7), Order_Date, 120) AS Month, SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY CONVERT(VARCHAR(7), Order_Date, 120)
ORDER BY Total_Profit DESC;

-- 5.Which product line generated the highest revenue?
SELECT TOP 1 Product_Name, SUM(Sales) AS Total_Revenue
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Revenue DESC;

-- 6.Which State has the highest revenue?
SELECT TOP 1 State, SUM(Sales) AS Total_Revenue
FROM superstore
GROUP BY State
ORDER BY Total_Revenue DESC;

-- 7.Retrieve each segment and add a column product_category, indicating 'Good' or 'Bad,'based on whether its sales are above the average.
ALTER TABLE superstore
ADD product_category VARCHAR(20);

UPDATE superstore
SET product_category = CASE
                          WHEN Sales >= (SELECT AVG(Sales) FROM superstore) THEN 'Good'
                          ELSE 'Bad'
                      END;

-- 8.Which Region sold more products than average product sold?
WITH AvgQuantityPerRegion AS (
    SELECT Region, AVG(Quantity) AS AvgQuantity
    FROM superstore
    GROUP BY Region
)
SELECT TOP 1 Region, COUNT(Quantity) AS Products_Sold
FROM superstore
WHERE Region IN (SELECT Region FROM AvgQuantityPerRegion WHERE AvgQuantity > 0)
GROUP BY Region
ORDER BY Products_Sold DESC;


--9. Average Shipping Time by Ship Mode:
SELECT Ship_Mode, AVG(DATEDIFF(day, Order_Date, Ship_Date)) AS Avg_Shipping_Time
FROM superstore
GROUP BY Ship_Mode
ORDER BY Avg_Shipping_Time;


Customer Analysis

--1. How many unique customer IDs are there in the dataset?
SELECT COUNT(DISTINCT Customer_ID) AS Unique_Customers
FROM superstore;

--2. What is the average order size (quantity) per customer segment?
SELECT Segment, AVG(Quantity) AS Avg_Order_Size
FROM superstore
GROUP BY Segment;

--3. Which day of the week sees the most purchases by each customer segment?
SELECT Segment, day_name, COUNT(*) AS Purchases_Count
FROM superstore
GROUP BY Segment, day_name
ORDER BY Segment, Purchases_Count DESC;

--4. What is the distribution of customers across different regions?
SELECT Region, COUNT(DISTINCT Customer_ID) AS Customers_Count
FROM superstore
GROUP BY Region;

--5. Which customer segment has the highest average profit margin per order?
SELECT Segment, AVG(Profit / Sales) AS Avg_Profit_Margin
FROM superstore
GROUP BY Segment
ORDER BY Avg_Profit_Margin DESC;