--Monthly Report of Average Feedback score from all customers
Select STRFTIME('%Y-%m', PurchaseDate) as 'Month and Year', Round(AVG(FeedbackScore),2) as Avg_Feedback_Score
from Supermarket_Purchases sp 
Left Join Supermarket_Feedback sf on  sp.CustomerID =sf.CustomerID 
GROUP BY STRFTIME('%Y-%m', PurchaseDate)
ORDER BY 'Month and Year'