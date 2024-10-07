--Summarize the number of purchases they have made, their Average feedback score, and their average spending per purchase
SELECT sp.CustomerID, COUNT(DISTINCT PurchaseID) as Total_Purchases, ROUND(AVG(FeedbackScore),2) as Avg_Feedback_Score, Round(AVG(TotalAmount),2) as Avg_Spending
FROM Supermarket_Purchases sp 
LEFT JOIN Supermarket_Feedback sf on sp.CustomerID = sf.CustomerID 
GROUP BY sp.CustomerID 

