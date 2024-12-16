SELECT cID
FROM "Final Project".Customer
WHERE cID NOT IN (
    SELECT DISTINCT cID
    FROM "Final Project".Account
);

SELECT acctID, cid, "comment"
FROM "Final Project".account
WHERE cID IN (
    SELECT cID
    FROM "Final Project".account
    GROUP BY cID
    HAVING COUNT(*) = 1
)
order by cid;

SELECT acctID, cid, "comment"
FROM "Final Project".account
WHERE cID IN (
    SELECT cID
    FROM "Final Project".account
    GROUP BY cID
    HAVING COUNT(*) = 2
)
order by cid;

SELECT acctID, cid, "comment"
FROM "Final Project".account
WHERE cID IN (
    SELECT cID
    FROM "Final Project".account
    GROUP BY cID
    HAVING COUNT(*) = 3
)
order by cid;

SELECT usage_count, COUNT(*) AS tuple_count
FROM (
    SELECT cID, COUNT(*) AS usage_count
    FROM "Final Project".account
    GROUP BY cID
) subquery
WHERE usage_count IN (0, 1, 2, 3)
GROUP BY usage_count
ORDER BY usage_count;