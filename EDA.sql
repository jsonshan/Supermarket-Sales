/*
Supermarket Sales Data Exploration


*/
-- Previewing Data

SELECT *
FROM supermarket_sales;


-- Which products are the best sellers?

SELECT `Product line`, COUNT(*) AS SalesCount, ROUND(SUM(`Gross income`), 2) AS TotalSales
FROM supermarket_sales
GROUP BY `Product line`
ORDER BY TotalSales DESC;

-- Which Branch/City generated most revenue?

SELECT Branch, City, ROUND(SUM(`Gross income`), 2) AS TotalSales
FROM supermarket_sales
GROUP BY Branch, City
ORDER BY TotalSales DESC;

-- What are the peak time periods

SELECT `Time of day`, COUNT(*) AS SalesCount, ROUND(SUM(`Gross income`), 2) AS TotalSales
FROM supermarket_sales
GROUP BY `Time of day`
ORDER BY SalesCount DESC;


-- Which month generated the most sales? Jan-Mar

SELECT DATE
FROM supermarket_sales;


-- Male vs Female spendings

SELECT Gender, COUNT(*) AS SalesCount, ROUND(SUM(`Gross income`), 2) AS TotalSales
FROM supermarket_sales
GROUP BY Gender
ORDER BY TotalSales DESC;






