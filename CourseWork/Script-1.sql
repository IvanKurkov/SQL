drop database if exists my_shop;
create database my_shop;
use my_shop;

drop table if exists categories;
create table categories (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Название Категории'
	) COMMENT = 'Каталог товаров' ;

drop table if exists brands;
create table brands (
	id SERIAL PRIMARY KEY,
	brand_name VARCHAR(255) COMMENT 'Название бренда',
	country VARCHAR(255) COMMENT 'Страна производитель'
	) COMMENT = 'Бренды' ;