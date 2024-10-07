--Average Spending of all the Customers
SELECT CustomerID, ROUND(AVG(TotalAmount),2) as AverageSpending from Supermarket_Purchases sp 
Group BY CustomerID 
ORDER BY AverageSpending Desc