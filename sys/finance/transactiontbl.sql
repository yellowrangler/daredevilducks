DROP TABLE transactiontbl;
CREATE TABLE transactiontbl (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  institutiontype varchar(255) NULL,
  institution varchar(255) NULL,
  transdate date,
  amt DECIMAL(19,2), 
  category varchar(255) NULL,
  payee varchar(255) NULL,
  enterdate datetime,
  PRIMARY KEY (id)
); 

DROP TABLE institutiontbl;
CREATE TABLE institutiontbl (
  id bigint(20) unsigned,
  institutiontype varchar(255) NULL,
  institution varchar(255) NULL,
  PRIMARY KEY (id)
); 

-- 
--  seed institutiontbl
-- 
INSERT INTO institutiontbl (id, institutiontype, institution) 
VALUES (1, 'Bank', 'Ally'),(2, 'Bank', 'RocklandSpcl'),(3, 'Bank', 'RocklandBillPay'),
       (4, 'CreditCard', 'Chase'),(5, 'CreditCard', 'DiscoverIT')

-- 
--  seelect all institutiontbl
-- 
SELECT institutiontype, institution
FROM institutiontbl 


-- 
-- get last transaction for institutiontype and institution
-- 

--  for bank Ally

SELECT T.* 
FROM transactiontbl T
LEFT JOIN (
  SELECT MAX(transdate) AS "targetdate", institutiontype, institution 
  FROM transactiontbl 
  WHERE institutiontype = "Bank" AND institution = "Ally"
  ) M ON M.institutiontype = T.institutiontype AND M.institution = T.institution
WHERE T.institutiontype = "Bank" AND T.institution = "Ally" AND transdate = M.targetdate;

--  for bank Rockland

SELECT T.* 
FROM transactiontbl T
LEFT JOIN (
  SELECT MAX(transdate) AS "targetdate", institutiontype, institution 
  FROM transactiontbl 
  WHERE institutiontype = "Bank" AND institution = "Ally"
  ) M ON M.institutiontype = T.institutiontype AND M.institution = T.institution
WHERE T.institutiontype = "Bank" AND T.institution = "Ally" AND transdate = M.targetdate;


--  for creditcard Chase

SELECT T.* 
FROM transactiontbl T
LEFT JOIN (
  SELECT MAX(transdate) AS "targetdate", institutiontype, institution 
  FROM transactiontbl 
  WHERE institutiontype = "CreditCard" AND institution = "Chase"
  ) M ON M.institutiontype = T.institutiontype AND M.institution = T.institution
WHERE T.institutiontype = "CreditCard" AND T.institution = "Chase" AND transdate = M.targetdate;

--  for creditcard DiscoverIT

SELECT T.* 
FROM transactiontbl T
LEFT JOIN (
  SELECT MAX(transdate) AS "targetdate", institutiontype, institution 
  FROM transactiontbl 
  WHERE institutiontype = "CreditCard" AND institution = "DiscoverIT"
  ) M ON M.institutiontype = T.institutiontype AND M.institution = T.institution
WHERE T.institutiontype = "CreditCard" AND T.institution = "DiscoverIT" AND transdate = M.targetdate;

--  bad sql after here

SELECT T.*
FROM transactiontbl T
LEFT JOIN (
  SELECT MAX(transdate) AS "targetdate", institutiontype, institution
  FROM transactiontbl
  WHERE institutiontype = 'Bank' AND institution = 'RocklandSpcl'
  ) M ON M.institutiontype = T.institutiontype AND M.institution = T.institution
WHERE T.institutiontype = 'Bank' AND T.institution = 'RocklandSpcl' AND transdate = M.targetdate

SELECT T.*
FROM transactiontbl T
LEFT JOIN (
  SELECT MAX(transdate) AS "targetdate", institutiontype, institution
  FROM transactiontbl
  WHERE institutiontype = 'Bank' AND institution = 'RocklandBillPay'
  ) M ON M.institutiontype = T.institutiontype AND M.institution = T.institution
WHERE T.institutiontype = 'Bank' AND T.institution = 'RocklandBillPay' AND transdate = M.targetdate

-- 
-- look for duplicat
-- 

--  quick version

SELECT  institutiontype, institution, transdate, amt
FROM transactiontbl
GROUP BY institutiontype, institution, transdate, amt
HAVING COUNT(id) > 1;

SELECT COUNT(id), institutiontype, institution, transdate, payee, amt
FROM transactiontbl
GROUP BY institutiontype, institution, transdate, payee, amt
HAVING COUNT(id) > 1;  

--  to finds 

SELECT id, institutiontype, institution, transdate, payee, amt
FROM transactiontbl
WHERE institutiontype = 'CreditCard' AND institution = 'DiscoverIT' AND transdate = '2017-11-28' AND amt = -220.40

SELECT * 
FROM transactiontbl 
WHERE payee like "LEONARD%";

SELECT payee, SUM(amt) 
FROM transactiontbl 
WHERE payee like "LEONARD%";

SELECT  payee, SUM(amt) as totals, COUNT(payee) as nbr
FROM transactiontbl 
GROUP BY payee 
HAVING COUNT(payee) > 1



