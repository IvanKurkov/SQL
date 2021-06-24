-- В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

start transaction;
insert into sample.users (select * from shop.users where id = 1);
delete from shop.users where id = 1;
commit