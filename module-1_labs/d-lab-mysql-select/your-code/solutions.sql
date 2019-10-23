-- --------------------------------------------------- challenge 1 : 
-- merge columns from 2 differtent table, there is no column overlap but thats present in the 3rd table called titleauthor


SELECT 
	a.au_id 		AS 'AUTHOR ID',
	a.au_lname 		AS 'LAST NAME',
	a.au_fname		AS 'FIRST NAME',
	t.title			AS 'TITLE',		
	p.pub_name		AS 'PUBLISHER'

FROM authors a
	INNER JOIN
		titleauthor ta -- first join the table that has columns which will help joining columns from other tables
	ON a.au_id = ta.au_id	-- match it with the right id from where you want to add a.au_id what you want ta.au_id <- this has to have the same value
	INNER JOIN
		titles t -- once you have joined it you can add the titles column based on the title_id match between the tables
	ON ta.title_id = t.title_id -- <= this has to match
	INNER JOIN publishers p -- basically the same, now i want to add publisher names from the publisher table based on matching the pub_id
	ON t.pub_id = p.pub_id

		
LIMIT 100;

    
-- -------------------------------------------- chalenge 2


SELECT 
	a.au_id 		AS 'AUTHOR ID',
	a.au_lname 		AS 'LAST NAME',
	a.au_fname		AS 'FIRST NAME',
	COUNT(author_)	AS 'TITLE COUNT',		
	p.pub_name		AS 'PUBLISHER'

FROM authors a
	INNER JOIN
		titleauthor ta -- first join the table that has columns which will help joining columns from other tables
	ON a.au_id = ta.au_id	-- match it with the right id from where you want to add a.au_id what you want ta.au_id <- this has to have the same value
	INNER JOIN
		titles t -- once you have joined it you can add the titles column based on the title_id match between the tables
	ON ta.title_id = t.title_id -- <= this has to match
	INNER JOIN publishers p -- basically the same, now i want to add publisher names from the publisher table based on matching the pub_id
	ON t.pub_id = p.pub_id
GROUP BY 1,5 -- how many publications each author has in the publisher, so i group by the autor id and the publisher
ORDER BY 1 DESC
		
LIMIT 100;

-- ------------------------------------------- challenge 3 --------------------------------
-- BEST SELLING AUTHORS
SELECT 
	a.au_id 						AS 'AUTHOR ID',
	a.au_lname 						AS 'LAST NAME',
	a.au_fname						AS 'FIRST NAME',
	SUM(a.au_id)					AS 'TOTAL'
FROM authors a
GROUP BY 1
ORDER BY TOTAL DESC
LIMIT 3;


-- ------------------------------------------- challenge 4 --------------------------------
-- BEST SELLING AUTHORS RANKING

SELECT 
	a.au_id 						AS 'AUTHOR ID',
	a.au_lname 						AS 'LAST NAME',
	a.au_fname						AS 'FIRST NAME',
	SUM(a.au_id)					AS 'TOTAL'
FROM authors a
GROUP BY 1
ORDER BY TOTAL DESC;