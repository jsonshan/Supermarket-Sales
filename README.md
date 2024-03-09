# Supermarket Sales Analysis

### Project Overview
This data analysis project aims to provide insights into the sales performance of supermarkets in Myanmar(Burma) over the course of three months. By analyzing various aspects of the sales data, we seek to identify trends, make data-driven recommendations, and gain a deeper understanding of their supermarket sales.

### Findings

1. Food and beverages generate the most sales
2. Members slightly make more sales than normal customers
3. Naypyitaw is the City which generates the most sales
4. Evenings are the busiest and most profitable
5. Higher rating does not correlate to more spendings

### Data Sources
Sales Data: The dataset used in this analysis is the "supermarket_sales.csv" file, containing information each sale made by customers.

This dataset was taken from Kaggle: https://www.kaggle.com/datasets/aungpyaeap/supermarket-sales

### Tools

- Excel - Data Cleaning
- SQL - Data Analysis

### Data Cleaning/Preparation

In the initial data preparation phase, we performed the following tasks:
1. Data loading and inspection
2. Handling missing values
3. Checks for misspellings/incorrectly inputted data
4. Removing Duplicates
5. Added Time of day column mapping Time column to Morning, Afternoon, and Evening. 0:00 - 12:00 = Morning, 12:00 - 16:00 = Afternoon, 16:00 - 24:00 = Evening
   - Function: **=IF(AND(HOUR(L2)>=0,HOUR(L2)<12),"Morning",IF(AND(HOUR(L2)>=12,HOUR(L2)<16),"Afternoon",IF(AND(HOUR(L2)>=16,HOUR(L2)<24),"Evening","")))**
6. Standardize and formatted columns to be the same

### Exploratory Data Analysis

EDA involved exploring the sales data to answer key questions, such as:

- Which products are the best sellers?
- What are the peak periods of sales?
- What is the overall sales trend?

### Data Analysis/Results
Which products are the best sellers?

|Product line|SalesCount|TotalSales|
|------------|----------|----------|
|Food and beverages|174|2673.56|
|Sports and Travel|166|2624.9|
|Electronic accessories|170|2587.5|
|Fashion accessories|178|2586|
|Home and lifestyle|160|2564.85|
|Health and beauty|152|2342.56|


What is the average spending of customers/members?

|Customer type|SalesCount|AVGTotal|
|-------------|----------|--------|
|Member|501|327.79|
|Normal|499|318.12|

Which Branch/City generated the most revenue?

|Branch|City|TotalSales|
|------|----|----------|
|C|Naypyitaw|5265.18|
|A|Yangon|5057.16|
|B|Mandalay|5057.03|

What are the peak sales of the day?

|Time of day|SalesCount|TotalSales|
|-----------|----------|----------|
|Evening|432|6589.09|
|Afternoon|377|5847.48|
|Morning|191|2942.8|

Which month generated the most sales (Jan-Mar)?

|Month|SalesCount|TotalSales|
|-----|----------|----------|
|January|352|5537.71|
|March|345|5212.17|
|Feburary|303|4629.49|

Male vs Female spending

|Gender|SalesCount|TotalSales|
|------|----------|----------|
|Female|501|7994.43|
|Male|499|7384.94|

Which is the most popular payment method?

|Payment|SalesCount|TotalSales|
|-------|----------|----------|
|Cash|344|5343.17|
|Ewallet|345|5237.77|
|Credit card|311|4798.43|

Do Members spend more than Normal Customers?

|Customer type|SalesCount|Total Sales|
|-------------|----------|-----------|
|Member|501|7820.16|
|Normal|499|7559.21|

Which product tends to give better ratings?

|Product line|SalesCount|AVGRating|
|------------|----------|---------|
|Food and beverages|174|7.11|
|Fashion accesories|178|7.03|
|Health and beauty|152|7|
|Electronic accessories|170|6.92|
|Sports and travel|166|6.92|
|Home and lifestyle|160|6.84|

Does a higher rating lead to more spending?

|RatingType|SalesCount|TotalSales|
|----------|----------|----------|
|Good|356|5206.05|
|Poor|315|5108.58|
|Excellent|329|5064.74|

### Recommendations
Members tend to spend more than normal customers, so we should do promotions regarding membership prescriptions. 
Based on my personal experience, my local grocery stores give free memberships, including deals and discounts on
selected goods which are great😄.

Evening times are the busiest and most profitable, so we should promote these products at these times.

Naypyitaw City is the best place to sell groceries since it generates the most revenue.

### Limitations
The source has a three-month timeframe (Jan-Mar), meaning we cannot ensure this data is valid during other seasons besides Winter.

The dataset collected is relatively small and doesn't have any extra tables to do joins and other SQL functions

Limited information to give other data-driven recommendations and gain more in-depth insights.
