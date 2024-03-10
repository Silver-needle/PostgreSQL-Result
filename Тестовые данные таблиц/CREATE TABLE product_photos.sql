DROP TABLE IF EXISTS "product_photos";

CREATE TABLE "product_photos" (
  id SERIAL PRIMARY KEY,
  url varchar(255),
  size integer NULL,
  product_id integer NULL,
  created_at varchar(255)
);

INSERT INTO product_photos (url,size,product_id,created_at)
VALUES
  ('http://netflix.com/sub/cars?q=4',9,1,'2023-01-03 07:12:08'),
  ('https://facebook.com/one?p=8',12,2,'2021-07-26 02:24:56'),
  ('https://guardian.co.uk/sub/cars?ad=115',27,3,'2020-09-16 09:15:43'),
  ('http://twitter.com/sub?search=1',33,4,'2023-12-20 09:00:11'),
  ('https://zoom.us/en-us?k=0',11,5,'2020-02-26 23:56:25'),
  ('https://guardian.co.uk/en-us?q=0',36,6,'2019-08-07 04:20:16'),
  ('http://walmart.com/one?str=se',28,7,'2021-02-20 03:32:40'),
  ('http://reddit.com/settings?g=1',12,8,'2022-05-30 03:31:32'),
  ('http://google.com/site?q=0',30,9,'2023-10-02 10:26:49'),
  ('http://guardian.co.uk/one?q=0',18,10,'2020-10-14 02:11:44');
INSERT INTO product_photos (url,size,product_id,created_at)
VALUES
  ('http://reddit.com/one?client=g',37,11,'2023-08-06 20:22:18'),
  ('https://twitter.com/group/9?q=11',25,12,'2023-02-06 16:55:46'),
  ('https://reddit.com/fr?p=8',14,13,'2022-08-29 06:15:41'),
  ('http://baidu.com/group/9?page=1&offset=1',16,14,'2021-12-23 23:22:55'),
  ('https://baidu.com/site?q=4',15,15,'2019-06-05 12:28:30'),
  ('https://facebook.com/en-us?search=1',19,16,'2021-11-13 00:47:39'),
  ('https://pinterest.com/one?client=g',4,17,'2022-03-01 11:26:26'),
  ('http://guardian.co.uk/user/110?gi=100',33,18,'2023-08-03 06:36:50'),
  ('http://youtube.com/group/9?client=g',8,19,'2020-12-18 17:47:11'),
  ('https://naver.com/fr?p=8',27,20,'2020-03-23 17:04:55');
INSERT INTO product_photos (url,size,product_id,created_at)
VALUES
  ('https://google.com/group/9?g=1',34,21,'2020-11-07 15:46:30'),
  ('http://reddit.com/en-us?q=test',35,22,'2024-02-23 08:48:46'),
  ('http://cnn.com/en-ca?search=1&q=de',26,23,'2021-03-16 01:27:57'),
  ('https://zoom.us/one?q=4',26,24,'2022-07-10 04:43:08'),
  ('https://reddit.com/en-us?q=11',7,25,'2023-07-13 14:24:07'),
  ('http://reddit.com/sub?str=se',33,26,'2020-04-07 18:25:25'),
  ('https://nytimes.com/settings?p=8',11,27,'2022-06-27 20:46:00'),
  ('http://yahoo.com/fr?q=test',33,28,'2020-05-05 07:21:54'),
  ('https://twitter.com/fr?g=1',33,29,'2021-11-30 17:11:14'),
  ('http://youtube.com/fr?k=0',23,30,'2019-12-11 21:23:02');
INSERT INTO product_photos (url,size,product_id,created_at)
VALUES
  ('http://nytimes.com/fr?q=0',16,31,'2020-08-28 14:32:24'),
  ('http://instagram.com/user/110?ab=441&aad=2',27,32,'2019-12-05 07:04:47'),
  ('https://walmart.com/sub/cars?g=1',25,33,'2023-01-21 01:07:52'),
  ('https://whatsapp.com/site?str=se',5,34,'2022-11-20 11:43:28'),
  ('http://bbc.co.uk/fr?q=11',27,35,'2023-07-22 21:36:06'),
  ('https://zoom.us/en-us?str=se',9,36,'2021-03-19 23:42:22'),
  ('https://guardian.co.uk/en-ca?search=1',3,37,'2022-02-12 04:03:54'),
  ('https://cnn.com/group/9?ad=115',32,38,'2022-05-03 23:42:10'),
  ('https://google.com/one?k=0',29,39,'2022-06-09 04:23:57'),
  ('http://naver.com/one?client=g',10,40,'2024-01-23 18:34:15');
INSERT INTO product_photos (url,size,product_id,created_at)
VALUES
  ('http://facebook.com/settings?q=0',36,41,'2021-02-26 04:34:49'),
  ('http://naver.com/en-us?g=1',11,42,'2021-06-17 23:20:24'),
  ('http://google.com/one?page=1&offset=1',17,43,'2020-02-27 08:51:58'),
  ('http://whatsapp.com/site?p=8',31,44,'2019-10-23 05:58:39'),
  ('https://pinterest.com/fr?q=test',7,45,'2021-03-22 15:52:50'),
  ('http://baidu.com/sub?p=8',28,46,'2020-08-15 08:36:15'),
  ('https://nytimes.com/user/110?g=1',13,47,'2021-07-30 09:44:10'),
  ('https://bbc.co.uk/one?ab=441&aad=2',24,48,'2019-07-30 14:00:29'),
  ('http://youtube.com/fr?q=test',15,49,'2019-08-23 09:21:25'),
  ('https://facebook.com/fr?q=11',14,50,'2023-01-03 14:04:15');
