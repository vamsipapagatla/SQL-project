--average purchase amount for customers in each age group
SELECT 
	CASE when Age<20 then 'Under20'
		when Age between 20 and 30 THEN '20-30'
		WHEN Age BETWEEN 30 and 40 THEN '30-40'
		WHEN Age BETWEEN 40 and 50 then '40-50'
		WHEN Age>50 THEN 'Olderthan50'
		End
		as AgeGroup, Round(AVG(TotalAmount),2) as AveragePurchaseAmount
FROM  Supermarket_CustomerMembers
Join Supermarket_Purchases on Supermarket_CustomerMembers.CustomerID =Supermarket_Purchases.CustomerID 
GROUP By AgeGroup
ORDER By AgeGroup
