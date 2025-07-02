Use KMS_Orders
Select * from [dbo].[kms_study]

SELECT TOP 10 * FROM [dbo].[kms_study]

--Q1-- PRODUCT CATEGORY WITH THE HIGHEST SALES----

SELECT Product_Category, SUM(Sales) AS TotalSales
FROM [dbo].[kms_study]
GROUP BY Product_Category
ORDER BY TotalSales DESC;


---Q2---Top 3 and Bottom 3 regions in terms of sales------
---Top 3 Regions
SELECT TOP 3 region, SUM (sales) as TotalSales
FROM [dbo].[kms_study]
Group by region
order by Totalsales DESC;

---Bottom 3 Regions
SELECT TOP 3 Region, SUM(Sales) AS TotalSales
FROM [dbo].[kms_study]
GROUP BY Region
ORDER BY TotalSales ASC;

--Q3--Total sales of appliances in Ontario---
SELECT SUM(Sales) AS ApplianceSales
FROM [dbo].[kms_study]
WHERE Product_Category = 'Appliances'
  AND Province = 'Ontario';


--Q4-- Advice for increasing revenue from the bottom 10 customers---
SELECT TOP 10 Customer_Name, SUM(Sales) AS TotalSales
FROM [dbo].[kms_study]
GROUP BY Customer_Name;

--Q5--Most expensive shipping method----
SELECT Ship_Mode, SUM(Shipping_Cost) AS TotalShipping_Cost
FROM [dbo].[kms_study]
GROUP BY Ship_Mode
ORDER BY TotalShipping_Cost DESC;

--Q6--Most valuable customers and what they purchased----
SELECT TOP 10 Customer_Name, SUM(Sales) AS TotalSales
FROM [dbo].[kms_study]
GROUP BY Customer_Name
ORDER BY TotalSales DESC;

SELECT Product_Category, COUNT(*) AS TimesPurchased
FROM [dbo].[kms_study]
WHERE Customer_Name = 'TopCustomerNameHere'
GROUP BY Product_Category
ORDER BY TimesPurchased DESC;

--Q7--Small business customer with the highest sales?----
SELECT Customer_Name, SUM(Sales) AS TotalSales
FROM [dbo].[kms_study]
WHERE Customer_Segment = 'Small Business'
GROUP BY Customer_Name
ORDER BY TotalSales DESC;

SELECT TOP 1 * 
FROM [dbo].[kms_study]
WHERE Customer_Segment = 'Small Business'
ORDER BY Sales DESC;

--Q8--Corporate Customer with most orders (2009–2012)---
SELECT Customer_Name, COUNT(*) AS OrderCount
FROM [dbo].[kms_study]
WHERE Customer_Segment = 'Corporate'
GROUP BY Customer_Name
ORDER BY OrderCount DESC;

SELECT TOP 1 *
FROM [dbo].[kms_study]
WHERE Customer_segment = 'Corporate'
ORDER BY Order_Quantity

SELECT TOP 1 Customer_Name, COUNT(*) AS OrderCount
FROM [dbo].[kms_study]
WHERE Customer_Segment = 'Corporate'
GROUP BY Customer_Name
ORDER BY OrderCount DESC;

---Q9 Most profitable consumer customer---
SELECT Customer_Name, SUM(Profit) AS TotalProfit
FROM  [dbo].[kms_study]
WHERE Customer_Segment = 'Consumer'
GROUP BY Customer_Name
ORDER BY TotalProfit DESC;

SELECT TOP 1 *
FROM[dbo].[kms_study]
WHERE Customer_Segment = 'consumer'
ORDER BY Order_Quantity DESC;


