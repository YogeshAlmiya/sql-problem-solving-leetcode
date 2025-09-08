/*
LeetCode 595: Big Countries
----------------------------
Problem:
Return the name, population, and area of countries 
where the area is at least 3,000,000 OR the population is at least 25,000,000.

Table Schema:
World(name VARCHAR, continent VARCHAR, area INT, population INT, gdp INT)

Author: Yogesh Almiya
GitHub Repo: sql-problem-solving-leetcode
Date: 2025-09-08
*/

/* 
Version 1 (Final Chosen Solution)
- Uses OR predicate (single scan).
- Execution Time: ~489–506 ms (faster on LeetCode dataset).
*/
SELECT name, population, area
FROM world
WHERE area >= 3000000
   OR population >= 25000000;


/* 
Version 2 (Alternative Approach)
- Uses UNION ALL with non-overlapping conditions (index-friendly in large DBs).
- Execution Time: ~814 ms on LeetCode (slower here, but may help with indexes in real-world DBs).
*/
SELECT name, population, area
FROM world
WHERE area >= 3000000

UNION ALL

SELECT name, population, area
FROM world
WHERE area < 3000000
  AND population >= 25000000;