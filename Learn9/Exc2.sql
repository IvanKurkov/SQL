-- �������� �������������, ������� ������� �������� name �������� ������� �� ������� products � ��������������� �������� �������� name �� ������� catalogs.
use shop;
create view my_view as
	select name, 
	(select name from catalogs where catalogs.id = catalog_id) as catalog_name
	from products