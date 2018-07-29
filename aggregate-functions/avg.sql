SELECT Avg(released_year)
FROM books;

SELECT Avg(pages)
FROM books;


SELECT released_year, Avg(stock_quantity)
FROM books
GROUP BY released_year;

SELECT author_fname, author_lname, Avg(pages)
FROM books
GROUP BY author_lname, author_fname;