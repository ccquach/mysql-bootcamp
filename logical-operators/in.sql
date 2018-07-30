SELECT title, author_lname
FROM BOOKS
WHERE
	author_lname = 'carver' ||
	author_lname = 'lahiri' ||
	author_lname = 'smith';

SELECT title, author_lname
FROM books
WHERE author_lname IN (
	'carver',
	'lahiri',
	'smith'
);

SELECT title, released_year
FROM books
WHERE released_year IN (2017, 1985);



SELECT title, released_year
FROM books
WHERE released_year >= 2000
AND released_year NOT IN (
	2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016
)
ORDER BY released_year;

SELECT title, released_year
FROM books
WHERE released_year >= 2000
AND released_year % 2 != 0
ORDER BY released_year;