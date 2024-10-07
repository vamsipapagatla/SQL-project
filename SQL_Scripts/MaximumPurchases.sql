--Top Customers with Maximum purchases
SELECT CustomerID, COUNT(PurchaseID) AS Total_Purchases FROM Supermarket_Purchases sp 
GROUP BY CustomerID
ORDER BY Total_Purchases DESC 