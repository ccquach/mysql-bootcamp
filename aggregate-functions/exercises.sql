SELECT COUNT(*) AS 'total_books'
FROM books;


SELECT released_year, COUNT(*) AS 'books'
FROM books
GROUP BY released_year;


SELECT Sum(stock_quantity) AS 'total_stock'
FROM books;


SELECT author_fname, author_lname, Avg(released_year)
FROM books
GROUP BY author_fname, author_lname;


SELECT 
  CONCAT(author_fname, ' ', author_lname) AS author, 
  pages
FROM books
WHERE pages = (SELECT Max(pages) FROM books);

SELECT 
  CONCAT(author_fname, ' ', author_lname) AS author, 
  pages
FROM books
ORDER BY pages DESC
LIMIT 1;


SELECT
  released_year AS year,
  COUNT(*) AS 'num_books',
  Avg(pages) AS 'avg_pages'
FROM books
GROUP BY released_year
ORDER BY released_year;