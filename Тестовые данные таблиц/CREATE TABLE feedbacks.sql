DROP TABLE IF EXISTS "feedbacks";

CREATE TABLE "feedbacks" (
  id SERIAL PRIMARY KEY,
  text TEXT default NULL,
  user_buyer_id integer NULL,
  product_id integer NULL,
  created_at varchar(255)
);

INSERT INTO feedbacks (text,user_buyer_id,product_id,created_at)
VALUES
  ('Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris,',53,87,'2021-02-13 19:52:49'),
  ('in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris',8,33,'2022-11-04 09:12:39'),
  ('id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut',68,46,'2020-08-03 19:52:24'),
  ('mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed',8,5,'2024-02-23 12:01:45'),
  ('orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero',8,7,'2023-06-10 05:24:52'),
  ('ac mattis ornare, lectus ante dictum mi, ac mattis velit',29,37,'2019-10-09 05:08:34'),
  ('Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat',20,19,'2023-01-09 22:03:54'),
  ('lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante',96,5,'2020-04-22 02:41:16'),
  ('eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit',92,13,'2021-01-12 23:10:28'),
  ('risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non',41,27,'2023-01-03 11:23:37');
INSERT INTO feedbacks (text,user_buyer_id,product_id,created_at)
VALUES
  ('at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac',21,86,'2020-03-24 09:31:16'),
  ('cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut',3,92,'2021-02-12 17:59:31'),
  ('tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit',85,10,'2022-06-04 09:45:56'),
  ('pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero.',50,59,'2021-01-04 19:51:32'),
  ('malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris',81,85,'2022-07-10 05:22:40'),
  ('placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante,',73,41,'2020-12-03 07:16:57'),
  ('sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet',15,13,'2022-02-17 00:01:06'),
  ('Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien',21,54,'2020-11-04 01:29:35'),
  ('massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede',85,53,'2021-03-07 04:45:50'),
  ('Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est.',21,38,'2022-03-19 04:10:32');
INSERT INTO feedbacks (text,user_buyer_id,product_id,created_at)
VALUES
  ('quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam',93,100,'2022-07-08 05:42:25'),
  ('iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac,',63,27,'2023-12-10 13:05:38'),
  ('pede, ultrices a, auctor non, feugiat nec, diam. Duis mi',86,32,'2020-02-25 23:31:06'),
  ('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet,',98,80,'2021-11-18 11:30:14'),
  ('pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,',70,68,'2023-12-29 16:46:38'),
  ('urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum',8,85,'2020-05-25 09:27:44'),
  ('placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet,',43,30,'2020-10-12 20:25:46'),
  ('non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed',20,100,'2019-06-10 11:46:24'),
  ('Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc',49,91,'2020-07-06 21:21:20'),
  ('dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec',92,40,'2021-08-13 01:40:01');
