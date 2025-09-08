/*
Version 1 (Chosen Solution) — LEFT JOIN
- Ensures all employees are returned.
- If no matching unique_id exists, shows NULL.
- Runtime observed: ~244 ms
*/
SELECT eu.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu
  ON e.id = eu.id;

/*
Version 2 (Alternative) — RIGHT JOIN
- Same result as LEFT JOIN, just written in reverse form.
*/
-- SELECT eu.unique_id, e.name
-- FROM EmployeeUNI eu
-- RIGHT JOIN Employees e
--   ON e.id = eu.id;

/*
Version 3 (Alternative) — Correlated Subquery
- Less efficient on large datasets but simpler in form.
*/
-- SELECT
--   (SELECT eu.unique_id FROM EmployeeUNI eu WHERE eu.id = e.id) AS unique_id,
--   e.name
-- FROM Employees e;