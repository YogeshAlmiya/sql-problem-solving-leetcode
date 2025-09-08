*/

-- Final solution
SELECT tweet_id
FROM Tweets
WHERE LEN(content) > 15;

/*
Alternative (SQL Server note):
-- DATALENGTH returns bytes; for NVARCHAR you'd compare > 30.
-- Use only if you specifically need byte length.
-- SELECT tweet_id FROM Tweets WHERE DATALENGTH(content) > 15;
*/