INSERT INTO product_photos (url,size,product_id,created_at)
VALUES
  ('https://netflix.com/en-us?page=1&offset=1',22,51,'2019-04-09 13:12:46'),
  ('https://youtube.com/group/9?ad=115',34,52,'2022-02-02 09:13:05'),
  ('http://zoom.us/user/110?p=8',5,53,'2023-03-26 01:32:37'),
  ('https://cnn.com/sub?search=1',16,54,'2020-07-12 07:21:13'),
  ('http://google.com/site?gi=100',11,55,'2023-09-21 15:12:57'),
  ('https://naver.com/fr?g=1',23,56,'2023-05-24 21:39:01'),
  ('https://walmart.com/one?p=8',20,57,'2020-09-16 22:47:13'),
  ('http://whatsapp.com/sub/cars?q=4',4,58,'2020-03-17 08:09:13'),
  ('http://cnn.com/sub/cars?q=test',4,59,'2023-05-03 04:45:41'),
  ('https://google.com/sub/cars?ab=441&aad=2',7,60,'2019-09-26 18:26:05');
INSERT INTO product_photos (url,size,product_id,created_at)
VALUES
  ('https://instagram.com/user/110?p=8',18,61,'2023-06-25 03:47:16'),
  ('http://twitter.com/fr?q=4',18,62,'2019-09-25 04:18:27'),
  ('http://netflix.com/sub?gi=100',13,63,'2020-06-26 22:49:11'),
  ('http://walmart.com/sub/cars?ad=115',14,64,'2023-03-18 08:02:26'),
  ('https://google.com/settings?q=0',25,65,'2019-09-01 20:04:02'),
  ('https://guardian.co.uk/user/110?q=11',32,66,'2023-07-04 23:20:54'),
  ('https://guardian.co.uk/group/9?gi=100',36,67,'2022-10-18 02:50:27'),
  ('http://guardian.co.uk/sub?page=1&offset=1',4,68,'2019-08-21 00:57:23'),
  ('https://facebook.com/settings?q=11',11,69,'2022-10-12 02:40:33'),
  ('http://ebay.com/settings?q=0',17,70,'2021-08-19 01:20:52');
INSERT INTO product_photos (url,size,product_id,created_at)
VALUES
  ('https://zoom.us/en-ca?ab=441&aad=2',6,71,'2022-05-17 22:14:13'),
  ('https://yahoo.com/settings?q=test',37,72,'2019-04-06 10:50:50'),
  ('https://bbc.co.uk/group/9?search=1',13,73,'2023-02-18 00:06:56'),
  ('https://bbc.co.uk/group/9?client=g',10,74,'2022-02-25 03:49:31'),
  ('https://bbc.co.uk/fr?g=1',13,75,'2022-05-31 19:44:00'),
  ('http://youtube.com/sub/cars?page=1&offset=1',32,76,'2019-07-21 19:37:42'),
  ('https://naver.com/user/110?page=1&offset=1',37,77,'2024-02-04 09:32:32'),
  ('https://youtube.com/en-us?p=8',34,78,'2022-03-28 23:42:27'),
  ('http://youtube.com/group/9?q=test',13,79,'2020-02-01 23:11:04'),
  ('http://baidu.com/one?q=11',35,80,'2022-06-10 17:00:25');
INSERT INTO product_photos (url,size,product_id,created_at)
VALUES
  ('https://instagram.com/en-ca?gi=100',28,81,'2021-01-28 01:33:55'),
  ('https://zoom.us/one?q=0',23,82,'2023-09-25 15:40:50'),
  ('https://zoom.us/group/9?search=1&q=de',26,83,'2019-08-12 04:54:55'),
  ('http://naver.com/fr?ad=115',13,84,'2021-05-28 20:07:12'),
  ('http://guardian.co.uk/en-us?page=1&offset=1',4,85,'2021-01-11 05:13:31'),
  ('https://yahoo.com/settings?g=1',5,86,'2023-09-16 06:55:08'),
  ('http://baidu.com/sub?k=0',8,87,'2021-02-27 12:24:59'),
  ('http://walmart.com/user/110?search=1',7,88,'2024-03-07 18:51:30'),
  ('http://facebook.com/en-us?ad=115',30,89,'2020-03-31 17:51:08'),
  ('http://google.com/sub/cars?q=0',19,90,'2021-03-23 08:36:33');
INSERT INTO product_photos (url,size,product_id,created_at)
VALUES
  ('https://facebook.com/fr?str=se',19,91,'2023-07-30 10:15:39'),
  ('https://guardian.co.uk/one?q=test',24,92,'2021-08-13 22:05:55'),
  ('http://google.com/site?p=8',9,93,'2020-09-15 15:53:11'),
  ('https://yahoo.com/settings?q=4',27,94,'2022-01-17 00:51:12'),
  ('https://google.com/sub?search=1&q=de',30,95,'2022-03-17 06:31:32'),
  ('https://naver.com/en-ca?str=se',14,96,'2022-10-26 20:09:57'),
  ('https://zoom.us/en-ca?str=se',34,97,'2021-09-28 09:15:25'),
  ('https://naver.com/sub/cars?page=1&offset=1',15,98,'2023-01-15 12:10:17'),
  ('http://netflix.com/user/110?gi=100',37,99,'2019-09-16 00:44:28'),
  ('http://cnn.com/settings?gi=100',4,100,'2019-12-01 06:16:02');
  
  SELECT * FROM product_photos;
