SELECT DISTINCT communities.name as group_name,
AVG(communities_users.user_id) OVER name AS average,
MIN(profiles.birthdate) OVER name AS youngest,
MAX(profiles.birthdate) OVER name AS oldest,
SUM(communities_users.user_id) OVER name AS total_in_group,
SUM(profiles.user_id) OVER() AS total_in_system
FROM communities
      LEFT JOIN communities_users 
        ON communities_users.community_id = communities.id
      LEFT JOIN users 
      	ON communities_users.user_id = users.id 
      LEFT JOIN profiles 
      	ON profiles.user_id = users.id 
      WINDOW name AS (PARTITION BY communities.name);


