/* 
Version 1 (Optimized - Faster)
Execution Time: ~462ms
Reason: Uses NULL check first, then comparison. Cleaner OR condition.
*/
SELECT name
FROM Customer
WHERE referee_id IS NULL 
   OR referee_id <> 2;


/* 
Version 2 (Alternative - Slightly Slower)
Execution Time: ~500ms
Reason: Same logic, but order of OR conditions may influence optimizer.
*/
SELECT name
FROM Customer
WHERE referee_id <> 2 
   OR referee_id IS NULL;

/* 
Version 3 (Alternative - Slowest)
Execution Time: ~506ms
Reason: Same logic, but used union all.
*/

SELECT name
FROM Customer
WHERE referee_id IS NULL

UNION ALL

SELECT name
FROM Customer
WHERE referee_id <> 2;
