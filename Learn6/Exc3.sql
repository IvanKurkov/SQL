/*3) ѕодсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
*/

use vk;
SELECT COUNT(user_id) FROM (
	SELECT user_id, (SELECT birthday 
                     FROM profiles as P 
					 WHERE P.user_id = L.user_id) as birthday
	FROM likes as L
    ORDER BY birthday DESC 
    LIMIT 10
) AS T;