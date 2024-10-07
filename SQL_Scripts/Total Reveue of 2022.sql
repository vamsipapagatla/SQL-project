--Total Revenue from Sales made in the Year 2022
Select SUM(TotalAmount) as Total_Revenue from Supermarket_Purchases sp 
where STRFTIME('%Y', PurchaseDate) = '2022'
