DROP TABLE IF EXISTS "likes_seller";

CREATE TABLE "likes_seller" (
  id SERIAL PRIMARY KEY,
  user_buyer_id integer NULL,
  user_seller_id integer NULL
);

INSERT INTO likes_seller (user_buyer_id,user_seller_id)
VALUES
  (3,2),
  (8,91),
  (11,84),
  (12,45),
  (1,55),
  (13,91),
  (14,55),
  (15,55),
  (16,84),
  (17,90);
INSERT INTO likes_seller (user_buyer_id,user_seller_id)
VALUES
  (18,56),
  (19,75),
  (20,37),
  (21,80),
  (22,90),
  (23,37),
  (24,55),
  (25,45),
  (26,80),
  (27,75);
INSERT INTO likes_seller (user_buyer_id,user_seller_id)
VALUES
  (28,80),
  (29,45),
  (30,10),
  (31,67),
  (32,34),
  (33,10),
  (35,10),
  (36,87),
  (38,56),
  (39,5);
INSERT INTO likes_seller (user_buyer_id,user_seller_id)
VALUES
  (40,45),
  (41,80),
  (42,75),
  (43,88),
  (44,55),
  (46,55),
  (47,56),
  (48,34),
  (49,10),
  (50,75);
INSERT INTO likes_seller (user_buyer_id,user_seller_id)
VALUES
  (51,67),
  (52,37),
  (53,75),
  (54,80),
  (57,9),
  (58,75),
  (59,2),
  (60,75),
  (61,58),
  (62,75);
INSERT INTO likes_seller (user_buyer_id,user_seller_id)
VALUES
  (63,34),
  (64,45),
  (65,37),
  (66,10),
  (68,34),
  (69,9),
  (70,5),
  (71,84),
  (72,90),
  (73,7);
INSERT INTO likes_seller (user_buyer_id,user_seller_id)
VALUES
  (74,2),
  (76,4),
  (77,5),
  (78,80),
  (79,2),
  (81,37),
  (82,9),
  (83,84),
  (85,75),
  (86,2);
INSERT INTO likes_seller (user_buyer_id,user_seller_id)
VALUES
  (89,9),
  (92,84),
  (93,87),
  (94,4),
  (95,55),
  (96,55),
  (97,2),
  (98,5),
  (99,5),
  (100,91);
  