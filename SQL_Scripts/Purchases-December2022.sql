SELECT CustomerID, PurchaseID from Supermarket_Purchases sp 
WHERE STRFTIME('%Y',PurchaseDate)='2022' and STRFTIME('%m',PurchaseDate)='12'
GROUP BY CustomerID
ORDER by CustomerID ASC  
