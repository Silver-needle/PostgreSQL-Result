DROP TABLE IF EXISTS "baskets";

CREATE TABLE "baskets" (
  id SERIAL PRIMARY KEY,
  user_buyer_id integer NULL,
  created_at varchar(255)
);

INSERT INTO baskets (user_buyer_id,created_at)
VALUES
  (39,'2022-11-22 15:48:56'),
  (17,'2023-06-30 00:27:01'),
  (57,'2021-01-05 17:41:26'),
  (99,'2020-07-29 10:27:43'),
  (52,'2019-08-03 05:36:29'),
  (54,'2024-02-07 00:53:08'),
  (44,'2019-10-27 00:45:30'),
  (28,'2019-07-24 08:36:00'),
  (33,'2020-09-09 16:39:24'),
  (72,'2020-03-30 10:20:49');
INSERT INTO baskets (user_buyer_id,created_at)
VALUES
  (50,'2021-09-01 22:11:56'),
  (49,'2023-02-19 13:56:39'),
  (29,'2023-12-08 20:38:20'),
  (53,'2022-08-16 05:34:36'),
  (38,'2020-09-07 07:13:28');
