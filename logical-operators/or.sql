SELECT *
FROM books
WHERE author_lname = 'eggers' || 
released_year > 2010 OR
stock_quantity > 100;