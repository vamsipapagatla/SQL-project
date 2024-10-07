--Correcting the feedback Score by Customers according to their Feedback comments.

UPDATE Supermarket_Feedback 
SET FeedbackScore=
	CASE WHEN FeedbackComment = 'Very Poor' THEN 1
	WHEN FeedbackComment = 'Poor' THEN 2
	WHEN FeedbackComment = 'Average' THEN 3
	WHEN FeedbackComment = 'Good' THEN 4
	WHEN FeedbackComment = 'Excellent' THEN 5
	END 
