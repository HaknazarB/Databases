
SELECT SUM(likes) as total_likes
FROM (SELECT COUNT(profiles.user_id) as likes
			FROM profiles
			LEFT JOIN likes
          		ON likes.target_id = profiles.user_id
-- COUNT(*) 
-- FROM
-- likes
AND target_type_id = 2
GROUP BY target_id
ORDER BY birthdate DESC
LIMIT 10) AS likes_per_user;