DROP TABLE IF EXISTS "users";

CREATE TABLE "users" (
  id SERIAL PRIMARY KEY,
  first_name varchar(255) default NULL,
  last_name varchar(255) default NULL,
  email varchar(255) default NULL,
  password varchar(255),
  phone varchar(100) default NULL,
  type_id integer NULL,
  created_at varchar(255)
);

INSERT INTO users (first_name,last_name,email,password,phone,type_id,created_at)
VALUES
  ('Tad','Castro','dui.cras@protonmail.couk','DTG03VZJ0DM','1-646-648-8582',2,'2019-11-01 01:39:43'),
  ('John','Stafford','etiam.gravida@yahoo.net','EPT53PWG1IS','1-254-517-2175',1,'2022-01-24 07:07:20'),
  ('Blaze','Graham','vel.vulputate.eu@yahoo.couk','QFG49LVS4QX','1-578-821-2721',2,'2023-01-07 05:36:28'),
  ('Merritt','Stuart','ut.quam@google.edu','HRK64OIO1ZD','(733) 331-9712',1,'2019-08-09 13:41:07'),
  ('Plato','Wolfe','id.enim@icloud.ca','DXA43BTH8IJ','(205) 777-6841',1,'2020-03-26 23:21:55'),
  ('Herman','Maynard','ornare@protonmail.com','LVD46QEB6XW','1-193-367-5676',1,'2023-01-24 04:03:18'),
  ('Thaddeus','Carver','augue@hotmail.couk','WVQ11VGV3SM','(853) 336-2259',1,'2022-07-03 05:10:32'),
  ('Sean','Rodriguez','vel.venenatis@outlook.net','KPG58IKY8OX','1-228-683-4751',2,'2022-04-20 22:16:40'),
  ('Ryan','Banks','sociosqu@google.net','MAU45ZZG1DC','1-324-454-3632',1,'2022-09-22 11:39:12'),
  ('Harding','Hart','tellus.suspendisse@google.couk','JFD73MHT4OU','(818) 594-6140',1,'2022-05-06 04:35:03');
INSERT INTO users (first_name,last_name,email,password,phone,type_id,created_at)
VALUES
  ('Slade','Gill','fermentum.fermentum@protonmail.ca','NTS49OMU4GK','1-203-346-9509',2,'2021-10-27 14:32:30'),
  ('Hall','Sandoval','nulla.integer@aol.edu','QFR26ZGS7OA','1-220-616-5381',2,'2020-06-21 17:21:55'),
  ('Vincent','Stone','tortor.dictum@outlook.com','WXI86XMK2YY','1-841-439-5695',2,'2020-11-06 06:02:04'),
  ('Fuller','Brooks','at.lacus@yahoo.com','VYY21YRD7HE','1-814-277-8217',2,'2022-03-15 15:22:34'),
  ('Brett','Kelley','taciti@aol.com','OXX41AKB7TY','(373) 311-1211',2,'2020-02-07 20:41:54'),
  ('Knox','Salazar','elementum@icloud.com','BGO58CNC3OX','(863) 845-9355',2,'2019-07-18 02:37:12'),
  ('Rudyard','Chandler','urna.nec@aol.edu','GOT83RTE1FT','1-857-700-4887',2,'2019-06-17 13:21:55'),
  ('Steven','Green','nulla@outlook.ca','FDE06FBM2GF','(876) 574-2859',2,'2019-10-20 20:19:10'),
  ('Jelani','Beard','velit@hotmail.org','TJF96WVN5SC','(442) 954-5786',2,'2021-10-07 20:48:09'),
  ('Fuller','Waller','aenean.eget@hotmail.org','EXN71UPU1NL','1-295-256-3817',2,'2021-10-15 13:53:36');
