# E-commerce Sales & Profitability Analysis

## Overview

An end-to-end analysis of the Superstore e-commerce dataset to evaluate **sales performance, profitability, customer value, product performance, regional performance and the relationship between discounting and profit**.

The project combines **Python, SQL, Excel, and Tableau** to move from data validation and exploratory analysis to business-focused insights and interactive reporting.

## The analysis covers **9,994 transaction records**, representing **5,009 orders, 793 customers, and 1,862 products** across 2014–2017.

## Business Objective

The objective was to understand:

* What is driving overall revenue and profitability?
* How are sales and profit changing over time?
* Which products and categories generate the most revenue?
* Which products generate the most profit?
* Which customers and customer segments contribute the most value?
* Which regions are performing strongly or require attention?
* Is higher discounting associated with weaker profitability?
* Which products generate high sales but low or negative profit?
* Where should management focus to improve profitable growth?

These questions were translated into analytical queries, KPIs, visualizations and an interactive Tableau dashboard.

---

## Analytical Workflow

### 1. Data Preparation & Quality Assessment

The dataset was loaded and inspected using Python and Pandas.

I performed:

* Dataset structure and data-type validation
* Missing-value checks
* Duplicate-record checks
* Date consistency checks
* Negative-profit analysis
* Sales validation
* Discount-range validation
* Customer and product uniqueness checks
* Creation of year, month, and year-month fields
* Conversion of the dataset into a SQLite database for SQL analysis

## The dataset contained **no missing values or duplicate records**. However, **1,871 records had negative profit**, highlighting an important profitability issue that required further investigation.

## Key Performance Indicators

| KPI                 |       Result |
| ------------------- | -----------: |
| Total Sales         |   **$2.30M** |
| Total Profit        | **$286.40K** |
| Profit Margin       |   **12.47%** |
| Total Quantity Sold |   **37,873** |
| Total Orders        |    **5,009** |
| Customers           |      **793** |
| Products            |    **1,862** |
| Average Order Value |  **$458.61** |

These KPIs establish the overall commercial performance of the business before drilling into customers, products, regions and time periods.

---

## SQL Analysis

SQL was used to answer targeted business questions from the SQLite sales database.

### Customer Analysis

I identified:

* Top customers by total sales
* Customers generating both high revenue and high profit
* Number of orders per customer
* Customer-level profit margins

For example, the analysis identified **Sean Miller as the highest-sales customer at $25,043.05**. However, his total profit was **-$1,980.74**, demonstrating why revenue alone is not sufficient for evaluating customer value.
This highlights an important business distinction between **high-revenue customers and genuinely profitable customers**.

### Product Analysis

I evaluated products using multiple performance measures:

* Total sales
* Total quantity sold
* Total profit
* Profit margin
* High-sales/low-profit performance

The analysis identified the **Canon imageCLASS 2200 Advanced Copier** as the highest-revenue product, generating approximately **$61.6K in sales and $25.2K in profit**.
I also identified products with **high sales but weak or negative profitability**, including the Cisco TelePresence System EX90, which generated approximately **$22.6K in sales but a loss of $1.8K**.

This analysis supports product-level decisions around pricing, discounting, promotion and product portfolio management.

### Customer Segment Analysis

Compared Consumer, Corporate and Home Office segments using:

* Number of customers
* Number of orders
* Total sales
* Total profit
* Profit margin

The **Consumer segment generated the highest sales ($1.16M)**, while **Home Office achieved the highest profit margin at approximately 14%**.

### Regional Analysis

Compared regions based on:

* Sales
* Profit
* Profit margin
* Quantity sold

The **West generated the highest sales at $725.46K**, followed by the East at $678.78K. However, the **Central region had a considerably lower profit margin of approximately 7.9%**, making it a potential area for profitability improvement.

---

## Time-Series Analysis

Sales and profit were analyzed at both annual and monthly levels.

### Annual Performance

| Year |    Sales |  Profit | Profit Margin |
| ---- | -------: | ------: | ------------: |
| 2014 | $484.25K | $49.54K |         10.2% |
| 2015 | $470.53K | $61.62K |         13.1% |
| 2016 | $609.21K | $81.80K |         13.4% |
| 2017 | $733.22K | $93.44K |         12.7% |

Sales increased substantially from 2015 onward, reaching **$733.2K in 2017**, while profitability remained relatively strong at approximately 13%.

Monthly analysis was also performed to identify changes in sales and profit throughout the four-year period, providing a basis for identifying seasonality and periods of unusually strong or weak performance.

---

## Discount & Profitability Analysis

