# Supermarket Sales Analysis

### Project Overview
This data analysis project aims to provide insights into the sales performance of supermarkets in Myanmar(Burma) over the course of three months. By analyzing various aspects of the sales data, we seek to identify trends, make data-driven recommendations, and gain a deeper understanding of their supermarket sales.


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
- What are the peak time periods
- What is the overall sales trend?

### Data Analysis

Interesting code and features I worked with

