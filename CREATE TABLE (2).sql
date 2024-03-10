-- пользователь (покупатель/продавец) +
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(120) NOT NULL UNIQUE,
	password VARCHAR(50) NOT NULL,
	phone VARCHAR(15) UNIQUE,
	type_id INT NOT NULL,
	created_at TIMESTAMP
);

CREATE TABLE user_types (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) UNIQUE NOT NULL
);

INSERT INTO user_types (name) VALUES
	('seller'),
	('buyer');
	
-- продукт +
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	price MONEY NOT NULL,
	description TEXT NOT NULL,
	photo_id INT NOT NULL,
	user_seller_id INT NOT NULL,
	catalog_id INT NOT NULL,
	group_id INT NOT NULL,
	created_at TIMESTAMP
);

-- групы продуктов +
CREATE TABLE product_groups (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO product_groups (name) VALUES
	('Coffee'),
	('Tea');

-- каталог продуктов +
CREATE TABLE product_catalogs (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO product_catalogs (name) VALUES
	('drinks');

-- фото продукта +
CREATE TABLE product_photos (
	id SERIAL PRIMARY KEY,
	url VARCHAR(250) UNIQUE NOT NULL,
	size INT NOT NULL,
	product_id INT NOT NULL,
	created_at TIMESTAMP
);

-- лайки
CREATE TABLE likes_products (
  id SERIAL PRIMARY KEY,
  user_buyer_id INT NOT NULL,
  product_id INT NOT NULL
);

 CREATE TABLE likes_seller (
  id SERIAL PRIMARY KEY,
  user_buyer_id INT NOT NULL,
  user_seller_id INT NOT NULL
);

-- отзывы +
CREATE TABLE feedbacks (
	id SERIAL PRIMARY KEY,
	text TEXT NOT NULL,
	user_buyer_id INT NOT NULL,
	product_id INT NOT NULL,
	created_at TIMESTAMP
);

-- корзина +
CREATE TABLE baskets_product (
	id SERIAL PRIMARY KEY,
	quantity INT NOT NULL,
	product_id INT NOT NULL,
	basket_id INT NOT NULL
);

CREATE TABLE baskets (
	id SERIAL PRIMARY KEY,
	user_buyer_id INT NOT NULL,
	created_at TIMESTAMP
);

-- заказ +
CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	user_buyer_id INT NOT NULL,
	order_status_id INT NOT NULL,
	payment_method_id INT NOT NULL,
	address_id INT NOT NULL,
	created_at TIMESTAMP
);

CREATE TABLE order_products (
	id SERIAL PRIMARY KEY,
	order_id INT NOT NULL,
	product_id INT NOT NULL,
	price MONEY NOT NULL,
	quantity INT NOT NULL
);

-- способ оплаты заказа +
CREATE TABLE payment_method (
	id SERIAL PRIMARY KEY,
	type VARCHAR(30) UNIQUE NOT NULL
);

INSERT INTO payment_method (type) VALUES
	('cash'),
	('cashless');

-- статус оплаты заказа
CREATE TABLE payment_status (
	id SERIAL PRIMARY KEY,
	status VARCHAR(50) NOT NULL
);

INSERT INTO payment_status (status) VALUES
	('paid'),
	('not paid');

-- адрес
CREATE TABLE address (
	id SERIAL PRIMARY KEY,
	index INT NOT NULL,
	country VARCHAR(50) NOT NULL,
	region VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	street VARCHAR(50) NOT NULL,
	house VARCHAR(50) NOT NULL
);

SELECT * FROM products;

------------------------------------------------------------------------------------------------------------
--Создать два сложных (многотабличных) запроса с использованием подзапросов.

--Вывод всех покупателей
SELECT 
	CONCAT(first_name, ' ' , last_name) AS user,
	email,
	type_id 
FROM users 
	WHERE type_id = (SELECT id	FROM user_types WHERE name = 'buyer');
	
--Вывести фото продукта и отсортировать по убыванию цены
SELECT 
	(SELECT url FROM product_photos WHERE id = products.photo_id ) AS photo,
	name, 
	price 
FROM products 
	ORDER BY price DESC;
	
------------------------------------------------------------------------------------------------------------
--Создать два сложных запроса с использованием объединения 
--JOIN и без использования подзапросов.

--Запрос 1: Найти все продукты, которые лайкнули покупатели, но не лайкнули их продавцы.
SELECT products.id, products.name, products.price
FROM products
JOIN likes_products ON products.id = likes_products.product_id
LEFT JOIN likes_seller ON likes_products.user_buyer_id = likes_seller.user_buyer_id AND products.user_seller_id = likes_seller.user_seller_id
WHERE likes_seller.id IS NULL;

--Запрос 2: Найти все продукты в категории "Чай", у которых больше 1 лайков и отсортированные по количеству лайков в порядке убывания.
SELECT products.id, products.name, products.price, COUNT(likes_products.id) AS likes_count
FROM products
JOIN product_groups ON products.group_id = product_groups.id
JOIN likes_products ON products.id = likes_products.product_id
WHERE product_groups.name = 'Tea'
GROUP BY products.id
HAVING COUNT(likes_products.id) > 1
ORDER BY likes_count DESC;

------------------------------------------------------------------------------------------------------------
--Создать два представления, в основе которых лежат сложные запросы.

--Представление показывает самые популярные продукты, отсортированные по количеству лайков.

CREATE VIEW popular_products AS
SELECT products.id, products.name, products.price, products.description, product_photos.url, COUNT(likes_products.id) AS likes_count
FROM products
JOIN product_photos ON products.photo_id = product_photos.id
LEFT JOIN likes_products ON products.id = likes_products.product_id
GROUP BY products.id, product_photos.url
ORDER BY likes_count DESC;

--Представление показывает отзывы, оставленные покупателями продавцу с заданным ID.

CREATE VIEW seller_feedback AS
SELECT users.first_name, users.last_name, feedbacks.text, feedbacks.product_id, feedbacks.created_at
FROM feedbacks
JOIN users ON feedbacks.user_buyer_id = users.id
JOIN products ON feedbacks.product_id = products.id
WHERE products.user_seller_id = 58;

------------------------------------------------------------------------------------------------------------

--Создать триггер.

--При каждом добавлении новой записи в таблицы users, products,
--product_photos, feedbacks, baskets или orders,
--функция `insert_created_at()` будет вызываться автоматически,
--и текущее время будет сохраняться в новой записи в столбце `created_at`.
CREATE OR REPLACE FUNCTION insert_created_at() 
RETURNS TRIGGER 
AS $$
BEGIN
    NEW.created_at = NOW();
    RETURN NEW; 
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER insert_created_at_users 
BEFORE INSERT ON users 
FOR EACH ROW 
EXECUTE FUNCTION insert_created_at();

CREATE TRIGGER insert_created_at_products 
BEFORE INSERT ON products 
FOR EACH ROW 
EXECUTE FUNCTION insert_created_at();

CREATE TRIGGER insert_created_at_product_photos
BEFORE INSERT ON product_photos
FOR EACH ROW
EXECUTE FUNCTION insert_created_at();

CREATE TRIGGER insert_created_at_feedbacks
BEFORE INSERT ON feedbacks
FOR EACH ROW
EXECUTE FUNCTION insert_created_at();

CREATE TRIGGER insert_created_at_baskets
BEFORE INSERT ON baskets
FOR EACH ROW
EXECUTE FUNCTION insert_created_at();

CREATE TRIGGER insert_created_at_orders
BEFORE INSERT ON orders
FOR EACH ROW
EXECUTE FUNCTION insert_created_at();

------------------------------------------------------------------------------------------------------------

--

EXPLAIN ANALYZE SELECT products.id, products.name, products.price
FROM products
JOIN likes_products ON products.id = likes_products.product_id
LEFT JOIN likes_seller ON likes_products.user_buyer_id = likes_seller.user_buyer_id AND products.user_seller_id = likes_seller.user_seller_id
WHERE likes_seller.id IS NULL;

--Для оптимизации запроса можно использовать индексы и материализованные вью. 

--1. Добавим индекс на поле `id` таблицы `likes_seller`:

CREATE INDEX idx_likes_seller_user_buyer_id ON likes_seller (user_buyer_id);

--2. Создадим материализованное представление для таблицы `likes_seller`, 
--которое будет содержать только уникальные пары `user_buyer_id` и `user_seller_id`:

CREATE MATERIALIZED VIEW mv_likes_seller_unique AS
SELECT DISTINCT user_buyer_id, user_seller_id
FROM likes_seller;

SELECT indexname FROM pg_indexes WHERE tablename = 'likes_products';

--3. Добавим индексы на поля `product_id`, `user_buyer_id` и `user_seller_id` таблицы `likes_products`:
SELECT * FROM likes_products;

CREATE INDEX idx_likes_products_product_id ON likes_products (product_id);
CREATE INDEX idx_likes_products_user_buyer_id ON likes_products (user_buyer_id);
CREATE INDEX idx_products_user_seller_id ON products (user_seller_id);

--4. Перепишем запрос с использованием созданных индексов и материализованного представления:

EXPLAIN ANALYZE SELECT products.id, products.name, products.price
FROM products
JOIN likes_products ON products.id = likes_products.product_id
LEFT JOIN mv_likes_seller_unique ON likes_products.user_buyer_id = mv_likes_seller_unique.user_buyer_id AND products.user_seller_id = mv_likes_seller_unique.user_seller_id
WHERE mv_likes_seller_unique.user_buyer_id IS NULL;

--Анализ:

--План выполнения запроса до оптимизации:

"Hash Left Join  (cost=7.25..9.91 rows=1 width=20) (actual time=0.469..0.549 rows=76 loops=1)"
"  Hash Cond: ((likes_products.user_buyer_id = likes_seller.user_buyer_id) AND (products.user_seller_id = likes_seller.user_seller_id))"
"  Filter: (likes_seller.id IS NULL)"
"  Rows Removed by Filter: 4"
"  ->  Hash Join  (cost=4.25..6.27 rows=80 width=28) (actual time=0.083..0.134 rows=80 loops=1)"
"        Hash Cond: (likes_products.product_id = products.id)"
"        ->  Seq Scan on likes_products  (cost=0.00..1.80 rows=80 width=8) (actual time=0.006..0.015 rows=80 loops=1)"
"        ->  Hash  (cost=3.00..3.00 rows=100 width=24) (actual time=0.070..0.071 rows=100 loops=1)"
"              Buckets: 1024  Batches: 1  Memory Usage: 14kB"
"              ->  Seq Scan on products  (cost=0.00..3.00 rows=100 width=24) (actual time=0.007..0.040 rows=100 loops=1)"
"  ->  Hash  (cost=1.80..1.80 rows=80 width=12) (actual time=0.378..0.379 rows=80 loops=1)"
"        Buckets: 1024  Batches: 1  Memory Usage: 12kB"
"        ->  Seq Scan on likes_seller  (cost=0.00..1.80 rows=80 width=12) (actual time=0.338..0.356 rows=80 loops=1)"
"Planning Time: 8.908 ms"
"Execution Time: 0.588 ms"

--План выполнения запроса после оптимизации:

"Hash Anti Join  (cost=7.25..9.87 rows=1 width=20) (actual time=0.118..0.191 rows=76 loops=1)"
"  Hash Cond: ((likes_products.user_buyer_id = mv_likes_seller_unique.user_buyer_id) AND (products.user_seller_id = mv_likes_seller_unique.user_seller_id))"
"  ->  Hash Join  (cost=4.25..6.27 rows=80 width=28) (actual time=0.072..0.121 rows=80 loops=1)"
"        Hash Cond: (likes_products.product_id = products.id)"
"        ->  Seq Scan on likes_products  (cost=0.00..1.80 rows=80 width=8) (actual time=0.007..0.016 rows=80 loops=1)"
"        ->  Hash  (cost=3.00..3.00 rows=100 width=24) (actual time=0.057..0.058 rows=100 loops=1)"
"              Buckets: 1024  Batches: 1  Memory Usage: 14kB"
"              ->  Seq Scan on products  (cost=0.00..3.00 rows=100 width=24) (actual time=0.006..0.032 rows=100 loops=1)"
"  ->  Hash  (cost=1.80..1.80 rows=80 width=8) (actual time=0.037..0.038 rows=80 loops=1)"
"        Buckets: 1024  Batches: 1  Memory Usage: 12kB"
"        ->  Seq Scan on mv_likes_seller_unique  (cost=0.00..1.80 rows=80 width=8) (actual time=0.006..0.015 rows=80 loops=1)"
"Planning Time: 0.251 ms"
"Execution Time: 0.228 ms"


--В результате оптимизации запрос был ускорен за счет следующих действий:
-- - добавление индексов на таблицу `products` и таблицу `likes_products`,
--что позволило избежать полного сканирования этих таблиц и использование hash join вместо nested loop;
-- - использование материализованной вью для таблицы `likes_seller`, которая содержит только уникальные пары `user_buyer_id` и `user_seller_id`;
-- - замена `LEFT JOIN` на `HASH ANTI JOIN`, что позволило сделать это соединение более эффек
