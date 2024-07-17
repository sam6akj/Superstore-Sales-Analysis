## About
In this project, we utilized SQL to analyze Superstore's sales data, focusing on understanding sales patterns, identifying high-performing products and regions, and deriving insights to optimize business strategies. The Superstore dataset provided a rich source of information for comprehensive analysis and decision-making.

## Purposes of the Project
Analyzing Superstore sales data to optimize business strategies, understand customer behavior, and enhance operational efficiency

## About Data
This project's data was obtained from the Kaggle. The data contains 21 columns and 5601 rows:

![Screenshot 2024-07-17 053822](https://github.com/user-attachments/assets/62b5426c-1830-4258-bfee-02d537603da2)

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


# Superstore-Dashboard

### Dashboard Link : https://app.powerbi.com/groups/me/dashboards/d32fc04e-1a21-4a49-ab97-aa4193a213cc?ctid=da44e191-d469-44d4-8e34-f4528f2ec433&pbi_source=linkShare

## Problem Statement
Problem Statement
This dashboard helps Superstore understand its customers and overall business performance better. It provides insights into sales trends, profit margins, and customer demographics. By identifying high and low-performing areas, the store can make informed decisions to improve its operations and customer satisfaction. Additionally, analyzing sales data helps in better inventory management, targeted marketing efforts, and personalized customer experiences.

The dashboard also includes a detailed analysis of profit trends and a 15-day sales forecast. This forecast enables the store to anticipate demand, optimize inventory levels, and plan promotional activities effectively, ensuring that customer demand is met without overstocking.

### Steps followed 

Step 1: Load data into Power BI Desktop. The dataset is a CSV file.

Step 2: It was observed that no columns had errors or empty values except the "Returns" column, where error values were present.

Step 3: In the "Returns" column, error values were changed to 0 for consistency and accurate calculations.

Step 4: In the Report View, under the Format tab, a background image was added by navigating to Page, Canvas Background, and then selecting the desired image.

Step 5: A new measure was created to calculate the average sales per order. The DAX formula used was:

        Average Sales per Order = AVERAGE('SuperStore Dataset'[Sales])


Step 6: Two card visuals were added to the canvas. One represented the total number of orders, and the other represented total profit. DAX formulas used were:

        Total Orders = COUNT('SuperStore Dataset'[Quantity])
![Screenshot 2024-07-04 233527](https://github.com/sam6akj/Superstore/assets/98220967/1701dc5d-92cd-4142-9698-fae11cc9da66)

        Total Profit = SUM('SuperStore Dataset'[Profit])
![Screenshot 2024-07-04 233751](https://github.com/sam6akj/Superstore/assets/98220967/57e95416-fef0-4923-a41a-969d8c0d16de)

Step 7: A bar chart was added to the report design area representing total sales by sub-category. This helps visualize the distribution of sales across different sub-categories.

Step 8: Another card visual was added to display total sales. The DAX formula used was:

        Total Sales = SUM('SuperStore Dataset'[Sales])
        
![2022-06-18 (1)](https://github.com/sam6akj/Superstore/assets/98220967/ac6228bc-cf16-4002-942e-8495d3fd1887)


Step 9: Visual filters (Slicers) were added for two fields named "Region" and "Category."

This measure was also represented using a card visual.
![Screenshot 2024-07-04 235052](https://github.com/sam6akj/Superstore/assets/98220967/320b4980-38c4-49e7-b8fb-2f9194470acd)

Step 10: A bar chart was used to represent the profit margin across different regions. The DAX formula used for profit margin was:

        Profit Margin = DIVIDE(SUM('SuperStore Dataset'[Profit]), SUM('SuperStore Dataset'[Sales])) * 100

Step 11: New measures were created to find the total count of customers and the percentage of customers. The following DAX expressions were used:

        Count of Customers = COUNT('SuperStore Dataset'[Customer ID])
        % Customers = DIVIDE(COUNT('SuperStore Dataset'[Customer ID]), COUNTROWS('SuperStore Dataset')) * 100

Step 12: The report was then published to Power BI Service for broader access and sharing.

### Order Analysis:
        Total Orders: 5601
        Average Order Value (AOV): 250
        Average Delivery Time(in days): 4
 
![Screenshot 2024-07-05 011357](https://github.com/sam6akj/Superstore/assets/98220967/d7eb56fc-978a-4e13-a35e-e0c819ae86f9)

# Snapshot of Dashboard (Power BI Service)
![Screenshot 2024-07-05 022100](https://github.com/sam6akj/Superstore/assets/98220967/a96824d7-679e-4f78-b3ea-cc2a0abfc815)

 
 # Report Snapshot (Power BI DESKTOP)

 ![Screenshot 2024-07-04 235305](https://github.com/sam6akj/Superstore/assets/98220967/dc6ba05d-4998-42b4-98b5-0699efdb5743)

 ![Screenshot 2024-07-05 010404](https://github.com/sam6akj/Superstore/assets/98220967/42cb40d9-29df-4ca5-8a2c-3d91092c4800)
