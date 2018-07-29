SELECT author_lname
FROM books
ORDER BY author_lname;

SELECT title
FROM books
ORDER BY title;

SELECT author_lname
FROM books
ORDER BY author_lname DESC;

SELECT released_year
FROM books
ORDER BY released_year;

SELECT title, released_year, pages
FROM books
ORDER BY released_year;

SELECT title, pages
FROM books
ORDER BY released_year;


SELECT title, author_fname, author_lname
FROM books
ORDER BY 3;

SELECT author_fname, author_lname
FROM books
ORDER BY 2, 1;