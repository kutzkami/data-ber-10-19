-- 1 --

SELECT 
	district_id as unique_district_id,
	COUNT(client_id)
FROM bank.client
WHERE district_id < 10
GROUP BY 1
ORDER BY 1 ASC;


-- 2 --
SELECT 
	`type`,
	COUNT(card_id)	
FROM bank.card
GROUP BY 1
LIMIT 10;

-- 3 --
SELECT
	account_id,
	SUM(`amount`)
FROM loan
GROUP BY account_id
ORDER BY 2 DESC
LIMIT 10;

-- 4 --
SELECT
	`date`,
	COUNT(loan_id)
FROM bank.loan
WHERE `date` < 930907
GROUP BY 1
ORDER BY 1 DESC;

-- 5 -- not really finished
SELECT 
	 `date`,
	  duration
	 -- COUNT(loan_id)	 
FROM bank.loan
WHERE `date` REGEXP '^9712'
-- GROUP BY duration
ORDER BY 1,2

-- 6 --
SELECT 
	account_id,
	`type`,
	SUM(amount) AS total_amount
FROM bank.trans
LIMIT 10;
-- WHERE account_id = 396
-- GROUP BY `type`;
;
SELECT 
	account_id,
	`type`,
	SUM(amount) AS total_amount

FROM bank.trans
WHERE account_id = 396
GROUP BY 2
LIMIT 10;

-- 7 --

SELECT 
	account_id,	
	CASE
		WHEN `type` = 'PRIJEM' THEN 'INCOMING'
		WHEN `type` = 'VYDAJ' THEN 'OUTGOING'
		ELSE NULL		
	END			AS type_english,
	SUM(amount) AS total_amount

FROM bank.trans
WHERE account_id = 396
GROUP BY 2
LIMIT 10;

-- 8 --
SELECT account_id,
    FLOOR(SUM(IF(type='PRIJEM',amount,0))) AS income,  -- start with if, if type is pirjem take the amount else 0 (this is important ALWAYS use else value, you want to sum the amount as this is what is asked and FLOOR is to round it 
    FLOOR(SUM(IF(type='VYDAJ',amount,0))) AS outcome,
    FLOOR(SUM(IF(type='PRIJEM',amount,0))) - FLOOR(SUM(IF(type='VYDAJ',amount,0))) AS diff
FROM trans
WHERE account_id = 396
GROUP BY account_id; 

-- 9 --

SELECT account_id,
    FLOOR(SUM(IF(type='PRIJEM',amount,0))) - FLOOR(SUM(IF(type='VYDAJ',amount,0))) AS diff
FROM bank.trans
-- WHERE account_id = 396
GROUP BY account_id
ORDER BY 2 DESC
LIMIT 10;
