SELECT Sum(pages)
FROM books;

SELECT author_fname, author_lname, Sum(pages)
FROM books
GROUP BY author_fname, author_lname;