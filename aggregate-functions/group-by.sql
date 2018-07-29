SELECT author_lname, COUNT(*)
FROM books
GROUP BY author_lname;

SELECT author_fname, author_lname, COUNT(*)
FROM books
GROUP BY author_lname, author_fname;

SELECT released_year, COUNT(*)
FROM books
GROUP BY released_year
ORDER BY released_year;

SELECT
  CONCAT
  (
    'In ',
    released_year,
    ', ',
    COUNT(*),
    ' book(s) released'
  ) AS 'books released'
FROM books
GROUP BY released_year
ORDER BY released_year;