DROP TABLE IF EXISTS "products";

CREATE TABLE "products" (
  id SERIAL PRIMARY KEY,
  name TEXT default NULL,
  price varchar(100) default NULL,
  description TEXT default NULL,
  photo_id integer NULL,
  user_seller_id integer NULL,
  catalog_id integer NULL,
  group_id integer NULL,
  date varchar(255)
);

INSERT INTO products (name,price,description,photo_id,user_seller_id,catalog_id,group_id,created_at)
VALUES
  ('Tea1,',59,'dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent',39,2,1,2,'2020-10-10 06:56:05'),
  ('Tea2,',68,'Donec tempor, est ac mattis semper, dui lectus rutrum urna,',6,4,1,2,'2020-11-26 12:18:11'),
  ('Tea3,',12,'et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat',7,5,1,2,'2019-07-14 03:29:37'),
  ('Tea4,',23,'vitae erat vel pede blandit congue. In scelerisque scelerisque dui.',1,6,1,2,'2020-02-10 15:39:08'),
  ('Tea5,',53,'nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam',56,7,1,2,'2020-11-03 07:23:10'),
  ('Tea6,',81,'semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae',89,9,1,2,'2020-01-12 05:03:51'),
  ('Tea7,',18,'dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante',59,10,1,2,'2020-09-08 19:18:12'),
  ('Tea8,',4,'aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae',67,34,1,2,'2020-06-05 08:33:30'),
  ('Tea9,',46,'lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu,',60,37,1,2,'2023-09-22 10:26:33'),
  ('Tea10,',13,'diam. Pellentesque habitant morbi tristique senectus et netus et malesuada',96,45,1,2,'2021-12-15 14:24:10');
INSERT INTO products (name,price,description,photo_id,user_seller_id,catalog_id,group_id,created_at)
VALUES
  ('Tea11,',97,'elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu',81,55,1,2,'2019-09-17 02:08:26'),
  ('Tea12,',67,'bibendum fermentum metus. Aenean sed pede nec ante blandit viverra.',99,56,1,2,'2019-06-05 17:10:36'),
  ('Tea13,',67,'dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam',50,67,1,2,'2022-01-26 19:49:16'),
  ('Tea14,',38,'Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum',79,75,1,2,'2022-10-28 10:08:37'),
  ('Tea15,',72,'a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu',89,80,1,2,'2022-05-20 20:34:25'),
  ('Tea16,',30,'In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas',57,84,1,2,'2023-07-02 20:50:09'),
  ('Tea17,',32,'lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis',54,87,1,2,'2022-08-31 08:26:35'),
  ('Tea18,',16,'mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam',94,88,1,2,'2020-07-01 07:22:32'),
  ('Tea19,',21,'quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus',92,90,1,2,'2024-03-03 00:00:24'),
  ('Tea20,',77,'nunc risus varius orci, in consequat enim diam vel arcu.',73,91,1,2,'2021-06-18 11:12:00');
INSERT INTO products (name,price,description,photo_id,user_seller_id,catalog_id,group_id,created_at)
VALUES
  ('Tea21,',23,'ante dictum mi, ac mattis velit justo nec ante. Maecenas',22,2,1,2,'2019-07-10 16:06:50'),
  ('Tea22,',48,'lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet',18,4,1,2,'2022-04-06 22:00:01'),
  ('Tea23,',57,'aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt,',11,5,1,2,'2021-05-14 19:06:01'),
  ('Tea24,',87,'commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,',58,6,1,2,'2024-01-31 02:35:56'),
  ('Tea25,',6,'libero lacus, varius et, euismod et, commodo at, libero. Morbi',97,7,1,2,'2021-11-07 08:46:51'),
  ('Tea26,',51,'bibendum fermentum metus. Aenean sed pede nec ante blandit viverra.',91,9,1,2,'2019-09-15 02:15:17'),
  ('Tea27,',86,'mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin',75,10,1,2,'2020-07-07 14:15:33'),
  ('Tea28,',51,'elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec',65,9,1,2,'2020-04-23 06:25:53'),
  ('Tea29,',9,'orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean',24,10,1,2,'2022-04-17 06:50:45'),
  ('Tea30,',73,'sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et',63,80,1,2,'2023-09-21 14:27:47');
