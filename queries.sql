-- ===========================================
--ECOMMERCE SALES ANALYSIS
-- ===========================================



SELECT *
FROM Sales


--Filtering with WHERE

SELECT *
FROM Sales
WHERE TotalPrice > 50000



--Sorting with ORDER BY

SELECT *
FROM Sales
ORDER BY TotalPrice DESC;


--Aggregations

SELECT COUNT (*) AS Total_Orders
FROM Sales


SELECT SUM (TotalPrice) AS Total_Revenue
FROM Sales


SELECT AVG (TotalPrice) AS AVG_Order_Value
FROM Sales


--GROUPBY

SELECT Product,
	   SUM (TotalPrice) AS Total_Revenue
FROM Sales
GROUP BY Product
ORDER BY Total_Revenue DESC;


--HAVING

SELECT Product,
	   SUM (TotalPrice) AS Revenue
FROM Sales
GROUP BY Product
HAVING SUM(TotalPrice) > 100000;





