--Total feedback score for each customer and comparing it to their spending score
SELECT scm.CustomerID, 
       ROUND(AVG(DISTINCT sf.FeedbackScore),2) AS AvgFeedbackScore, 
       scm."Spending Score (1-100)"
FROM Supermarket_CustomerMembers scm
JOIN Supermarket_Purchases sp ON scm.CustomerID = sp.CustomerID
JOIN Supermarket_Feedback sf ON scm.CustomerID = sf.CustomerID
GROUP BY scm.CustomerID, scm."Spending Score (1-100)"
ORDER BY sp.TotalAmount DESC;
