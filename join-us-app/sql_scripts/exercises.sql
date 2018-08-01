-- Earliest date a user joined
SELECT 
	DATE_FORMAT(
		MIN(created_at), 
		'%M %D %Y'
	) AS earliest_date
FROM users;

-- Find email OF first (earliest) user
SELECT *
FROM users
ORDER BY created_at
LIMIT 1;

SELECT *
FROM users
WHERE created_at = (
	SELECT MIN(created_at) 
	FROM users
);

-- Users according TO month they joined
SELECT
	MONTHNAME(created_at) AS month_name,
	COUNT(*) AS num_users
FROM users
GROUP BY month_name
ORDER BY num_users DESC;

-- Number of users with Yahoo emails
SELECT
	COUNT(*) AS yahoo_users
FROM users
WHERE email LIKE '%@yahoo.com';

-- Calculate number of users for each email host
SELECT
	CASE
		WHEN email LIKE '%@gmail.com' THEN 'gmail'
		WHEN email LIKE '%@yahoo.com' THEN 'yahoo'
		WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
		ELSE 'other'
	END AS provider,
	COUNT(*) AS total_users
FROM users
GROUP BY provider
ORDER BY total_users DESC;



