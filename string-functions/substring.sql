SELECT SUBSTRING('Hello World', 1, 4);

SELECT SUBSTRING('Hello World', 7);

SELECT SUBSTRING('Hello World', -3);



SELECT title FROM books;

SELECT CONCAT
	(
		SUBSTRING(title, 1, 10), 
		'...'
	) AS 'short title'
FROM books;

SELECT CONCAT
	(
		SUBSTR(title, 1, 10), 
		'...'
	) AS 'short title'
FROM books;