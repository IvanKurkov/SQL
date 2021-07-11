/*
 Пусть задан некоторый пользователь. 
Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
 */
USE vk;

SELECT (SELECT firstname from users WHERE id = best_fr_id) AS best_fr,
        MAX(count_messages) as count_messages 
FROM (
SELECT best_fr_id, COUNT(*) AS count_messages FROM (
	SELECT to_user_id AS best_fr_id FROM messages WHERE from_user_id = 1
	union ALL
	SELECT from_user_id  FROM messages WHERE to_user_id = 1
) AS T
GROUP BY best_fr_id
) AS FD 
GROUP BY best_fr
ORDER BY  count_messages DESC
LIMIT 1;