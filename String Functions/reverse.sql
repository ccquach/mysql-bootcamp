SELECT REVERSE('Hello World');

SELECT
	CONCAT(
		'woof',
		REVERSE('woof')
	);
	
SELECT 
	REVERSE (
		author_fname
	)
FROM books;

SELECT
	CONCAT(
		author_fname,
		REVERSE(author_fname)
	)
FROM books;