INSERT INTO products (name,price,description,photo_id,user_seller_id,catalog_id,group_id,created_at)
VALUES
  ('Tea31,',33,'ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna.',87,90,1,2,'2022-05-16 00:25:26'),
  ('Tea32,',21,'mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam',97,55,1,2,'2020-01-06 15:20:05'),
  ('Tea33,',10,'dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu',52,67,1,2,'2019-07-02 19:07:23'),
  ('Tea34,',85,'nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce',74,10,1,2,'2021-06-21 15:22:00'),
  ('Tea35,',28,'at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et',53,4,1,2,'2021-09-29 13:20:57'),
  ('Tea36,',93,'quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis.',55,80,1,2,'2023-09-29 00:02:12'),
  ('Tea37,',48,'Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat.',100,9,1,2,'2022-03-29 18:05:20'),
  ('Tea38,',20,'adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut',60,91,1,2,'2022-03-26 19:08:10'),
  ('Tea39,',13,'nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis',84,5,1,2,'2019-05-25 03:55:06'),
  ('Tea40,',44,'Sed id risus quis diam luctus lobortis. Class aptent taciti',92,10,1,2,'2019-04-05 16:14:16');
INSERT INTO products (name,price,description,photo_id,user_seller_id,catalog_id,group_id,created_at)
VALUES
  ('Tea41,',5,'id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus',11,91,1,2,'2020-05-23 16:48:04'),
  ('Tea42,',44,'neque et nunc. Quisque ornare tortor at risus. Nunc ac',76,10,1,2,'2022-05-21 22:48:31'),
  ('Tea43,',72,'et malesuada fames ac turpis egestas. Fusce aliquet magna a',80,37,1,2,'2021-12-19 20:31:04'),
  ('Tea44,',80,'aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu',94,2,1,2,'2020-11-26 08:06:34'),
  ('Tea45,',47,'malesuada fames ac turpis egestas. Fusce aliquet magna a neque.',40,84,1,2,'2019-11-18 10:55:31'),
  ('Tea46,',97,'vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque',86,55,1,2,'2023-08-29 20:11:49'),
  ('Tea47,',60,'orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce',66,7,1,2,'2019-04-24 02:36:26'),
  ('Tea48,',48,'Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue.',59,10,1,2,'2022-08-18 18:14:11'),
  ('Tea49,',30,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices',34,9,1,2,'2020-12-12 01:14:08'),
  ('Tea50,',60,'id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis',3,37,1,2,'2020-04-26 18:41:02');
INSERT INTO products (name,price,description,photo_id,user_seller_id,catalog_id,group_id,created_at)
VALUES
  ('Coffee1,',14,'Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam',35,67,1,1,'2019-06-25 22:27:31'),
  ('Coffee2,',93,'Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id,',35,45,1,1,'2020-10-21 23:47:39'),
  ('Coffee3,',30,'ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus',41,6,1,1,'2023-08-19 19:37:54'),
  ('Coffee4,',47,'magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna.',45,56,1,1,'2022-10-11 10:18:16'),
  ('Coffee5,',53,'fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,',17,5,1,1,'2023-06-29 09:10:49'),
  ('Coffee6,',26,'ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu',2,2,1,1,'2021-09-03 07:17:52'),
  ('Coffee7,',99,'tempor, est ac mattis semper, dui lectus rutrum urna, nec',100,9,1,1,'2019-09-17 08:34:54'),
  ('Coffee8,',96,'rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in,',29,45,1,1,'2020-05-03 02:45:12'),
  ('Coffee9,',85,'ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede',67,10,1,1,'2020-05-02 19:01:53'),
  ('Coffee10,',94,'tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit',70,80,1,1,'2022-05-13 08:20:01');
INSERT INTO products (name,price,description,photo_id,user_seller_id,catalog_id,group_id,created_at)
VALUES
  ('Coffee11,',30,'parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio',72,87,1,1,'2022-12-16 00:25:04'),
  ('Coffee12,',5,'sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci',55,4,1,1,'2020-04-22 01:30:54'),
  ('Coffee13,',27,'urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus',37,75,1,1,'2020-08-16 18:41:15'),
  ('Coffee14,',98,'sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie',25,37,1,1,'2020-03-06 17:10:08'),
  ('Coffee15,',8,'lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor',40,4,1,1,'2021-09-06 10:33:26'),
  ('Coffee16,',30,'lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor',3,7,1,1,'2019-10-23 22:33:09'),
  ('Coffee17,',2,'eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer',64,34,1,1,'2022-01-12 02:23:57'),
  ('Coffee18,',44,'consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat',67,5,1,1,'2019-05-09 09:08:42'),
  ('Coffee19,',87,'Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque',34,5,1,1,'2024-01-09 15:02:34'),
  ('Coffee20,',51,'vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur',2,9,1,1,'2019-09-27 14:10:57');
INSERT INTO products (name,price,description,photo_id,user_seller_id,catalog_id,group_id,created_at)
VALUES
  ('Coffee21,',96,'Donec porttitor tellus non magna. Nam ligula elit, pretium et,',52,9,1,1,'2020-07-28 20:37:14'),
  ('Coffee22,',15,'odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus.',59,4,1,1,'2023-01-04 02:36:17'),
  ('Coffee23,',96,'tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec',29,4,1,1,'2021-01-08 13:16:13'),
  ('Coffee24,',47,'adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut',86,91,1,1,'2021-12-02 01:10:19'),
  ('Coffee25,',65,'mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae,',53,90,1,1,'2023-08-15 14:59:49'),
  ('Coffee26,',77,'fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh',11,2,1,1,'2021-11-16 19:43:08'),
  ('Coffee27,',97,'sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis',45,67,1,1,'2020-03-07 11:09:40'),
  ('Coffee28,',83,'nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque',70,91,1,1,'2022-08-14 16:57:51'),
  ('Coffee29,',45,'montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc',8,90,1,1,'2023-01-12 03:31:49'),
  ('Coffee30,',12,'orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu,',17,56,1,1,'2021-05-25 21:27:11');
INSERT INTO products (name,price,description,photo_id,user_seller_id,catalog_id,group_id,created_at)
VALUES
  ('Coffee31,',47,'nisi sem semper erat, in consectetuer ipsum nunc id enim.',78,7,1,1,'2024-03-04 23:45:27'),
  ('Coffee32,',40,'orci, in consequat enim diam vel arcu. Curabitur ut odio',12,45,1,1,'2019-12-17 19:19:34'),
  ('Coffee33,',49,'tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec',83,34,1,1,'2022-02-21 13:48:49'),
  ('Coffee34,',72,'Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum',86,67,1,1,'2020-09-01 02:12:58'),
  ('Coffee35,',10,'Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla',7,80,1,1,'2023-09-09 17:11:02'),
  ('Coffee36,',31,'tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel,',47,7,1,1,'2019-06-26 08:47:18'),
  ('Coffee37,',93,'ut erat. Sed nunc est, mollis non, cursus non, egestas',85,10,1,1,'2022-12-09 06:38:00'),
  ('Coffee38,',15,'consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam',99,10,1,1,'2020-01-19 10:02:31'),
  ('Coffee39,',77,'lectus ante dictum mi, ac mattis velit justo nec ante.',64,4,1,1,'2022-02-24 15:33:30'),
  ('Coffee40,',73,'nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus',10,9,1,1,'2021-07-07 04:25:36');
INSERT INTO products (name,price,description,photo_id,user_seller_id,catalog_id,group_id,created_at)
VALUES
  ('Coffee41,',44,'eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in',50,56,1,1,'2019-07-09 13:51:17'),
  ('Coffee42,',71,'Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna.',78,9,1,1,'2023-01-21 01:39:34'),
  ('Coffee43,',28,'erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla.',5,91,1,1,'2021-07-24 12:28:34'),
  ('Coffee44,',47,'molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,',17,9,1,1,'2023-03-26 19:21:11'),
  ('Coffee45,',48,'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec',68,7,1,1,'2020-12-31 13:13:57'),
  ('Coffee46,',19,'velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod',85,67,1,1,'2023-08-17 18:10:17'),
  ('Coffee47,',82,'libero. Proin sed turpis nec mauris blandit mattis. Cras eget',58,80,1,1,'2020-06-01 17:13:11'),
  ('Coffee48,',63,'justo sit amet nulla. Donec non justo. Proin non massa',93,37,1,1,'2022-05-09 05:41:14'),
  ('Coffee49,',59,'non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum.',37,6,1,1,'2023-02-07 09:55:20'),
  ('Coffee50,',64,'diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat.',89,10,1,1,'2020-11-08 06:41:18');