One of the key analytical questions was whether higher discounts were associated with lower profitability.

The analysis compared sales, profit and profit margin across discount levels.

The results showed a clear deterioration in profitability at higher discount levels:

| Discount | Profit Margin |
| -------: | ------------: |
|       0% |           30% |
|      10% |           17% |
|      15% |            5% |
|      20% |           12% |
|      30% |          -10% |
|      40% |          -20% |
|      50% |          -35% |
|      60% |          -89% |
|      70% |          -99% |
|      80% |         -180% |

Higher discount levels were associated with increasingly negative profitability in this dataset. For example, transactions discounted by 40% generated a negative profit margin, while 80% discounts produced an even larger negative margin.

**Business implication:** discounting should be evaluated not only for its ability to drive sales volume, but also for its impact on contribution and profitability.

---

## High Sales / High Profit Product Matrix

To distinguish products based on both commercial scale and profitability, I created a **Sales vs. Profit matrix** at product level.

Products were segmented using median sales and median profit as reference points:

* **High Sales / High Profit** → strong-performing products
* **High Sales / Low Profit** → revenue-generating but potentially inefficient products
* **Low Sales / High Profit** → profitable products with potential for growth
* **Low Sales / Low Profit** → products requiring review

The analysis used **sales, profit, quantity and profit margin** to provide a more balanced view of product performance than revenue rankings alone.

This visualization helps identify products that may require **pricing, discount, promotion or portfolio decisions**.

---

## Key Business Insights

### 1. Revenue does not always equal profitability

Some high-revenue customers and products generated weak or negative profit. Sean Miller, for example, was the highest-sales customer but generated a loss overall.

### 2. The West leads in revenue

The West generated approximately **$725.5K in sales**, making it the strongest region by revenue.

### 3. Central region profitability requires attention

Although Central generated more sales than the South, its profit margin was only approximately **7.9%**, considerably below the West's approximately 14.9%.

### 4. Technology is the largest revenue-generating category

Technology generated approximately **$836.2K in sales**, ahead of Furniture and Office Supplies.

### 5. High discounting can destroy profitability

The discount analysis showed increasingly negative margins at higher discount levels, suggesting that aggressive discounting can generate sales without generating sustainable profit.

### 6. Product-level analysis reveals hidden risks

Several products generated significant sales while producing very low or negative profit. This demonstrates the importance of analyzing **revenue and profitability together** rather than ranking products solely by sales.

---

## Tools & Skills Demonstrated

### Python

* Pandas
* NumPy
* Matplotlib
* Seaborn
* Data cleaning and validation
* Exploratory data analysis
* KPI development
* Time-series analysis
* Product performance analysis
* Data visualization

### SQL

* SQLite
* `GROUP BY`
* Aggregations using `SUM()` and `COUNT()`
* `ORDER BY`
* `LIMIT`
* `HAVING`
* Profit-margin calculations
* Date extraction using `strftime()`
* Customer, product, segment, category, and regional analysis

### Excel

* Pivot tables
* Charts
* Conditional formatting
* KPI calculations
* Sales and profit analysis
* Regional and category comparisons

### Tableau

* Interactive dashboard development
* KPI visualization
* Time-series reporting
* Regional analysis
* Category analysis
* Interactive filtering

---

## Deliverables

* [Excel Workbook](data/Excel%20Ecommerce%20Analysis.xlsx)
* [Tableau Dashboard](https://public.tableau.com/app/profile/yvonne.amugaga/viz/EcommerceSalesDashboardFinal/E-commerceSalesAnalysisDashboard)
* [SQL Queries](SQL/SQL%20Queries.sql)

---

## How to Run

### Python

Open the analysis notebook and ensure the raw Excel dataset is available in the `data/Excel raw data.xlsx` directory.

### Excel

Open:

`data/Excel Ecommerce Analysis.xlsx`

### SQL

### SQL

SQL analysis was performed using **SQLite3 within Python**. The dataset is loaded into an **in-memory SQLite database** and converted into a `sales` table.

The queries in `SQL/SQL Queries.txt` can be reproduced by running the notebook, which creates and populates the database before executing the SQL analysis.


### Tableau

Open the Tableau Public dashboard using the link above.

---

## Project Outcome

This project demonstrates an end-to-end **data analytics workflow**, from data quality assessment and exploratory analysis to SQL querying, KPI development, business insight generation and dashboard reporting.

Rather than focusing only on descriptive sales metrics, the analysis emphasizes **profitability, customer value, product efficiency, regional performance, discount impact and actionable business questions**.
