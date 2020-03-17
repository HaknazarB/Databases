CREATE TEMPORARY TABLE IF NOT EXISTS gender
SELECT likes.user_id,
		profiles.sex 
	-- FROM 
		-- profiles as sex 
	FROM likes
		JOIN profiles 
			ON profiles.user_id = likes.user_id;

SELECT 
	CASE (sex)                      
      WHEN 'm' THEN 'man'
      WHEN 'f' THEN 'women'
 	END as sex, 
 	
 	COUNT(sex) AS likes_quantity
	
 	FROM gender 
 		GROUP BY sex 
 		ORDER BY sex DESC;