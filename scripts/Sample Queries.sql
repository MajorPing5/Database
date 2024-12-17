-- Sample Query 1
SELECT name, amount
FROM "Final Project".service
WHERE type = 'Regular' OR type = 'Special';

-- Sample Query 2
select
	a.cid, 
    a.acctID,
    (SUM(b.amount) - SUM(p.amount)) AS Balance
FROM 
    "Final Project".Account a
JOIN 
    "Final Project".billing b 
ON 
    a.acctID = b.acctID
LEFT JOIN 
    "Final Project".payment p 
ON 
    a.acctID = p.acctID
GROUP BY 
    a.acctID
HAVING 
    (SUM(b.amount) - SUM(p.amount)) >= 0
ORDER BY 
    Balance DESC;

-- Sample Query 3
SELECT 
    b.acctID,
    b.bID,
    b.amount,
    b.duedate,
    s.sID,
    s.type
FROM 
    "Final Project".billing b
JOIN 
    "Final Project".service s 
ON 
    b.sID = s.sID
WHERE 
    s.type LIKE '%Special%'
    AND b.duedate BETWEEN '2022-10-01' AND '2022-10-07'
    AND b.acctID = 21
ORDER BY 
    b.duedate;

-- Sample Query 4
SELECT 
    acctID,
    amount,
    date,
    method
FROM 
    "Final Project".payment
WHERE 
    acctID = 7
    AND date >= DATE '2024-06-16'
    AND date <= DATE '2024-12-16'
ORDER BY 
    date DESC;

-- Sample Query 5
SELECT 
    b.acctid,
    s.name,
    s.amount,
    b.subdate,
    b.enddate
FROM 
    "Final Project".billing b
JOIN 
    "Final Project".service s
ON 
    b.sid = s.sid
WHERE 
    b.acctid = 3
    AND s.type = 'Regular'
ORDER BY 
    b.subdate;

-- Sample Query 6
SELECT 
    p.acctid, 
    SUM(b.amount) - SUM(p.amount) AS balance
FROM "Final Project".payment p
LEFT JOIN "Final Project".billing b 
    ON p.acctid = b.acctid
GROUP BY p.acctid;

-- Sample Query 7
SELECT s.name, s.amount, u.category
FROM "Final Project".billing b
JOIN "Final Project".service s 
    ON b.sid = s.sid
JOIN "Final Project".unusual u 
    ON s.sid = u.sid
WHERE b.acctid = 15
  AND s.type = 'Unusual';

-- Sample Query 8
SELECT billdate, amount, duedate
FROM "Final Project".billing
WHERE acctid = 1;

-- Sample Query 9
SELECT c.cid, c.name, COUNT(a.acctid) AS account_count
FROM "Final Project".customer c
JOIN "Final Project".account a 
    ON c.cid = a.cid
GROUP BY c.cid, c.name
HAVING COUNT(a.acctid) > 1;

-- Sample Query 10
SELECT SUM(amount) AS total_payments
FROM "Final Project".payment
WHERE date >= DATE '2022-09-01' AND date < DATE '2022-10-01';