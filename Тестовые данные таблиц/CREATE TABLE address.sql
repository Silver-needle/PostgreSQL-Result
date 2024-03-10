DROP TABLE IF EXISTS "address";

CREATE TABLE "address" (
  id SERIAL PRIMARY KEY,
  index varchar(10) default NULL,
  country varchar(100) default NULL,
  region varchar(50) default NULL,
  city varchar(255),
  street TEXT default NULL,
  house varchar(255) default NULL
);

INSERT INTO address (index,country,region,city,street,house)
VALUES
  ('694447','Russian Federation','Ryazan Oblast','Ryazan','street15','1'),
  ('400321','Russian Federation','Voronezh Oblast','Voronezh','street10','19'),
  ('171222','Russian Federation','Ryazan Oblast','Ryazan','street15','1'),
  ('191737','Russian Federation','Ivanovo Oblast','Ivanovo','street2','13'),
  ('248110','Russian Federation','Oryol Oblast','Oryol','street10','1'),
  ('676943','Russian Federation','Sevastopol City','Sevastopol','street1','7'),
  ('391099','Russian Federation','Tambov Oblast','Tambov','street11','1'),
  ('651360','Russian Federation','Omsk Oblast','Omsk','street11','7'),
  ('445913','Russian Federation','Nizhny Novgorod Oblast','Nizhny','street1','11'),
  ('621633','Russian Federation','Arkhangelsk Oblast','Onega','street7','15');
