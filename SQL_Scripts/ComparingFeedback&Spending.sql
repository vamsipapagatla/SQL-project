--total number of purchases, total feedbacks received, and total spending for each customer
SELECT scm.CustomerID, COUNT(PurchaseID) as TotalPurchases, COUNT(CustomerFeedback) as TotalFeedback, SUM(TotalAmount) as TotalSpending 
FROM Supermarket_CustomerMembers scm 
Left join Supermarket_Feedback sf on scm.CustomerID=sf.CustomerID 
LEFT JOIN Supermarket_Purchases sp on scm.CustomerID=sp.CustomerID
GROUP BY scm.CustomerID 