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

SELECT 
	CASE
		WHEN SUBSTRING(`Date`, 1, 1) = 1 THEN 'January'
        WHEN SUBSTRING(`Date`, 1, 1) = 2 THEN 'Feburary' 
        WHEN SUBSTRING(`Date`, 1, 1) = 3 THEN 'March' 
        ELSE ''
    END AS SalesMonth,
    COUNT(*) AS SalesCount,
	ROUND(SUM(`Gross income`), 2) AS TotalSales
FROM supermarket_sales
GROUP BY SalesMonth
ORDER BY TotalSales DESC;


-- Male vs Female spendings

SELECT Gender, COUNT(*) AS SalesCount, ROUND(SUM(`Gross income`), 2) AS TotalSales
FROM supermarket_sales
GROUP BY Gender
ORDER BY TotalSales DESC;

-- Which payment method is the most popular?

SELECT Payment, COUNT(*) AS SalesCount
FROM supermarket_sales
GROUP BY Payment
ORDER BY SalesCount DESC;

-- Do Members buy more products/spend more than Normal Customers?
SELECT `Customer type`, COUNT(*) AS SalesCount, ROUND(SUM(`Gross income`), 2) AS TotalSales
FROM supermarket_sales
GROUP BY `Customer type`
ORDER BY TotalSales DESC;




