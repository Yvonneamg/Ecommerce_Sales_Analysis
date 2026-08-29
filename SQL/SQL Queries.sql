--query to find top 5 customers by total sales
SELECT "Customer ID", "Customer Name", SUM("Sales") AS TotalSales
FROM sales
GROUP BY "Customer ID", "Customer Name"
ORDER BY TotalSales DESC
LIMIT 5;

--query for top 5 products by quantity sold
select "Product ID", 
"Product Name", 
sum(sales) as totalsales, 
sum(Quantity) as totalquantity
from sales
group by "Product ID", "Product Name"
order by totalquantity desc
limit 5;

--query for low-profit products (profit margin < 10%)
SELECT "Product ID", "Product Name", Category, (SUM("Profit") / SUM("Sales")) AS ProfitMargin
FROM sales
GROUP BY "Product ID", "Product Name", Category
HAVING ProfitMargin < 0.1
ORDER BY ProfitMargin DESC;

--query for sales by region
SELECT region,
sum(sales) as totalsales
from sales
group by region
order by totalsales desc;

-- query for sales and profit by year
SELECT
    strftime('%Y', "Order Date") AS Year,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    SUM(Profit) / SUM(Sales) AS ProfitMargin
FROM sales
GROUP BY Year
ORDER BY Year;

-- query for sales and profit by month
SELECT
    strftime('%Y-%m', "Order Date") AS YearMonth,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM sales
GROUP BY YearMonth
ORDER BY YearMonth;

-- query for top products by total sales
Select "Product ID",
"Product Name",
sum(Sales) as TotalSales
from sales
group by "Product ID", "Product Name"
order by TotalSales desc;

-- What product sales the most
SELECT
    "Product ID",
    "Product Name",
    SUM(Quantity) AS TotalQuantity,
    SUM(Sales) AS TotalSales
FROM sales
GROUP BY "Product ID", "Product Name"
ORDER BY TotalQuantity DESC
LIMIT 10;

-- What categorygenerates more revenue
SELECT "Product ID",
"Product Name",
"Category",
SUM(Sales) AS TotalSales,
SUM(Profit) AS TotalProfit
from sales
group by "Category"
order by TotalSales desc;

-- What product generates more revenue
SELECT "Product ID",
"Product Name",
SUM(Sales) AS TotalSales,
SUM(Profit) AS TotalProfit
from sales
group by "Product ID", "Product Name"
order by TotalSales desc
limit 10;
