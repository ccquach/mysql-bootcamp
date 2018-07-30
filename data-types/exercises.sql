CREATE TABLE inventory
(
	item_name VARCHAR(255),
	price DECIMAL(8,2),
	quantity INT
);

SELECT CURTIME();

SELECT CURDATE();

SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%w');

SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');

SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');

SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

CREATE TABLE tweets
(
	content VARCHAR(140),
	username VARCHAR(20),
	created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tweets (content, username)
VALUES ('this is my first tweet', 'coltscat');

INSERT INTO tweets (content, username)
VALUES ('this is my second tweet', 'coltscat');