--Question: Write a query to find the nth highest salary in an employee table.
--Solution:
SELECT Salary
FROM Employees
WHERE Salary IN (
  SELECT TOP 1 Salary
  FROM (
    SELECT Salary, ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RowNum
    FROM Employees
  ) AS Subquery
  WHERE RowNum = n
);
