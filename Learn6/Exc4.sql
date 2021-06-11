/*Определить кто больше поставил лайков (всего) - мужчины или женщины? */

USE vk;

SELECT sex FROM (
SELECT sex, COUNT((SELECT COUNT(*) FROM likes as L where L.user_id = P.user_id)) as gender_likes_count FROM profiles as P
WHERE sex = 'm'
GROUP BY sex
UNION ALL
SELECT sex, COUNT((SELECT COUNT(*) FROM likes as L where L.user_id = P.user_id)) FROM profiles as P
WHERE sex = 'f'
GROUP BY sex
) AS T
GROUP BY sex
ORDER BY MAX(gender_likes_count) DESC
LIMIT 1;

