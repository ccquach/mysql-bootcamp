SELECT Min(released_year)
FROM books;

SELECT Min(pages)
FROM books;

SELECT Max(pages)
FROM books;


SELECT Max(pages), title
FROM books;

SELECT title, pages
FROM books
WHERE pages = (SELECT Max(pages) FROM books);


SELECT title, pages
FROM books
ORDER BY pages DESC
LIMIT 1;


SELECT author_fname, author_lname, Min(released_year)
FROM books
GROUP BY author_fname, author_lname;

SELECT author_fname, author_lname, Max(pages)
FROM books
GROUP BY author_fname, author_lname;

SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  Max(pages) AS 'longest book'
FROM books
GROUP BY author_fname, author_lname;