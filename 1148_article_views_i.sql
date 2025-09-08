/*
LeetCode 1148: Article Views I
--------------------------------
Task: Return the ids of authors who viewed at least one of their own articles.
Table: Views(article_id INT, author_id INT, viewer_id INT, view_date DATE)

Author: Yogesh Almiya
Repo: sql-problem-solving-leetcode
Date: 2025-09-08
*/

/*
✅ Version 1 (Chosen) — DISTINCT + WHERE
Reason: Single pass with filter; simplest and faster on LeetCode dataset.
Observed runtime: ~704 ms
*/
SELECT DISTINCT author_id AS id
FROM Views
WHERE viewer_id = author_id
ORDER BY id;

/*
⚡ Version 2 — GROUP BY + COUNT/CASE (explicit "at least once")
Observed runtime: ~984 ms
*/
SELECT author_id AS id
FROM Views
GROUP BY author_id
HAVING COUNT(CASE WHEN viewer_id = author_id THEN 1 END) >= 1
ORDER BY id;