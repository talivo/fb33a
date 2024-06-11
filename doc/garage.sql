--
-- Database: `garage`
--
DROP DATABASE IF EXISTS `garage`;
CREATE DATABASE IF NOT EXISTS `garage` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `garage`;

--
-- Tabel: `autos`
--

DROP TABLE IF EXISTS `autos`;
CREATE TABLE IF NOT EXISTS `autos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(255) NOT NULL,
  `beschrijving` text NOT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `bouwjaar` int(11) NOT NULL,
  `tweedehands` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('Sprinter 2500', 'Etiam justo. Etiam pretium iaculis justo.', 'Mercedes-Benz', 2011, 1);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('SRX', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', null, 2012, 0);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('Intrepid', 'Quisque ut erat. Curabitur gravida nisi at nibh.', 'Dodge', 1998, 1);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('Tacoma Xtra', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', 'Toyota', 2001, 0);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('Monterey', 'Morbi ut odio.', 'Mercury', 2004, 0);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('Prowler', 'In hac habitasse platea dictumst.', 'Chrysler', 2002, 1);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('Rodeo', 'Aenean sit amet justo. Morbi ut odio.', 'Isuzu', 2004, 1);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('SL-Class', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', 'Mercedes-Benz', 1988, 0);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('Gemini', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 'Pontiac', 1989, 0);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('GLI', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', 'Volkswagen', 2008, 0);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('Pajero', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 'Mitsubishi', 1995, 1);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('S8', 'Duis at velit eu est congue elementum.', 'Audi', 2006, 0);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('Maxima', 'In eleifend quam a odio. In hac habitasse platea dictumst.', 'Nissan', 1994, 1);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('Familia', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', 'Mazda', 1987, 0);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('MX-5', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 'Mazda', 1990, 0);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('XG350', 'Aliquam non mauris. Morbi non lectus.', 'Hyundai', 2005, 0);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('XL-7', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', 'Suzuki', 2008, 0);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('Landaulet', 'Aenean sit amet justo. Morbi ut odio.', 'Maybach', 2012, 0);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('LX', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 'Lexus', 1996, 1);
insert into autos (titel, beschrijving, merk, bouwjaar, tweedehands) values ('Sienna', 'Nullam porttitor lacus at turpis.', 'Toyota', 2005, 0);
