SELECT UPPER('Hello World');
SELECT LOWER('Hello World');

SELECT UPPER(title)
FROM books;

SELECT 
  CONCAT (
    'MY FAVORITE BOOK IS THE ',
    UPPER(title)
  )
FROM books;