SELECT COUNT(*)
FROM books;

SELECT COUNT(DISTINCT author_fname)
FROM books;

SELECT COUNT(DISTINCT author_fname, author_lname)
FROM books;


SELECT COUNT(*)
FROM books
WHERE title LIKE '%the%';