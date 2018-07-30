SELECT title, released_year
FROM books
WHERE released_year >= 2000
ORDER BY released_year;

SELECT title, stock_quantity
FROM books
WHERE stock_quantity >= 100;


SELECT 99 < 1;

SELECT 'a' < 'b';
SELECT 'A' = 'a';