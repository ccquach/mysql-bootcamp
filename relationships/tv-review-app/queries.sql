-- Get all series associated with reviews
SELECT 
	title, 
	rating
FROM series
INNER JOIN reviews
	ON series.id = reviews.series_id;
	
	
-- Get average ratings
SELECT
	title,
	AVG(rating) AS avg_rating
FROM series
INNER JOIN reviews
	ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;


-- Get reviewers associated with ratings
SELECT
	first_name,
	last_name,
	rating
FROM reviewers
INNER JOIN reviews
	ON reviewers.id = reviews.reviewer_id;


-- Get unreviewed series
SELECT title AS unreviewed_series
FROM series
LEFT JOIN reviews
	ON series.id = reviews.series_id
WHERE rating IS NULL;


-- Get average ratings of genres
SELECT
	genre,
	ROUND(AVG(rating), 2) AS avg_rating
FROM series
JOIN reviews
	ON series.id = reviews.series_id
GROUP BY genre;


-- Compile statistics on reviewers
SELECT
	first_name,
	last_name,
	COUNT(rating) AS COUNT,
	IFNULL(MIN(rating), 0) AS MIN,
	IFNULL(MAX(rating), 0) AS MAX,
	ROUND(IFNULL(AVG(rating), 0), 2) AS AVG,
	CASE
		WHEN COUNT(rating) > 0 THEN 'ACTIVE'
		ELSE 'INACTIVE'
	END AS STATUS
FROM reviewers
LEFT JOIN reviews
	ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

-- IF STATEMENT INSTEAD OF CASE STATEMENT
SELECT
	first_name,
	last_name,
	COUNT(rating) AS COUNT,
	IFNULL(MIN(rating), 0) AS MIN,
	IFNULL(MAX(rating), 0) AS MAX,
	ROUND(IFNULL(AVG(rating), 0), 2) AS AVG,
	IF(COUNT(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS
FROM reviewers
LEFT JOIN reviews
	ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

-- POWER USERS
SELECT
	first_name,
	last_name,
	COUNT(rating) AS COUNT,
	IFNULL(MIN(rating), 0) AS MIN,
	IFNULL(MAX(rating), 0) AS MAX,
	ROUND(IFNULL(AVG(rating), 0), 2) AS AVG,
	CASE
		WHEN COUNT(rating) >= 10 THEN 'POWER USER'
		WHEN COUNT(rating) > 0 THEN 'ACTIVE'
		ELSE 'INACTIVE'
	END AS STATUS
FROM reviewers
LEFT JOIN reviews
	ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;


-- Get all series ratings and rewiewers associated with each rating
SELECT
	title,
	rating,
	CONCAT(
		first_name,
		' ',
		last_name
	) AS reviewer
FROM series
INNER JOIN reviews
	ON series.id = reviews.series_id
INNER JOIN reviewers
	ON reviewers.id = reviews.reviewer_id;

