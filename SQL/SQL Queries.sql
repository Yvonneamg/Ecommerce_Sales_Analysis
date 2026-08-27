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
