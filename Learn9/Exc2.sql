-- Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
use shop;
create view my_view as
	select name, 
	(select name from catalogs where catalogs.id = catalog_id) as catalog_name
	from products