/* (по желанию) »з таблицы users необходимо извлечь пользователей, 
 * родившихс€ в августе и мае. ћес€цы заданы в виде списка английских названий (may, august)*/


SELECT * FROM users WHERE b_data RLIKE 'august' OR b_data RLIKE 'may';