DROP TABLE IF EXISTS "order_products";

CREATE TABLE "order_products" (
  id SERIAL PRIMARY KEY,
  order_id integer NULL,
  product_id integer NULL,
  price integer NULL,
  quantity integer NULL
);

INSERT INTO order_products (order_id,product_id,price,quantity)
VALUES
  (1,38,42,30),
  (2,40,61,14),
  (3,82,86,34),
  (4,61,64,40),
  (5,89,85,7),
  (6,51,31,3),
  (7,39,56,26),
  (8,43,73,4),
  (9,59,62,34),
  (10,42,11,2);
