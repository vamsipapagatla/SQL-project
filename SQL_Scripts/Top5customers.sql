--Top 5 most spending Customers
SELECT CustomerID, Sum(TotalAmount) as Total_Spending from Supermarket_Purchases sp 
Group by CustomerID 
Order by Total_Spending DESC
LIMIT 5