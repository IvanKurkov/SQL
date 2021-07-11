/* Подсчитайте средний возраст пользователей в таблице users. */

SELECT avg((to_days(now()) - to_days(created_at)) DIV  365.25) AS avg_age FROM users;