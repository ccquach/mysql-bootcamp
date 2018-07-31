-- Reward (5) users who have been around the longest
SELECT *
FROM users
ORDER BY created_at
LIMIT 5;

-- What day of the week do most users register on?
SELECT
	DAYNAME(created_at) AS day_of_week,
	COUNT(id) AS num_users
FROM users
GROUP BY day_of_week
ORDER BY num_users DESC;

-- Target inactive users (no photos) with email campaign
SELECT
	username
FROM users
LEFT JOIN photos
	ON users.id = photos.user_id
GROUP BY username
HAVING COUNT(photos.id) = 0;

SELECT
	username
FROM users
LEFT JOIN photos
	ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- Who posted single-most liked photo?
SELECT
	username,
	image_url,
	COUNT(photo_id) AS likes
FROM likes
JOIN photos
	ON photos.id = likes.photo_id
JOIN users
	ON users.id = photos.user_id
GROUP BY photo_id
ORDER BY likes DESC
LIMIT 1;

SELECT
	username,
	image_url,
	MAX(total) AS most_likes
FROM
(
	SELECT 
		username,
		image_url, 
		COUNT(*) AS total
	FROM likes
	JOIN photos
		ON photos.id = likes.photo_id
	JOIN users
		ON photos.user_id = users.id
	GROUP BY photo_id
	ORDER BY total DESC
) AS a;

-- How many times does the average user post?
SELECT
(
	(SELECT COUNT(*) FROM photos) /
	(SELECT COUNT(*) FROM users)
) AS avg_posts;

-- What are the (5) most used hashtags?
SELECT
	tag_name,
	COUNT(*) AS total
FROM tags
JOIN photo_tags
	ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;

-- Find bots: users who have liked every photo
SELECT 
	username
FROM users
JOIN likes
	ON users.id = likes.user_id
GROUP BY user_id
HAVING COUNT(*) = (SELECT COUNT(*) FROM photos);





