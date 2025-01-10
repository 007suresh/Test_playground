--Question: Write a query to find the top 5 customers with the highest total order amounts
--Solution:
SELECT CustomerID, SUM(OrderAmount) AS TotalOrderAmount
FROM Orders
GROUP BY CustomerID
ORDER BY TotalOrderAmount DESC
LIMIT 5;