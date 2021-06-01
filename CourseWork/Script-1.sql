drop database if exists my_shop;
create database my_shop;
use my_shop;

drop table if exists categories;
create table categories (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT '�������� ���������'
	) COMMENT = '������� �������' ;

drop table if exists brands;
create table brands (
	id SERIAL PRIMARY KEY,
	brand_name VARCHAR(255) COMMENT '�������� ������',
	country VARCHAR(255) COMMENT '������ �������������'
	) COMMENT = '������' ;