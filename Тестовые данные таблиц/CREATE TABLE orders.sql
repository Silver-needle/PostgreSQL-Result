DROP TABLE IF EXISTS "orders";

CREATE TABLE "orders" (
  id SERIAL PRIMARY KEY,
  user_buyer_id integer NULL,
  order_status_id integer NULL,
  payment_method_id integer NULL,
  address_id integer NULL,
  created_at varchar(255)
);

INSERT INTO orders (user_buyer_id,order_status_id,payment_method_id,address_id,created_at)
VALUES
  (76,1,2,1,'2023-06-11 09:56:24'),
  (3,2,1,2,'2022-10-24 04:21:25'),
  (70,2,2,3,'2023-06-01 20:37:30'),
  (16,2,1,4,'2023-07-30 01:09:30'),
  (99,1,1,5,'2023-12-14 06:55:47'),
  (86,2,1,6,'2022-08-09 11:57:22'),
  (19,2,2,7,'2023-10-02 19:33:09'),
  (89,2,2,8,'2022-07-25 10:17:16'),
  (26,2,1,9,'2022-10-16 18:28:13'),
  (71,2,1,10,'2022-05-25 15:28:03');