INSERT INTO users (first_name,last_name,email,password,phone,type_id,created_at)
VALUES
  ('Griffin','Huff','nulla.integer@protonmail.org','UNW94UCV2DE','(968) 473-9573',2,'2022-08-01 15:31:37'),
  ('Trevor','Oliver','pharetra@outlook.com','KIS21UAC1EN','1-470-733-7282',2,'2019-08-06 19:50:04'),
  ('Steel','Carrillo','eget.laoreet@aol.ca','NXC87KHN7UG','1-525-152-7841',2,'2021-05-16 16:45:38'),
  ('Darius','Savage','et.euismod.et@aol.net','FXP61WYM5RK','(312) 448-6219',2,'2019-08-05 03:48:28'),
  ('Murphy','King','aliquam.rutrum.lorem@hotmail.couk','SYO75AOF9RA','1-880-230-2711',2,'2022-03-31 06:10:54'),
  ('Allistair','Burch','morbi.sit@yahoo.com','KBU21NUH4EZ','(374) 397-7743',2,'2020-02-09 12:11:16'),
  ('Dolan','Mcintosh','nunc@aol.net','CUW31ZIE7GF','1-692-744-3697',2,'2019-12-21 19:44:48'),
  ('Marvin','Mclean','mollis.vitae@yahoo.org','PGQ31SGL7DW','(417) 811-7310',2,'2021-11-02 10:25:43'),
  ('Kaseem','Gonzalez','mauris.integer.sem@aol.couk','TNF34CYW3LN','1-314-949-2128',2,'2020-08-02 18:10:28'),
  ('Todd','Ellison','aliquet.diam@aol.net','JMJ81HKM2YN','(547) 243-2718',2,'2020-11-28 09:30:12');
INSERT INTO users (first_name,last_name,email,password,phone,type_id,created_at)
VALUES
  ('Beck','Mccarty','dui.fusce@hotmail.org','LVD15LUI1IC','(923) 925-0912',2,'2020-02-15 20:34:07'),
  ('Brent','Briggs','praesent@icloud.com','KQD22QUO6GO','(476) 863-4565',2,'2019-06-27 01:04:21'),
  ('Erich','Cooke','fusce@aol.couk','PGZ07YRG7MN','1-406-523-8922',2,'2021-07-25 15:00:35'),
  ('Cody','Chavez','lorem@protonmail.ca','KEF85EMC6PR','1-867-302-7186',1,'2023-02-01 17:53:16'),
  ('Jared','Rollins','sit.amet@yahoo.net','NEK64GYD0BL','(768) 681-9913',2,'2021-08-31 12:03:13'),
  ('Aidan','Serrano','neque@aol.org','TCY96CTW9AG','(527) 557-7411',2,'2019-11-06 09:45:31'),
  ('Declan','Hess','est@icloud.net','LBP04UWP7VM','1-754-486-0960',1,'2021-02-28 16:42:46'),
  ('Simon','Benton','ullamcorper@hotmail.edu','DYK83AQW7CO','(273) 255-1482',2,'2020-07-25 13:03:57'),
  ('Zephania','Burton','rutrum.eu@google.net','QMN21UOY4RM','(582) 897-8170',2,'2022-11-27 10:55:24'),
  ('Jarrod','Alvarado','cras.eget@outlook.net','MBC26THU3LN','(287) 831-0077',2,'2022-11-29 07:08:28');
INSERT INTO users (first_name,last_name,email,password,phone,type_id,created_at)
VALUES
  ('Malik','Bentley','risus.a@protonmail.ca','QEO41WLZ3UZ','1-828-311-1864',2,'2021-10-20 13:47:06'),
  ('Gareth','Delaney','vel@protonmail.com','IOE56SGO6HG','(557) 532-6155',2,'2022-07-12 10:25:47'),
  ('Mason','Hernandez','convallis@google.com','YUT53UNS1OP','(600) 277-8785',2,'2019-04-01 18:51:17'),
  ('Roth','Berg','quisque@aol.ca','RNG72OKZ1LN','1-115-647-2625',2,'2021-10-09 14:51:54'),
  ('Forrest','Osborn','tempor@hotmail.ca','ZEK63LJO3OS','1-398-662-2266',1,'2020-09-24 05:19:53'),
  ('Asher','Griffin','rutrum.magna@protonmail.couk','XPN32ZLT5VT','1-463-651-5264',2,'2022-10-29 03:17:02'),
  ('Vincent','Clemons','aenean.euismod.mauris@icloud.edu','XMU47YEO0QL','(563) 708-5108',2,'2022-06-02 05:38:11'),
  ('Avram','Glenn','fusce.fermentum.fermentum@aol.net','KIT32TDN7OM','(946) 547-7568',2,'2019-06-09 11:27:55'),
  ('Craig','Browning','rhoncus.id.mollis@google.com','BXN33XFE4HX','1-361-438-5445',2,'2019-08-07 15:06:05'),
  ('Colorado','Rice','molestie.dapibus.ligula@protonmail.couk','EMQ43SKG5CE','1-463-664-4658',2,'2023-02-20 22:38:32');
