/*Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.*/
use vk;
SELECT (SELECT firstname FROM users where id = user_id) firstname,  SUM(T.msgc) AS msgc
FROM(
	SELECT from_user_id as user_id, COUNT(*) as msgc  FROM messages 
	GROUP BY from_user_id
	UNION ALL
	SELECT user_id, COUNT(*)  FROM likes 
	GROUP BY user_id
	UNION ALL

	SELECT user_id, COUNT(*)  FROM communities_users
	GROUP BY user_id
) AS T
GROUP BY firstname
ORDER BY msgc
LIMIT 10;

-- Брал пользователей которые мало пишут и мало лайкают.