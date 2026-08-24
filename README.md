# Decolabs_Tasks 2

# SQL Data Analysis — E-commerce Sales Analysis


## Project Structure

- Project overview
- Objectives
- Tools used
- SQL analysis
- Summary of Key Metrics
- Key findings
- Recommendations
- Conclusion

  
### Project Overview

This project focuses on analyzing e-commerce sales data using SQL. The objective was to extract meaningful business insights from raw sales data by applying SQL querying techniques such as SELECT, WHERE, ORDER BY, GROUP BY, and aggregate functions including COUNT, SUM, and AVG.

The analysis was performed using Microsoft SQL Server, with the aim of understanding overall sales performance, product revenue, and transaction patterns.


### Objectives

- Retrieve and explore sales data using SQL.
- Filter records based on specific conditions.
- Sort sales data to identify high and low values.
- Calculate key sales metrics using aggregate functions.
- Analyze revenue by product.
- Use GROUP BY and HAVING to extract business insights.
- Translate SQL query results into meaningful business recommendations.


### Tools Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Excel — source data
- GitHub — project documentation


### SQL Analysis

- **Data Retrieval Using SELECT**

*Objective*: The first step was to retrieve and examine the sales data to understand its structure and the information available for analysis.


**SQL Query**

      SELECT *
      FROM Sales;


**Analysis**

The SELECT * statement was used to retrieve all columns and records from the Sales table.
This provided an overview of the dataset and allowed the data structure to be examined before performing further analysis.


*Why this was important*

Before performing calculations or filtering, it is important to understand the available fields and the type of information contained in the dataset.

- ### Filtering Data Using WHERE

**Business Question**

Are there any individual sales transactions where the total price is greater than **50,000**?


**SQL Query**

    SELECT *
    FROM Sales
    WHERE TotalPrice > 50000;


*Result*: No records were returned.

**Interpretation**

There were no individual sales transactions with a total price greater than **50,000**.

**Business Insight**

This indicates that the dataset does not contain any single transaction above the specified threshold. Therefore, sales revenue appears to be distributed across multiple transactions rather than being driven by a small number of extremely high-value transactions.



- ### Sorting Data Using ORDER BY

*Objective*: The ORDER BY clause was used to arrange sales records based on their total price.


**SQL Query**

    SELECT *
    FROM Sales
    ORDER BY TotalPrice DESC;


**Analysis**

The DESC keyword sorts the records from the highest value to the lowest value.This makes it easier to identify the highest-value transactions in the dataset.

*Why this was important*

Sorting the data helps identify high-value and low-value transactions and provides a quick way to understand the distribution of sales values.



- ### Counting Total Orders Using COUNT

**Business Question**

How many sales transactions are recorded in the dataset?


**SQL Query**

    SELECT COUNT(*) AS Total_Orders
    FROM Sales;

Result: Total Orders = **1,200**


**Interpretation**

The dataset contains 1,200 sales transactions.

**Business Insight**

The analysis is based on 1,200 individual sales records, providing a sufficient number of transactions for evaluating overall revenue and product performance within this dataset.


- ### Calculating Total Revenue Using SUM

**Business Question**

What is the total revenue generated across all sales transactions?

**SQL Query**

    SELECT SUM(TotalPrice) AS Total_Revenue
    FROM Sales;

Result: Total Revenue = **1,264,761.96**

**Interpretation**

The combined value of all sales transactions in the dataset is 1,264,761.96.

**Business Insight**

The total revenue provides an overall measure of the sales value generated during the period represented by the dataset. This metric can also serve as a baseline for comparing product-level performance.


- ### Calculating Average Order Value Using AVG

**Business Question**

What is the average value of a sales transaction?

**SQL Query**

    SELECT AVG(TotalPrice) AS Average_Order_Value
    FROM Sales;

Result: Average Order Value = **1,053.9683**


**Interpretation**

The average sales transaction generated approximately **1,053.97** in revenue.

**Business Insight**

The average order value provides an indication of the typical transaction size within the dataset. It can be used as a benchmark when evaluating individual transactions or comparing future sales performance.



- ### Revenue by Product Using GROUP BY

**Business Question**

How much revenue did each product generate?

**SQL Query**

       SELECT Product,
       SUM(TotalPrice) AS Total_Revenue
       FROM Sales
       GROUP BY Product
       ORDER BY Total_Revenue DESC;


**Result**


