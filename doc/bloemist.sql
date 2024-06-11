--
-- Database: `bloemist`
--
DROP DATABASE IF EXISTS `bloemist`;
CREATE DATABASE IF NOT EXISTS `bloemist` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bloemist`;

--
-- Tabel: `planten`
--

DROP TABLE IF EXISTS `planten`;
CREATE TABLE IF NOT EXISTS `planten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(255) NOT NULL,
  `beschrijving` text NOT NULL,
  `familie` text DEFAULT NULL,
  `leverancier` varchar(255) NOT NULL,
  `aanbieding` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Scoliciosporum Lichen', 'Scoliciosporum umbrinum (Ach.) Arnold', 'Lecanoraceae', 'plantBV', 0);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Palmer''s Wislizenia', 'Wislizenia refracta Engelm. ssp. palmeri (A. Gray) Keller', 'Capparaceae', 'SuperFlower', 1);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Orpine Stonecrop', 'Sedum debile S. Watson', 'Crassulaceae', 'plantBV', 0);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Medusulina Lichen', 'Medusulina Müll. Arg.', 'Graphidaceae', 'SuperFlower', 1);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Virginia Strawberry', 'Fragaria virginiana Duchesne ssp. grayana (Vilm. ex J. Gay) Staudt', 'Rosaceae', 'SuperFlower', 0);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Tidalmarsh Flatsedge', 'Cyperus serotinus Rottb.', 'Cyperaceae', 'SuperFlower', 0);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Candelabra Wattle', 'Acacia holosericea A. Cunn. ex G. Don', 'Fabaceae', 'SuperFlower', 1);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Recurved Blackberry', 'Rubus recurvans Blanch.', 'Rosaceae', 'SuperFlower', 1);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Showy Tarweed', 'Madia elegans D. Don ex Lindl. ssp. densifolia (Greene) D.D. Keck', null, 'plantBV', 1);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Beavertail Pricklypear', 'Opuntia basilaris Engelm. & J.M. Bigelow', 'Cactaceae', 'SuperFlower', 0);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Waimea Pipturus', 'Pipturus albidus (Hook. & Arn.) A. Gray', 'Urticaceae', 'SuperFlower', 1);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Muhly', 'Muhlenbergia ×curtisetosa (Scribn.) Bush (pro sp.)', 'Poaceae', 'SuperFlower', 0);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Northwestern Indian Paintbrush', 'Castilleja angustifolia (Nutt.) G. Don', null, 'treeFactory', 1);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Goose Neck Moss', 'Rhytidiadelphus loreus (Hedw.) Warnst.', 'Hylocomiaceae', 'SuperFlower', 0);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Golden Gladecress', 'Leavenworthia aurea Torr.', 'Brassicaceae', 'plantBV', 0);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Lanceleaf Schlotheimia Moss', 'Schlotheimia lancifolia E.B. Bartram', 'Orthotrichaceae', 'treeFactory', 1);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Smallhead Goldenweed', 'Pyrrocoma liatriformis Greene', 'Asteraceae', 'treeFactory', 1);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Fascicled Beaksedge', 'Rhynchospora fascicularis (Michx.) Vahl var. fascicularis', 'Cyperaceae', 'SuperFlower', 0);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('''ihi Makole', 'Portulaca sclerocarpa A. Gray', 'Portulacaceae', 'treeFactory', 0);
insert into planten (titel, beschrijving, familie, leverancier, aanbieding) values ('Quina', 'Antirhea Comm. ex Juss.', 'Rubiaceae', 'plantBV', 0);
