--Highest and Lowest Feedback given by Customers
SELECT CustomerID, MAX(FeedbackScore) as Max_Feedback_Score, MIN(FeedbackScore) as Min_Feedback_Score
From Supermarket_Feedback sf 
Group by CustomerID 