INSERT INTO users (first_name,last_name,email,password,phone,type_id,created_at)
VALUES
  ('Boris','Arnold','et.nunc@yahoo.ca','THK36NUB4KP','(858) 775-1784',2,'2020-11-09 11:49:09'),
  ('Garth','Shelton','a.sollicitudin.orci@icloud.couk','PFJ67FVA1LC','(227) 833-4703',2,'2021-10-31 11:30:55'),
  ('Samuel','Garza','auctor.nunc.nulla@protonmail.com','HHV41GHV4GB','1-968-251-5392',2,'2023-03-04 21:27:33'),
  ('Reese','Byers','praesent.eu@aol.org','KBN14VXC4OF','1-717-647-1223',2,'2019-09-07 15:08:08'),
  ('Thaddeus','Fisher','parturient.montes@aol.couk','SZN74CTO5WG','(247) 737-2276',1,'2019-06-08 21:39:58'),
  ('Wyatt','Baker','ultrices.a@yahoo.com','PNU88AUG9GG','1-614-882-6166',1,'2020-02-29 13:57:29'),
  ('David','Hopper','facilisis.magna@outlook.com','JDD75CYR5GC','1-938-929-1985',2,'2021-05-22 05:18:15'),
  ('Jasper','Ingram','imperdiet@aol.com','JMF22JTR3MG','(756) 321-7557',2,'2021-03-23 22:39:47'),
  ('Fitzgerald','Rhodes','quam.quis.diam@outlook.ca','CSK99RDC5RU','(653) 857-1711',2,'2022-01-28 20:07:50'),
  ('Kane','Mcleod','sem.ut@icloud.net','WBH37RQL0XX','(827) 121-8880',2,'2019-09-05 03:04:08');
INSERT INTO users (first_name,last_name,email,password,phone,type_id,created_at)
VALUES
  ('Beck','Riley','id@icloud.edu','XWY22WOX2BP','(324) 923-2156',2,'2021-07-20 07:36:54'),
  ('Griffin','Flores','nascetur.ridiculus@outlook.edu','QUT66XXF9SF','1-405-129-3739',2,'2021-07-18 12:49:59'),
  ('Drew','Garcia','senectus.et@google.net','GNR60RNC1IF','(989) 234-2624',2,'2022-09-07 02:14:58'),
  ('Quentin','Wallace','quis.turpis@protonmail.edu','VIU11RGQ3EG','1-742-847-3379',2,'2021-06-23 18:24:17'),
  ('Bradley','Mcdowell','sed@outlook.ca','JPC41TDX7LE','1-648-211-1626',2,'2019-08-16 15:05:12'),
  ('Eaton','Holcomb','enim.commodo.hendrerit@aol.edu','HKK71VCT3CM','(375) 345-4568',2,'2022-10-19 02:25:23'),
  ('John','Hill','sed.orci.lobortis@icloud.ca','UYU47GIV8TG','(176) 642-3532',1,'2019-08-14 02:06:41'),
  ('Aristotle','Welch','dolor.quisque@icloud.edu','TPV65SDO7LS','1-119-445-3961',2,'2021-12-29 02:07:29'),
  ('Preston','Turner','nunc@google.ca','ITH65IQC2QP','1-185-862-9840',2,'2021-01-21 01:03:36'),
  ('Rafael','Good','orci@outlook.net','HOM53ROS1PD','1-365-991-0329',2,'2020-07-16 04:43:47');
