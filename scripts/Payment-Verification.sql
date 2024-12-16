SELECT pID, acctid
FROM "Final Project".payment
WHERE acctid IN (
    SELECT cID
    FROM "Final Project".account
    GROUP BY cID
    HAVING COUNT(*) = 1
)
order by acctid;

SELECT pID, acctid
FROM "Final Project".payment
WHERE acctid IN (
    SELECT cID
    FROM "Final Project".account
    GROUP BY cID
    HAVING COUNT(*) = 2
)
order by acctid;

SELECT pID, acctid
FROM "Final Project".payment
WHERE acctid IN (
    SELECT cID
    FROM "Final Project".account
    GROUP BY cID
    HAVING COUNT(*) = 3
)
order by acctid;

WITH cID_grouping AS (
    SELECT cID, COUNT(*) AS account_count
    FROM "Final Project".Account
    GROUP BY cID
)
SELECT a.acctID, a.cID, a."comment",
       CASE 
           WHEN g.account_count = 1 THEN 'Single-Account'
           WHEN g.account_count = 2 THEN 'Two-Account'
           WHEN g.account_count = 3 THEN 'Three-Account'
           ELSE 'Other'
       END AS account_type
FROM "Final Project".Account a
LEFT JOIN cID_grouping g
ON a.cID = g.cID
WHERE a.acctID NOT IN (
    SELECT DISTINCT acctID
    FROM "Final Project".payment
);

SELECT acctID, TO_CHAR("date" , 'Month YYYY') AS payment_month
FROM "Final Project".payment
WHERE DATE_TRUNC('month', "date") = '2022-12-01';
