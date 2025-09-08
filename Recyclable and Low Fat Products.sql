-- LeetCode 1757: Recyclable and Low Fat Products
-- Works on: MySQL, PostgreSQL, SQL Server
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';