| Rank | Product | Total Revenue |
| ---- | ------- | ------------: |
| 1    | Chair   |    195,620.11 |
| 2    | Printer |    195,612.61 |
| 3    | Laptop  |    192,126.56 |
| 4    | Tablet  |    186,568.95 |
| 5    | Monitor |    175,651.41 |
| 6    | Desk    |    167,459.93 |
| 7    | Phone   |    151,722.39 |


**Interpretation**

The GROUP BY clause was used to combine sales records according to product. The SUM() function was then used to calculate the total revenue generated by each product.


**Key Findings**

Chair generated the highest revenue at 195,620.11.
Printer was the second-highest revenue-generating product at 195,612.61, only slightly below Chair.
Laptop generated 192,126.56, making it the third-highest revenue-generating product.
Phone generated the lowest revenue among the seven products, with 151,722.39.


**Business Insight**

Chair and Printer were the strongest revenue contributors in the dataset, while Phone generated the lowest total revenue.
The difference between the highest and lowest revenue-generating products is: **195,620.11 − 151,722.39 = 43,897.72**
This shows that there is a noticeable difference in revenue contribution across products.



- ### Filtering Grouped Data Using HAVING

**Business Question**

Which products generated more than 100,000 in total revenue?

**SQL Query**
    
      SELECT Product,
      SUM(TotalPrice) AS Revenue
      FROM Sales
      GROUP BY Product
      HAVING SUM(TotalPrice) > 100000;

**Result**

All seven products met the condition.

| Product | Revenue |
|---------|--------:|
| Monitor | 175,651.41 |
| Phone | 151,722.39 |
| Tablet | 186,568.95 |
| Chair | 195,620.11 |
| Laptop | 192,126.56 |
| Desk | 167,459.93 |
| Printer | 195,612.61 |


**Interpretation**

The *HAVING* clause was used to filter the results after the data had been grouped by product.
Unlike *WHERE*, which filters individual rows before grouping, HAVING filters grouped results after an aggregate calculation has been performed.

**Business Insight**

All seven products generated more than 100,000 in total revenue. This means that none of the products fell below the specified revenue threshold.



### Summary of Key Metrics
| KPI | Result |
|-----|-------:|
| Total Orders | 1,200 |
| Total Revenue | 1,264,761.96 |
| Average Order Value | 1,053.97 |
| Number of Products | 7 |
| Highest Revenue Product | Chair |
| Highest Product Revenue | 195,620.11 |
| Lowest Revenue Product | Phone |
| Lowest Product Revenue | 151,722.39 |



### Key Findings

Based on the SQL analysis, the following findings were identified:

- Overall Sales: The dataset contains 1,200 sales transactions, generating total revenue of 1,264,761.96.

- Average Transaction Value: The average sales transaction value is approximately 1,053.97.

- Product Performance: Chair was the highest revenue-generating product, with total revenue of 195,620.11.

- Lowest Revenue Product: Phone generated the lowest revenue among the seven products, with 151,722.39.

- Revenue Distribution: All seven products generated more than 100,000 in total revenue.

- High-Value Transactions: There were no individual transactions with a total price greater than 50,000.



### Business Recommendations

Based on the findings from the SQL analysis, the following recommendations can be considered:

- Monitor Top-Performing Products: Chair and Printer generated the highest revenue. Their performance should be monitored closely to understand what factors are contributing to their strong revenue performance.

- Investigate Phone Performance: Phone generated the lowest revenue among the products analyzed. Further analysis should be performed to determine whether this is caused by lower sales volume, lower unit prices, or other factors.

Analyze Sales Quantity: Revenue alone does not explain why a product performs better than another. Further analysis of quantity sold and unit price could help determine whether revenue differences are driven by sales volume or pricing.

- Analyze Sales Trends Over Time: A time-based analysis could reveal monthly or seasonal patterns in sales and help identify periods of high and low performance.

- Monitor Average Order Value: The average order value of approximately 1,053.97 can be used as a benchmark for evaluating future sales performance.



### Conclusion

This SQL Data Analysis project demonstrated how structured queries can be used to analyze e-commerce sales data and generate actionable business insights.

Using SQL, I was able to retrieve sales records, filter transactions, sort data, calculate key performance metrics, compare revenue across products, and identify products that exceeded a specified revenue threshold.

The analysis showed that the dataset contained 1,200 transactions and generated 1,264,761.96 in total revenue, with an average transaction value of approximately 1,053.97. Chair was the highest revenue-generating product, while Phone generated the lowest revenue.

Overall, this project strengthened my SQL querying, data aggregation, grouping, filtering, and analytical reasoning skills and demonstrated how SQL can be applied to real-world business data.
