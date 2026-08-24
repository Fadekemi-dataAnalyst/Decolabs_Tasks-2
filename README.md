# Decolabs_Tasks 2

# SQL Data Analysis — E-commerce Sales Analysis

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

**Data Retrieval Using SELECT**
Objective

The first step was to retrieve and examine the sales data to understand its structure and the information available for analysis.

**SQL Query**

SELECT *
FROM Sales;

*Analysis*

The SELECT * statement was used to retrieve all columns and records from the Sales table.
This provided an overview of the dataset and allowed the data structure to be examined before performing further analysis.

*Why this was important*

Before performing calculations or filtering, it is important to understand the available fields and the type of information contained in the dataset.

### Filtering Data Using WHERE

*Business Question*

Are there any individual sales transactions where the total price is greater than **50,000**?

**SQL Query**

SELECT *
FROM Sales
WHERE TotalPrice > 50000;


*Result*

No records were returned.

**Interpretation**

There were no individual sales transactions with a total price greater than **50,000**.

**Business Insight**

This indicates that the dataset does not contain any single transaction above the specified threshold. Therefore, sales revenue appears to be distributed across multiple transactions rather than being driven by a small number of extremely high-value transactions.
