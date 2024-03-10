DROP TABLE IF EXISTS "baskets_product";

CREATE TABLE "baskets_product" (
  id SERIAL PRIMARY KEY,
  quantity integer NULL,
  product_id integer NULL,
  basket_id integer NULL
);

INSERT INTO baskets_product (quantity,product_id,basket_id)
VALUES
  (16,45,1),
  (83,98,2),
  (91,83,3),
  (66,71,4),
  (11,51,5),
  (75,94,6),
  (43,91,7),
  (21,72,8),
  (4,23,9),
  (57,83,10);
INSERT INTO baskets_product (quantity,product_id,basket_id)
VALUES
  (77,8,11),
  (10,22,12),
  (74,96,13),
  (35,95,14),
  (11,91,15);
