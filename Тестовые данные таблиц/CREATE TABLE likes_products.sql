DROP TABLE IF EXISTS "likes_products";

CREATE TABLE "likes_products" (
  id SERIAL PRIMARY KEY,
  user_buyer_id integer NULL,
  product_id integer NULL
);

INSERT INTO likes_products (user_buyer_id,product_id)
VALUES
  (3,21),
  (8,99),
  (11,83),
  (12,38),
  (1,54),
  (13,94),
  (14,51),
  (15,55),
  (16,84),
  (17,92);
INSERT INTO likes_products (user_buyer_id,product_id)
VALUES
  (18,50),
  (19,76),
  (20,39),
  (21,82),
  (22,96),
  (23,40),
  (24,52),
  (25,43),
  (26,80),
  (27,76);
INSERT INTO likes_products (user_buyer_id,product_id)
VALUES
  (28,78),
  (29,42),
  (30,20),
  (31,67),
  (32,32),
  (33,23),
  (35,22),
  (36,72),
  (38,56),
  (39,5);
INSERT INTO likes_products (user_buyer_id,product_id)
VALUES
  (40,41),
  (41,60),
  (42,75),
  (43,88),
  (44,52),
  (46,50),
  (47,53),
  (48,25),
  (49,22),
  (50,76);
INSERT INTO likes_products (user_buyer_id,product_id)
VALUES
  (51,68),
  (52,38),
  (53,73),
  (54,82),
  (57,9),
  (58,70),
  (59,3),
  (60,74),
  (61,58),
  (62,78);
INSERT INTO likes_products (user_buyer_id,product_id)
VALUES
  (63,33),
  (64,47),
  (65,39),
  (66,11),
  (68,35),
  (69,23),
  (70,63),
  (71,45),
  (72,97),
  (73,7);
INSERT INTO likes_products (user_buyer_id,product_id)
VALUES
  (74,50),
  (76,57),
  (77,99),
  (78,67),
  (79,2),
  (81,38),
  (82,9),
  (83,86),
  (85,57),
  (86,51);
INSERT INTO likes_products (user_buyer_id,product_id)
VALUES
  (89,59),
  (92,75),
  (93,86),
  (94,4),
  (95,67),
  (96,35),
  (97,63),
  (98,29),
  (99,5),
  (100,41);
  