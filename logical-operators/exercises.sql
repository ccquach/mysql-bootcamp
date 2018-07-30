SELECT 10 != 10;
SELECT 15 > 14 && 99 - 5 <= 94;
SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;


SELECT title, released_year
FROM books
WHERE released_year < 1980;


SELECT title, author_lname
FROM books
WHERE author_lname IN ('eggers', 'chabon');


SELECT *
FROM books
WHERE author_lname = 'lahiri' && released_year > 2000;


SELECT title, pages
FROM books
WHERE pages BETWEEN 100 AND 200;


SELECT title, author_lname
FROM books
WHERE author_lname LIKE 'c%' ||
		author_lname LIKE 's%';
		
SELECT title, author_lname
FROM books
WHERE SUBSTRING(author_lname, 1, 1) IN ('c', 's');


SELECT title, author_lname,
	CASE
		WHEN title LIKE '%stories%' THEN 'Short Stories'
		WHEN title = 'Just Kids' || title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
		ELSE 'Novel'
	END AS TYPE
FROM books;


SELECT author_fname, author_lname, 
	CONCAT(
		COUNT(*),
		' ',
		CASE
			WHEN COUNT(*) = 1 THEN 'book'
			ELSE 'books'
		END
	) AS COUNT
FROM books
GROUP BY author_lname, author_fname
ORDER BY author_lname;

SELECT author_fname, author_lname, 
	CASE
		WHEN COUNT(*) = 1 THEN '1 book'
		ELSE CONCAT(COUNT(*), ' books')
	END AS COUNT
FROM books
GROUP BY author_lname, author_fname
ORDER BY author_lname;