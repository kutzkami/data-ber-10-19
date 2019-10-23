-- Chalenge 1

SELECT *	
FROM authors a
LIMIT 10;

SELECT *	
FROM titleauthor ta
LIMIT 10;

SELECT *	
FROM titles
LIMIT 10;

SELECT *	
FROM sales
LIMIT 10;

-- STEP 1--
SELECT 
	a.au_id 	as 'AUTOR ID',
	a.au_lname	as 'LAST NAME',
	a.au_fname	as 'FIRST NAME',
 	ta.title_id as 'TITLE ID',
	s.qty 		as 'ITEMS SOLD',
	t.price 	as 'PRICE',
	t.royalty 	as 'TITLE ROYALTY',
	t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100	as 'SALES ROYALIY'
FROM authors a
	JOIN titleauthor ta
	ON a.au_id = ta.au_id
	JOIN sales s
	ON ta.title_id = s.title_id
	JOIN titles t
	ON s.title_id = t.title_id
ORDER BY 8 DESC
LIMIT 10;
	
-- STEP 2

SELECT 
	a.au_id 	as 'AUTOR ID',
	a.au_lname	as 'LAST NAME',
	a.au_fname	as 'FIRST NAME',
 	ta.title_id as 'TITLE ID',
 	t.advance,
	FLOOR(SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100)) as 'sum SALES ROYALIY'
FROM authors a
	JOIN titleauthor ta
	ON a.au_id = ta.au_id
	JOIN sales s
	ON ta.title_id = s.title_id
	JOIN titles t
	ON s.title_id = t.title_id
GROUP BY 1,4
LIMIT 10;

-- STEP 3

SELECT 
	a.au_id 	as 'AUTOR ID',
 	ta.title_id as 'TITLE ID',
	FLOOR(SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100)) as 'sum SALES ROYALIY',
	FLOOR(t.advance) AS 'ADVANCE',
	FLOOR(t.advance + SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) ) AS 'PROFIT'
FROM authors a
	JOIN titleauthor ta
	ON a.au_id = ta.au_id
	JOIN sales s
	ON ta.title_id = s.title_id
	JOIN titles t
	ON s.title_id = t.title_id
GROUP BY 1,2
ORDER BY 5 DESC
LIMIT 10;

-- Aurora 

SELECT 
	a.au_id 	as 'AUTOR ID',
 	ta.title_id as 'TITLE ID',
	FLOOR(SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100)) as 'sum SALES ROYALIY',
	FLOOR(t.advance) AS 'ADVANCE',
	FLOOR(t.advance + SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) ) AS 'PROFIT'
FROM authors a
	JOIN titleauthor ta
	ON a.au_id = ta.au_id
	JOIN sales s
	ON ta.title_id = s.title_id
	JOIN titles t
	ON s.title_id = t.title_id
GROUP BY 1,2
ORDER BY 5 DESC
LIMIT 10;


-- challenge 3 , cause 2 was alternative to 1 and i skiped it

 CREATE TABLE most_profiting_authorss AS (

 SELECT 
	a.au_id 	as 'AUTOR ID',
 	ta.title_id as 'TITLE ID',
	FLOOR(SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100)) as 'sum SALES ROYALIY',
	FLOOR(t.advance) AS 'ADVANCE',
	FLOOR(t.advance + SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) ) AS 'PROFIT'
FROM authors a
	JOIN titleauthor ta
	ON a.au_id = ta.au_id
	JOIN sales s
	ON ta.title_id = s.title_id
	JOIN titles t
	ON s.title_id = t.title_id
GROUP BY 1,ta.title_id
ORDER BY 5 DESC
LIMIT 10

);

SELECT *
FROM most_profiting_authorss;





SELECT
	step.AUTOR_ID,
	sum(step.sum_SALES_ROYALIY + step.advance)	
FROM (
SELECT 
	a.au_id 	as 'AUTOR_ID',
	a.au_lname	as 'LAST NAME',
	a.au_fname	as 'FIRST NAME',
 	ta.title_id as 'TITLE ID',
 	t.advance,
	SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) as sum_SALES_ROYALIY
FROM authors a
	JOIN titleauthor ta
		ON a.au_id = ta.au_id
	JOIN sales s
		ON ta.title_id = s.title_id
	JOIN titles t
		ON s.title_id = t.title_id
GROUP BY 1,4
LIMIT 10) step

GROUP BY 1;
-- ORDER BY 2 DESC
-- LIMIT 3;


SELECT
	step.AUTOR_ID,
	sum(step.sum_SALES_ROYALIY + step.advance)	
FROM (;


SELECT 
	a.au_id 	as 'AUTOR_ID',
 	ta.title_id as 'TITLE ID',
 	t.advance,
	SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) as sum_SALES_ROYALIY
FROM titles t
	JOIN titleauthor ta
		ON t.au_id = ta.au_id
	JOIN sales s
		ON t.title_id = s.title_id
GROUP BY 1,4
LIMIT 10





