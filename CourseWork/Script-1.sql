DROP database IF EXISTS my_shop;
CREATE database my_shop;
use my_shop;

DROP TABLE IF EXISTS  categories;
CREATE TABLE categories (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL  COMMENT 'Название Категории',
	KEY (name)
	) COMMENT = 'Каталог товаров' ;

DROP TABLE IF EXISTS brands;
CREATE TABLE brands (
	brand_name PRIMARY KEY VARCHAR(255) NOT NULL COMMENT 'Название бренда',
	country VARCHAR(255) NOT NULL COMMENT 'Страна производитель',
	KEY (brand_name)
	) COMMENT = 'Бренды' ;
	
DROP IF EXISTS product_card;
CREATE TABLE product_card (
	id SERIAL PRIMARY KEY,
	name VARCHAR (200) NOT NULL,
	categories VARCHAR (100) NOT NULL,
	brand_name VARCHAR (100) NOT NULL,
	price NUMBER UNSIGNET NOT NULL,
	main_media_id BIGINT UNSIGNET NOT NULL COMMENT 'Превью товара',
	small_description VARCHAR (500) NOT NULL COMMENT 'Краткое описание товара',
	full_description_id BIGINT UNSIGNET NOT NULL COMMENT 'Полное описание товара',
	in_store_id  BIGINT UNSIGNET NOT NULL COMMENT 'Где хранится',
	KEY (name)
) COMMENT = 'Карточка товара';

DROP IF EXISTS shops;
CREATE TABLE shops (
	id SERIAL PRIMARY KEY,
	adress VARCHAR (255) NOT NULL,
	

)

DROP IF EXISTS storages;
CREATE TABLE storages (
	id SERIAL PRIMARY KEY;
	name VARCHAR (100) NOT NULL,
	adress VARCHAR (250) NOT NULL,
	
)


DROP IF EXISTS description;
CREATE TABLE description (
	id SERIAL PRIMARY KEY,
	note TEXT NOT NULL,
	weight INT UNSIGNET NOT NULL,
	release_year SMALLINT UNSIGNET NOT NULL,
	product_size VARCHAR (255) DEFAULT NULL,
	color VARCHAR (100) DEFAULT NULL,
	
)


DROP IF EXISTS images;
CREATE TABLE images (
	id SERIAL PRIMARY KEY,
	type_id INT UNSIGNET NOT NULL,
	img_size BIGINT UNSIGNET NOT NULL,
	name VARCHAR (255) NOT NULL
	
)


DROP IF EXISTS images_gallery;
CREATE TABLE images_gallery(
	image_id bigint unsigned NOT NULL,
  	product_card_id bigint unsigned NOT NULL,
  	PRIMARY KEY (image_id, product_card_id),
  	KEY fk_product_card_gallery (product_card_id),
  	CONSTRAINT fk_img_in_gallery FOREIGN KEY (image_id) REFERENCES images (id),
  	CONSTRAINT fk_gallery_in_product FOREIGN KEY (product_card_id) REFERENCES product_card (id)
	