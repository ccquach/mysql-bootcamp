CREATE TABLE people
(
	name VARCHAR(100),
	birthdate DATE,
	birthtime TIME,
	birthdt DATETIME
);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Toaster', CURDATE(), CURTIME(), NOW());

SELECT * FROM people;


SELECT name, birthdate, DAY(birthdate)
FROM people;

SELECT name, birthdate, DAYNAME(birthdate)
FROM people;

SELECT name, birthdate, DAYOFWEEK(birthdate)
FROM people;

SELECT name, birthdate, DAYOFYEAR(birthdate)
FROM people;

SELECT
	name,
	birthdt,
	CONCAT
	(
		MONTHNAME(birthdt),
		' ',
		DAY(birthdt),
		', ',
		YEAR(birthdt)
	) as 'full date'
FROM people;

SELECT
	name, 
	birthdt,
	DATE_FORMAT(birthdt, '%M %D, %Y') AS 'full date'
FROM people;

SELECT
	name, 
	birthdt,
	DATE_FORMAT(birthdt, 'Born on a %W') AS 'birthday'
FROM people;

SELECT
	name, 
	birthdt,
	DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') AS 'full date'
FROM people;



SELECT
	name,
	birthdate,
	DATEDIFF(NOW(), birthdate)
FROM people;


SELECT
	birthdt,
	DATE_ADD(birthdt, INTERVAL 1 MONTH) AS 'add 1 month'
FROM people;

SELECT
	birthdt,
	birthdt + INTERVAL 1 MONTH AS 'add 1 month'
FROM people;

SELECT
	birthdt,
	birthdt - INTERVAL 1 MONTH AS 'add 1 month'
FROM people;

SELECT
	birthdt,
	birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR
FROM people;