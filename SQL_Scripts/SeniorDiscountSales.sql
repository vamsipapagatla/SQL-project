--Comparing estimated Total Amount if store decides to give 10% discont to Senior Citizens i.e, Customer with Age>=60
SELECT scm.CustomerID, Round(AVG(TotalAmount),2) as AvgAmount, 
	ROUND(AVG(TotalAmount*0.9),2) as AvgAmount_Discount, 
	(AvgAmount-AvgAmount_Discount) as Difference
From Supermarket_CustomerMembers scm 
Join Supermarket_Purchases sp on  scm.CustomerID =sp.CustomerID 
WHERE Age >60
GROUP BY scm.CustomerID 