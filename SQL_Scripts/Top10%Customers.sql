--Top 10% spenders 
SELECT CustomerID, SUM(TotalAmount) as TotalAmountSpent from Supermarket_Purchases sp
Group By CustomerID 
ORDER By TotalAmountSpent DESC 
LIMIT (Select ROUND(0.1*Count(*)) FROM Supermarket_Purchases)


--where CustomerID is part of the top 10% of all the Customers
--Totalamount is part of top 10%