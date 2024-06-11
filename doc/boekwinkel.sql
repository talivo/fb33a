SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `boekwinkel`
--
DROP DATABASE IF EXISTS `boekwinkel`;
CREATE DATABASE IF NOT EXISTS `boekwinkel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `boekwinkel`;

--
-- Tabel: `boeken`
--

DROP TABLE IF EXISTS `boeken`;
CREATE TABLE IF NOT EXISTS `boeken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(255) NOT NULL,
  `beschrijving` text NOT NULL,
  `taal` varchar(255) NOT NULL,
  `schrijver` text DEFAULT NULL,
  `nieuw` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Zamit', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 'engels', 'Ariana Bompas', 1);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Zathin', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 'duits', 'Lura Van der Son', 1);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Sonsing', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'engels', null, 0);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Biodex', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 'engels', null, 0);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Matsoft', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 'nederlands', 'Maritsa Jukes', 0);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Home Ing', 'Aliquam sit amet diam in magna bibendum imperdiet.', 'duits', 'Silvano Haton', 1);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Temp', 'Duis ac nibh.', 'engels', null, 0);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Veribet', 'Sed sagittis.', 'engels', 'Alleen Sheardown', 0);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Fixflex', 'Morbi porttitor lorem id ligula.', 'duits', 'Kent Pietron', 1);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Quo Lux', 'Ut at dolor quis odio consequat varius. Integer ac leo.', 'engels', 'Garvin Allred', 0);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Solarbreeze', 'Nulla tellus. In sagittis dui vel nisl.', 'duits', 'Caitlin Palliser', 0);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Andalax', 'In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'engels', 'Oneida Aberkirdo', 0);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Alpha', 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', 'engels', 'Brigham Ferres', 1);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Tresom', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', 'duits', 'Bent McCreath', 0);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Cardify', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 'duits', null, 0);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Alphazap', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'engels', null, 1);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Tampflex', 'Nulla facilisi.', 'duits', 'Valentin Piesold', 1);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Holdlamis', 'Praesent lectus.', 'engels', null, 1);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Alpha', 'Vestibulum sed magna at nunc commodo placerat.', 'duits', 'Raine Mityushkin', 0);
insert into boeken (titel, beschrijving, taal, schrijver, nieuw) values ('Ronstring', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 'duits', null, 1);
