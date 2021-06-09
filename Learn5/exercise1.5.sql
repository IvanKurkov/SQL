/* (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса.
 *  SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.*/


SELECT * FROM users WHERE id IN (5,1,2) ORDER BY field(id, 5,1,2);