SELECT REPLACE
	(
		'Hello World',
		'Hell',
		'%$#@'
	);
	
SELECT REPLACE
	(
		'Hello World',
		'l',
		'7'
	);
	
SELECT
	REPLACE(
		'cheese bread coffee milk',
		' ',
		' and '
	);
	
	
	
SELECT 
	SUBSTRING(
		REPLACE(title, 'e', '3'), 
		1, 
		10
	) AS 'weird string'
FROM books;