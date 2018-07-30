SELECT *
FROM books
WHERE author_lname = 'eggers' && 
released_year > 2000;

SELECT *
FROM books
WHERE author_lname = 'eggers' 
AND released_year > 2010;

SELECT *
FROM books
WHERE author_lname = 'eggers'
AND released_year > 2010
AND title LIKE '%novel%';