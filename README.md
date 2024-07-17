## About
In this project, we utilized SQL to analyze Superstore's sales data, focusing on understanding sales patterns, identifying high-performing products and regions, and deriving insights to optimize business strategies. The Superstore dataset provided a rich source of information for comprehensive analysis and decision-making.

## Purposes of the Project
Analyzing Superstore sales data to optimize business strategies, understand customer behavior, and enhance operational efficiency

## About Data
This project's data was obtained from the Kaggle. The data contains 21 columns and 5601 rows:

![Screenshot 2024-07-17 053822](https://github.com/user-attachments/assets/27beffdd-3735-4f85-9b28-92c91f3400c7)

## Approach Used

### 1. Feature Engineering
- Add a new column named day_name that contains the extracted days of the week on which the given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the question on which week of the day each region region is busiest.
- Add a new column named month_name that contains the extracted months of the year on which the given transaction took place (Jan, Feb, Mar). Help determine which month of the year has the most sales and profit.
### 2. Exploratory Data Analysis (EDA)
Conducting exploratory data analysis is essential to address the project's listed questions and objectives.


  
# Business Questions to Answer

## Generic Questions
1. How can we reduce operational costs without compromising quality?
2. Can we predict next month's sales based on historical data?
3. What factors most influence future sales/profit?
4. Are there any seasonal trends in sales/profit/customer behavior?
5. Which customer segments are most loyal and why?

## Product Analysis
1. What is the most common payment method?
2. What is the most selling Segment?
3. What is the total revenue by month?
4. Which month recorded the highest Cost of Goods Sold (COGS)?
5. Which product line generated the highest revenue?
6. Which State has the highest revenue?
7. Retrieve each segment and add a column product_category, indicating 'Good' or 'Bad,'based on whether its sales are above the average.
8. Which Region sold more products than average product sold?
9. Average Shipping Time by Ship Mode

## Customer Analysis
1. How many unique customer IDs are there in the dataset?
2. What is the average order size (quantity) per customer segment?
3. Which day of the week sees the most purchases by each customer segment?
4. What is the distribution of customers across different regions?
