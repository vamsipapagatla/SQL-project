--Rank customers based on their total spending using RANK() or ROW_NUMBER().
  SELECT CustomerID, RANK() Over (ORDER BY "Spending Score (1-100)" DESC) as Rank, "Spending Score (1-100)"
  From Supermarket_CustomerMembers scm 