INSERT INTO users (first_name,last_name,email,password,phone,type_id,created_at)
VALUES
  ('Arthur','Shepherd','justo.praesent.luctus@hotmail.ca','XLL56HLY2EH','1-851-221-9097',2,'2021-09-30 22:34:26'),
  ('Tyler','Britt','in.at@outlook.com','CXH71HRD2OC','(781) 654-8685',2,'2020-04-02 13:44:38'),
  ('Zane','West','lobortis@aol.net','NVJ67GPF6VU','1-744-852-3562',2,'2021-09-17 08:54:00'),
  ('Lane','Lamb','egestas.aliquam@protonmail.net','DYM13VNY2CK','1-473-475-6256',2,'2019-09-13 06:28:34'),
  ('Ralph','Mann','erat.vitae@icloud.edu','NMU44PRJ7EO','1-651-503-2782',1,'2020-03-10 18:39:03'),
  ('Barry','Tucker','est@protonmail.com','HQG73OPO4FQ','(707) 614-6543',2,'2019-06-19 06:32:19'),
  ('Steven','Malone','sollicitudin.orci.sem@yahoo.couk','NBC06KZT2XP','1-292-383-7288',2,'2022-07-17 11:26:21'),
  ('Jordan','Rivas','dui.fusce@yahoo.com','IPA77EPI2DQ','1-611-128-7725',2,'2019-04-12 10:54:12'),
  ('Uriah','Sweeney','congue.elit@aol.edu','RDU98CDB9PP','(113) 718-2157',2,'2019-07-04 06:59:24'),
  ('Raymond','Bradford','tincidunt@google.net','VJX83DZO3KS','1-782-252-8811',1,'2019-04-02 20:31:35');
INSERT INTO users (first_name,last_name,email,password,phone,type_id,created_at)
VALUES
  ('Brandon','Bryan','parturient.montes@yahoo.couk','RCV57RRF8JZ','(915) 719-2954',2,'2019-11-18 23:20:02'),
  ('Keegan','Rodriguez','ornare.egestas.ligula@yahoo.net','DZX56SRN2SR','(347) 334-7312',2,'2020-04-10 16:50:01'),
  ('Levi','Frost','dis.parturient@protonmail.ca','GVG34LQM0PG','(957) 514-5234',2,'2020-05-14 14:11:50'),
  ('Ray','Douglas','libero.nec@protonmail.edu','OHV71BUE0SN','1-368-633-2244',1,'2022-04-03 05:20:35'),
  ('Brendan','Snider','libero.at@aol.net','VDR15PHO6ZQ','1-269-656-3667',2,'2020-07-18 18:00:33'),
  ('Nathaniel','Dudley','nunc.quisque.ornare@protonmail.couk','PEK48RTN2WN','(227) 615-9424',2,'2022-01-16 10:10:07'),
  ('Caesar','Carson','tincidunt.neque@protonmail.org','VHQ65VFU6ZP','1-261-186-8413',1,'2020-10-05 07:07:46'),
  ('Jacob','Richmond','cursus@google.com','FBU66CKH8AT','(341) 565-9344',1,'2020-10-23 22:38:11'),
  ('Talon','Daugherty','quis@yahoo.org','GLO35COZ1HB','(753) 661-7116',2,'2019-06-06 05:12:57'),
  ('Gareth','James','suscipit@outlook.org','OSQ55GNV5NH','(367) 355-5630',1,'2019-05-08 22:13:33');
INSERT INTO users (first_name,last_name,email,password,phone,type_id,created_at)
VALUES
  ('Jakeem','Emerson','egestas.lacinia@google.edu','SRW66FNW5BR','1-273-493-8067',1,'2019-04-04 14:51:54'),
  ('Carter','Ayala','lobortis@hotmail.edu','YVL91NCZ8JS','(164) 815-9196',2,'2022-12-07 14:25:22'),
  ('Akeem','Berger','feugiat.placerat@aol.org','SZJ14ULU5NM','1-473-398-9482',2,'2020-06-16 07:55:21'),
  ('Flynn','Mccullough','magnis.dis@google.edu','ZCX50PIG6GL','1-861-637-4826',2,'2019-12-15 05:46:37'),
  ('Zahir','Lynn','nulla.donec@google.edu','MOJ85ZDA2TC','(764) 388-8383',2,'2019-07-03 22:22:41'),
  ('Leonard','Lopez','ante@icloud.net','MDC13JQN2WT','1-530-204-5476',2,'2021-06-03 08:31:03'),
  ('Dylan','Norman','ligula.aliquam.erat@icloud.com','RJC37YEI3XF','1-291-620-4681',2,'2020-04-20 13:07:27'),
  ('Barclay','Delgado','nec.mauris@aol.net','EUD11SVA4WK','(513) 514-7338',2,'2020-05-01 03:27:22'),
  ('Kennedy','Odom','aenean.euismod.mauris@outlook.org','TUW01FVY4IY','1-793-243-9702',2,'2022-08-14 07:38:07'),
  ('Gregory','Mueller','quis.accumsan@yahoo.org','KWQ61UXT8XY','(962) 938-6567',2,'2020-02-04 00:08:16');
