--Calculate the total feedback score for each customer and compare it to their spending score

SELECT scm.CustomerID, scm."Spending Score (1-100)",ROUND(AVG(FeedbackScore),2) as AvgFeedbackScore from Supermarket_CustomerMembers scm 
JOIN Supermarket_Feedback sf2 on scm.CustomerID = sf2.CustomerID 
GROUP BY scm.CustomerID, scm."Spending Score (1-100)" 
ORDER BY scm."Spending Score (1-100)" DESC
LIMIT 30