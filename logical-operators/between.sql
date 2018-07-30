SELECT *
FROM books
WHERE released_year >= 2004
AND released_year <= 2015;

SELECT *
FROM books
WHERE released_year BETWEEN 2004 AND 2015;

SELECT *
FROM books
WHERE released_year NOT BETWEEN 2004 AND 2015
ORDER BY released_year;