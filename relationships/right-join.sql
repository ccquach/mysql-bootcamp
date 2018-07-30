SELECT first_name, last_name, order_date, amount
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id;


SELECT first_name, last_name, order_date, amount
FROM orders
RIGHT JOIN customers
ON customers.id = orders.customer_id;


-- ON DELETE CASCADE
CREATE TABLE customers 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100)
);

CREATE TABLE orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	order_date DATE,
	amount DECIMAL(8,2),
	customer_id INT,
	FOREIGN KEY(customer_id) 
		REFERENCES customers(id)
		ON DELETE CASCADE
);

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
DELETE FROM customers
WHERE email = 'george@gmail.com';

SELECT * FROM customers;
SELECT * FROM orders;