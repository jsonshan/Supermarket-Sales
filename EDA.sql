/*
Supermarket Sales Data Exploration


*/

SELECT *
FROM supermarket_sales;


-- Which products are the best sellers?
SELECT `Product line`, ROUND(SUM(`Gross income`), 2) AS TotalSales
FROM supermarket_sales
GROUP BY `Product line`
ORDER BY TotalSales DESC;

-- Which City generated most revenue?

SELECT 
    `City`, ROUND(SUM(`Gross income`), 2) AS TotalSales
FROM
    supermarket_sales
GROUP BY `City`
ORDER BY TotalSales DESC;

-- What are the peak time periods


-- Which month generated the most sales? Jan-Mar

SELECT DATE
FROM supermarket_sales;


-- Male vs Female spendings



