SELECT *
FROM orders
WHERE customer_id IN
(
	SELECT id
	FROM customers
	WHERE first_name = 'boy'
	AND last_name = 'george'	
);

-- implicit
SELECT first_name, last_name, order_date, amount
FROM customers, orders
WHERE customers.id = orders.customer_id;

-- explicit
SELECT first_name, last_name, order_date, amount
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id;


SELECT *
FROM orders
JOIN customers
ON orders.customer_id = customers.id;


SELECT first_name, last_name, SUM(amount) AS total_spent
FROM customers
JOIN orders
	ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;