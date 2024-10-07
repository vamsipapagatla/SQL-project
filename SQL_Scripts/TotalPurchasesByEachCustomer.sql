--Customers Who gave the best Feedback to our store
SELECT CustomerID, FeedbackScore, FeedbackComment from Supermarket_Feedback sf 
WHERE FeedbackScore = 5 AND FeedbackComment = 'Excellent'
GROUP BY CustomerID 
