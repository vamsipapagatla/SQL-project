--Find the cumulative total purchases of each customer in the year 2022
SELECT CustomerID, PurchaseDate, SUM(TotalAmount) OVER (PARTITION By CustomerID ORDER BY PurchaseDate) as Cumulative_Total
From Supermarket_Purchases sp 
WHERE STRFTIME('%Y', sp.PurchaseDate)='2022'
ORDER BY CustomerID 