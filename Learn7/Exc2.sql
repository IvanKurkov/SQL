-- �������� ������ ������� products � �������� catalogs, ������� ������������� ������.

select products.id, products.name, products.description, products.price, catalogs.name from products left outer join catalogs on products.catalog_id = catalogs.id;

-- ���

select id, name, description, price, (select name from catalogs where id = catalog_id) as catalog_name from products;


