CREATE DATABASE reactback;

USE reactback;

CREATE TABLE `user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `equipment` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `serialnumber` varchar(100) NOT NULL,
  `patrimony` varchar(100) DEFAULT '',
  `locale` varchar(100) DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO equipment (name,serialnumber,patrimony,locale,status) VALUES
	 ('Notebook HP','111110','00123456','Homeoffice 01',0),
	 ('Monitor AOC','111111','00123456b','Homeoffice 02',0),
	 ('Teclado','111112','ABNT01','Homeoffice 03',1);