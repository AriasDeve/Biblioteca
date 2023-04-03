/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.20-MariaDB : Database - library
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`library` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `library`;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `idbook` int(11) NOT NULL AUTO_INCREMENT,
  `idcategorie` int(11) NOT NULL,
  `idsubcategorie` int(11) NOT NULL,
  `codes` varchar(30) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `descriptions` varchar(150) NOT NULL,
  `author` varchar(150) DEFAULT NULL,
  `state` varchar(30) NOT NULL,
  `locationresponsible` varchar(50) NOT NULL,
  `url` varchar(250) DEFAULT NULL,
  `frontpage` varchar(50) DEFAULT NULL,
  `registrationdate` datetime NOT NULL DEFAULT current_timestamp(),
  `state2` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idbook`),
  KEY `fk_idcategorie_categories` (`idcategorie`),
  KEY `fk_idsubcategorie_subcategories` (`idsubcategorie`),
  CONSTRAINT `fk_idcategorie_categories` FOREIGN KEY (`idcategorie`) REFERENCES `categories` (`idcategorie`),
  CONSTRAINT `fk_idsubcategorie_subcategories` FOREIGN KEY (`idsubcategorie`) REFERENCES `subcategories` (`idsubcategorie`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4;

/*Data for the table `books` */

insert  into `books`(`idbook`,`idcategorie`,`idsubcategorie`,`codes`,`amount`,`descriptions`,`author`,`state`,`locationresponsible`,`url`,`frontpage`,`registrationdate`,`state2`) values 
(1,1,1,'C001','02','Probabilidad y estadística como trabajar con niños y jóvenes','Ana P, de Bressan/Oscar Bogisic','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(2,1,1,'C002','02','Razones para enseñar geometría en la educación básica','Ana P, de Bressan/Beatriz Bogic','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(3,1,1,'C003','02','Juegos y problemas para construir ideas matemáticas','Stella Ricotti','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(4,1,1,'C004','02','Física conceptual','Paul G, Hewitt','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(5,1,1,'C005','02','La crisis planetaria del calendario global y cómo afrontarlo','Editorial Gedisa','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(6,1,1,'C006','02','Enciclopedia didáctica de las ciencias naturales','Editorial océano','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(7,1,1,'C007','08','Atlas del cuerpo humano','Editorial Ars Medica','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(8,1,1,'C008','08','Atlas del cielo,un viaje entre las estrellas y planeta para conocer el universo','Ediciones V, D-SAC','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(9,1,1,'C009','02','Matemáticas para el c´álculo, pre cálculo N°06','James, Stewart/Lother Redlin','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(10,1,1,'C010','08','La biblia de la física y la química','Editorial Lexus','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(11,1,1,'C011','08','Economía para todos','Instituto Apoyo','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(12,1,1,'C012','08','NEXUS/ciencias para el mundo contemporáneo','Editorial océano','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(13,1,1,'C013','08','Cuentos de matemáticas','J,C Hervás/A.M Benavente','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(14,1,1,'C014','02','Ciencia/la guía visual definitica','Adam hart - davis','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(15,1,1,'C015','08','Mentor de las matemáticas con ejercicios resueltos','Editorial Oceano','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(16,1,1,'C016','16','Economía para principiantes','Alejandro Gorvie/Sanyo','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(17,1,1,'C017','08','La biblia de las ciencias anturales','Editoral Lexus','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(18,1,1,'C018','02','Atlas National Geographic la tierra y el Universo','National Geographic','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:04:58','1'),
(19,1,2,'C019','01','Las Matemáticas en la vida cotidiana','Universal Autónoma de Madrid','B','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(20,1,2,'C020','01','La Enseñanza de la matemática','Juan Carlos Sánchez','B','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(21,1,2,'C021','04','Proyecto de matemática','Tulio Ozejo-Zenobia Zenobia Lapa','B','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(22,1,2,'C022','01','Historia e historias de matemáticas','Mariano Perero','B','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(23,1,2,'C023','02','Matemáticas 08','E.G.B Santillana','B','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(24,1,2,'C024','02','Matemáticas 07','E.G.B Santillana','B','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(25,1,2,'C025','01','Frutal,Matemática 2°','Fernando Alvarez - Vicens - vives','B','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(26,1,2,'C026','01','Calculo numérico','Vicens - vives','B','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(27,1,2,'C027','01','ABACO 2 Matemática','Santillana','R','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(28,1,2,'C028','01','Las matemáticas en tus manos','Luisa coreaga - Margarita cos','R','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(29,1,2,'C029','01','Matemática moderna 1°','Campos villavicencio','M','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(30,1,2,'C030','02','Matemáticas 1°','Máximo de la cruz Solórzano','M','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(31,1,2,'C031','03','Matemática moderna 2°','Máximo de la cruz Solórzano','M','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(32,1,2,'C032','02','Matemáticas 1°','Rubén Romero Méndez','R','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(33,1,2,'C033','02','Matemáticas 1°','Placentinos camilo rodríguez','R','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(34,1,2,'C034','01','Matemáticas 1°','Flavio vega Villanueva','M','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(35,1,2,'C035','01','Aritmética 1°','Repetto Linskens, Fesquet','M','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(36,1,2,'C036','01','Matemáticas 1°','Felipe E, Sebastiáni','M','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(37,1,2,'C037','01','Matemáticas 1°','Virgilio Gutiérrez','R','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(38,1,2,'C038','01','Matemáticas 2°','Máximo de la cruz Solórzano','R','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(39,1,2,'C039','02','Matemática teoría y práctica 5°','Gustavo Rojas Gasco','R','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(40,1,2,'C040','02','Matemáticas 3°','Máximo de la cruz Solórzano','R','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(41,1,2,'C041','01','Matemáticas para todos los niveles, vol. 9','Simón Mochón','R','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(42,1,2,'C042','02','Geometría del espacio, trigonometría 5°','Flavio vega Villanueva','R','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(43,1,2,'C043','01','Geometría del espacio, trigonometría 5°','Máximo de la cruz Solórzano','R','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(44,1,2,'C044','01','Razonamiento lógico matemático 2°','Rubén Romero Mendez','B','C.R.E',NULL,NULL,'2023-03-21 12:15:37','1'),
(45,2,5,'C045','02','Educar la mirada/políticas y pedagogías de la imagen','Inés Dusal/Daniela Gutiérrez','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(46,2,5,'C046','02','Didáctica de la lengua castellana y la literatura','Uri, Ruiz Bikandi','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(47,2,5,'C047','02','Enseñar literatura en secundaria, la formación de lectores críticos motivados y cultos','G, Bordons. A Díaz Plaja','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(48,2,5,'C048','02','09 ideas clave, educar en la adolescencia','Jaume Funes Artiaga','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(49,2,5,'C049','02','PNL para profesores; mejora tu conocimiento y tus relaciones','Albert Serrat','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(50,2,5,'C050','02','El cultivo del discernimiento ensayos sobre ética ciudadana y educación','Susana Frisancho/Gonzalo Gamio','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(51,2,5,'C051','02','Sistematización de la práctica docente','Carlos A. Audirac Camarena','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(52,2,5,'C052','02','Educación convivencia y agresión escolar','Enrique, Chaux','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(53,2,5,'C053','08','Dinámica de grupos y autoconciencia emocional','Jesús M, canto Ortiz/Verónica Montilla Bervel','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(54,2,5,'C054','08','Basic Gramman in use','Raymond Murphy','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(55,2,5,'C055','08','Pocket Longman/Diccionario ingles Español','Ediciones Pearson','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(56,2,5,'C056','08','The Heinle Picture Dictionary','Cengale Learnig','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(57,2,5,'C057','02','Procedimiento en historia un punto de vista didáctico','Cristófol-A. Trepat','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(58,2,5,'C058','02','Técnicas de aprendizaje colaborativo','Elizabeth F. Barkley/K.Patricia Cross/Claire.Howel','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(59,2,5,'C059','02','Aprender a resolver conflictos/programa para mejorar la convivencia escolar','David Álvarez P/José Carlos Núñez Pérez','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(60,2,5,'C060','08','Las lagunas del Perú','Luis Andrade Ciudad/Jorge Iván,P','B','Biblioteca escolar',NULL,NULL,'2023-03-21 12:22:48','1'),
(61,2,3,'C061','15','Romeo and Julieta','William Shakes peare','B','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(62,2,3,'C062','01','One, Two . teni book 2°','Santillana','B','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(63,2,3,'C063','02','One, Two . teni book 3°','Santillana','B','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(64,2,3,'C064','02','One, Two . teni book 4°','Santillana','B','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(65,2,3,'C065','03','One, Two . teni book 6°','Santillana','B','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(66,2,3,'C066','02','One, Two . teni book 8°','Santillana','R','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(67,2,3,'C067','03','One, Two . teni book 9°','Santillana','R','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(68,2,3,'C068','03','One, Two . teni book 10°','Santillana','R','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(69,2,3,'C069','02','My english book 2°','Bertha Suarez de Mayandia','M','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(70,2,3,'C070','02','My english task 7°','Bertha Suarez de Mayandia','M','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(71,2,3,'C071','01','English course book three 3° 4°','Vince Quispe Andia','R','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(72,2,3,'C072','15','The x -files, Squeeze','Ellen steiber','B','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(73,2,3,'C073','01','Back to school','Armando Salinas Acosta','M','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(74,2,3,'C074','05','English course','Vince Quispe Andia','B','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(75,2,3,'C075','15','Súper Computerman','Jeremy Taylor','B','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(76,2,3,'C076','01','Diccionario Universal español-ingles','Larousse','R','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(77,2,3,'C077','01','Dictionary-para estudiantes de ingles','Richmond-Santillana','B','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(78,2,3,'C078','01','Dictionary-CONCISE','Richmond-Santillana','B','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(79,2,3,'C079','08','El umbral del milenio I,II,III,VI','Prom Perú(donación)','B','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(80,2,3,'C080','02','Perú An, Economy ford the list century','B.C.P(donations)','B','C.R.E',NULL,NULL,'2023-03-21 12:25:27','1'),
(81,2,4,'C081','12','El arte y los estilos','Editorial Sopena','R','C.R.E',NULL,NULL,'2023-03-22 08:11:49','1'),
(82,2,4,'C082','04','Taller de manualidades','Editorial parramon','R','C.R.E',NULL,NULL,'2023-03-22 08:11:49','1'),
(83,2,4,'C083','06','Taller carpintería','Editorail Daly','B','C.R.E',NULL,NULL,'2023-03-22 08:11:49','1'),
(84,2,4,'C084','14','Enciclipedias temáticas','Editorial Richards','B','C.R.E',NULL,NULL,'2023-03-22 08:11:49','1'),
(85,2,4,'C085','08','Geografía del Perú Naturaleza y hombre','Editorial Manfer','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(86,2,4,'C086','06','Atlas del Perú y del mundo','M.D.E','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(87,2,4,'C087','02','El Perú y sus recursos','Editorial cobol','R','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(88,2,4,'C088','01','Atlas del Perú y del mundo','Editorial Bruño','R','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(89,2,4,'C089','01','Gran atlas de historia universal','Colin MC, evedy','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(90,2,4,'C090','02','Primeras planas de siglo XX','Editorial el comercio','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(91,2,4,'C091','02','Atlas Histórico','Joan, Roig Obiol','R','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(92,2,4,'C092','07','Historial del humanidad','Larousse','R','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(93,2,4,'C093','01','Atlas del Perú y del mundo','Julio R, Villanueva','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(94,2,4,'C094','01','Atlas compacto','Peters','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(95,2,4,'C095','01','Atlas universal del Perú','Editorial Bruño','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(96,2,4,'C096','01','El territorio del cóndor','Ediciones PEISA','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(97,2,4,'C097','01','El territorio del jaguar','Ediciones PEISA','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(98,2,4,'C098','01','Filosofía 3°','Santillana','R','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(99,2,4,'C099','01','Enciclopedia familiar de la medicina y la salud','Morris Fishbein','R','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(100,2,4,'C100','01','Psicología Social','David Krech','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(101,2,4,'C101','01','Tradciones peruanas','Ricardo Palma','R','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(102,2,4,'C102','09','Enciclopedia de la historia general del Perú I,II,III,IV,V,VI,VII,VIII,IX','Margarita, Guerra Martiniéri','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(103,2,4,'C103','03','Diccionario Ilustrado','Nuevo Sopena','M','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(104,2,4,'C104','05','Diccionario palabras','Editorial escuela nueva, M.D.E','M','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(105,2,4,'C105','02','Diccionario enciclopédico','Navarrete','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(106,2,4,'C106','03','Mi diccionario','Andrés bello','R','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(107,2,4,'C107','02','La enciclo','Editorial anaya','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(108,2,4,'C108','01','Diccionario escolar infantil','Editorial Norma','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(109,2,4,'C109','01','Enciclopedia del Perú','Editorial Océano','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(110,2,4,'C110','01','Diccionario enciclopedia','Editorial visor','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(111,2,4,'C111','01','La enciclopedia V-1','Editorial Salvat','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(112,2,4,'C112','01','Diccionario escolar lengua española','Editorial','B','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(113,2,4,'C113','01','La región Humana','Alberto Valdivia','R','C.R.E',NULL,NULL,'2023-03-22 08:11:50','1'),
(114,3,6,'C114','08','Pedro Páramo','José Carlos, Gonzales/Juan Rulfo','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(115,3,6,'C115','08','Los perros hambrientos','Ciro Alegría','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(116,3,6,'C116','08','Un mundo para Julios','Alfredo Bryce Echenique','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(117,3,6,'C117','08','Cuentos de antología','Julio Ramón Ribeyro','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(118,3,6,'C118','08','El viejo saurio se retira','Miguel Gutiérrez','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(119,3,6,'C119','08','La casa de cartón','Martín Adán','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(120,3,6,'C120','08','País de jaula','Edgardo Rivera Martínez','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(121,3,6,'C121','08','Los 7 hábitos de lso adolescentes altamente efectivos','Sean Covey','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(122,3,6,'C122','08','Poetas peruanas','Ricardo Gonzales Vigil','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(123,3,6,'C123','08','El quijote de la Mancha','Miguel de Cervantes','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(124,3,6,'C124','08','Yawar fiesta(fiesta de sangre)','José María Arguedas','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(125,3,6,'C125','08','Los inocentes','Oswaldo Reinoso','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(126,3,6,'C126','08','Antología didáctica, Agua, oda al Jet','José María Arguedas','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(127,3,6,'C127','08','La leyenda del cid','Agustín Sánchez Aguilar','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(128,3,6,'C128','08','Tragedias, Edipo Rey, Antígona','Sófocles','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(129,3,6,'C129','08','El principito','Antonie de saint-Exupéry','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(130,3,6,'C130','08','24 poetas latinoamericanas','Coedición Latinoamericana','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(131,3,6,'C131','08','Historia de la literatura hispanoamericana T-I,II,III,IV','José Miguel Oviedo','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(132,3,6,'C132','08','Cien años de soledad','Gabriel García Márquez','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(133,3,6,'C133','08','Cuentos de té y otros árboles','Mónica Rodríguez Suárez','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(134,3,6,'C134','08','El cristo de Villenas','Carlos Eduardo Zavaleta','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(135,3,6,'C135','08','Poesía Peruana,Antología general de vallejo a nuestros días T III','Ricardo, Gonzáles Vigil','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(136,3,6,'C136','08','Tragedias','William Shakespeare','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(137,3,6,'C137','08','La llamada de lo salvaje','Jack Londón','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(138,3,6,'C138','08','El túnel','Ernesto Sábato','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(139,3,6,'C139','08','Mitos leyendas y cuentos peruanos','José María Arguedas/Francisco Izquierdo Ríos','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(140,3,6,'C140','08','Los jefes/los cachorros','Mario Vargas Llosa','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(141,3,6,'C141','08','Cuentos reunidos','Abraham Valdelomar','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(142,3,6,'C142','08','El señor de las moscas','William Golding','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(143,3,6,'C143','08','Obra poética','Cesar Vallejo','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(144,3,6,'C144','08','Tradiciones Peruanas','Ricardo Palma','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(145,3,6,'C145','08','Poesías completas','José María, Eguren','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(146,3,6,'C146','08','Cuentos inolvidables','Julio Cortazar','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(147,3,6,'C147','08','Ética para amador','Fernando Savater','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(148,3,6,'C148','08','La cocina de la escritura','Daniel Cassany','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(149,3,6,'C149','08','17 Narradoras latinoamericanass','Coedición latinoamericana','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:27:55','1'),
(150,3,6,'C150','08','Historia de las cosas','Annie Leonard','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:33:12','1'),
(151,3,6,'C151','08','El principe que todo lo aprendio en los libros','Jacinto Benavente','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:33:12','1'),
(152,3,6,'C152','08','La ciudad y los perros','Mario Vargas Llosa','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:33:12','1'),
(153,3,6,'C153','08','El guardián entre el centeno','J.D Salinger','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:33:12','1'),
(154,3,6,'C154','08','Diccionario Panhispánico de dudas','Real academia Española','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:33:12','1'),
(155,3,6,'C155','08','Diccionario sinónimos y antónimos','María Moliner','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:33:12','1'),
(156,3,6,'C156','08','100 poemas en homenaje a la vida','Hugo García Castellano','B','Biblioteca escolar',NULL,NULL,'2023-03-22 08:33:12','1'),
(157,3,7,'C157','01','Guía para preparar monografías','Pablo Valle, Ezequiel Ander','R','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(158,3,7,'C158','01','Literatura 4°','R, Barrenechea N','R','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(159,3,7,'C159','01','Obra Completa','Juan del Valle y Cabiedes','B','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(160,3,7,'C160','01','Literatura peruana tomo I','Luis Alberto Sánchez','B','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(161,3,7,'C161','01','Literatura peruana tomo II','Luis Alberto Sánchez','B','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(162,3,7,'C162','01','Literatura peruana tomo III','Luis Alberto Sánchez','B','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(163,3,7,'C163','01','Literatura peruana tomo IV','Luis Alberto Sánchez','B','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(164,3,7,'C164','01','Literatura peruana tomo V','Luis Alberto Sánchez','B','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(165,3,7,'C165','01','Viajes de Gulliver','Jonathan Swift','R','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(166,3,7,'C166','01','El tungsteno','Cesar Vallejo','R','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(167,3,7,'C167','18','Documental del Perú','Pedro Felipa Cortázar','R','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(168,3,7,'C168','01','Experiencia sobre Morir','Hohn Minton','R','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(169,3,7,'C169','01','Mecanoscrito del segundo origen','Manuel de pedrosa','R','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(170,3,7,'C170','01','Mody Dick','Hernán Nevilla','R','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(171,3,7,'C171','01','Ollanta','Editoral Mercurio','R','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(172,3,7,'C172','01','Todas las sangres','José María Arguedas','R','C.R.E',NULL,NULL,'2023-03-22 08:58:55','1'),
(173,3,7,'C173','02','Doña flor y sus dos meridos','Jorge Amado','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(174,3,7,'C174','02','Canto general','Pablo Neruda','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(175,3,7,'C175','02','Cambio de Piel','Carlos Fuentes','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(176,3,7,'C176','02','Doña Bárbara','Rómulo Gallegos','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(177,3,7,'C177','02','Martín Fierro','José Hernández','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(178,3,7,'C178','03','Un mundo para Julios','Alfredo Bryce Echenique','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(179,3,7,'C179','02','La habana para un infante difunto','Guillermo Cabrera','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(180,3,7,'C180','02','Yo, él supremo','Augusto Roa Bastos','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(181,3,7,'C181','03','Cien años de soledad','Gabriel García Márquez','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(182,3,7,'C182','02','Obra poética','Cesar Vallejo','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(183,3,7,'C183','01','Cartas 1° selección','J Ramón Jiménez','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(184,3,7,'C184','01','Don Quijote de la mancha','Miguel de Cervantes Saavedra','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(185,3,7,'C185','01','Barrio de Broncas','José Antoni Bravo','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(186,3,7,'C186','01','Historia de dos ciudades','Charles Dickens','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(187,3,7,'C187','04','Relatos Fantásticos','Vicens Vives','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(188,3,7,'C188','01','Per Ibañez y el comendador de Ocaña','Lope de vega','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(189,3,7,'C189','01','Edipo Rey','Sófocles','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(190,3,7,'C190','01','La palabra del Mundo (Antología)','Julio Ramón Ribeyro','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(191,3,7,'C191','01','Los Ríos profundos','José María Arguedas','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(192,3,7,'C192','01','Charlie y la Fábrica de chocolate','Roald Dahl','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(193,3,7,'C193','01','Un joven una sombra','C.E. Zavaleta','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(194,3,7,'C194','01','Fiesta prohibida','Jesús cabel','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(195,3,7,'C195','01','Ollanta - Drama Inca','Anónimo','B','C.R.E',NULL,NULL,'2023-03-22 09:12:48','1'),
(196,3,7,'C196','01','Casa de muñecas','Henrik Ibsen','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(197,3,7,'C197','01','Romancero gitano - poeta en Nueva York','Federico García Lorca','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(198,3,7,'C198','01','Antes de la edad de oro','Isaac Asimov','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(199,3,7,'C199','01','Cuerpos y almas','Maxence Vande Heersch','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(200,3,7,'C200','01','La ciudad y los perros','Mario Vargas Llosa','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(201,3,7,'C201','01','Lo mejor de la ciencia ficcion del siglo XX','Isaac Asimov','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(202,3,7,'C202','01','¡Hagan sitio! ¡Hagan sitio!','Harry Harrison','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(203,3,7,'C203','01','Los alucinados/Vinzenz y la amiga de los hombres importantes','Robert Husil','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(204,3,7,'C204','01','Nueva narraciones extraordinarias','Edgar Allan Poe','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(205,3,7,'C205','01','7 ensayos de intepretación de la realidad peruana','José Carlos Mariátegui','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(206,3,7,'C206','01','Almas muertas','Nicolal Gogol','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(207,3,7,'C207','01','El mantón negro y otros cuentos','Luigi Pirandello','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(208,3,7,'C208','01','Historia de la civilización antigua','Thadee Zielinski','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(209,3,7,'C209','01','La comedia humana I','Honoré de Balzac','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(210,3,7,'C210','01','La brevedad de la vida','Séneca','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(211,3,7,'C211','01','Nada','Carmen Laforet','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(212,3,7,'C212','01','Ana Karenina I, II','León Tolstoi','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(213,3,7,'C213','01','La casa de cartón','Martín Adán','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(214,3,7,'C214','01','La divina comedia','Dante Alighieri','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(215,3,7,'C215','01','Romeo y julieta','William Shakespeare','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(216,3,7,'C216','01','Momo','Michael Ende','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(217,3,7,'C217','01','Tres novelas ejemplares','Miguel de cervantes','B','C.R.E',NULL,NULL,'2023-03-22 09:27:50','1'),
(218,3,7,'C218','01','La palabra del mundo','Julio Ramón Ribeyro(antología)','B','C.R.E',NULL,NULL,'2023-03-22 10:36:05','1'),
(219,3,7,'C219','01','Los jefes/los cachorros','Mario Vargas llosa','B','C.R.E',NULL,NULL,'2023-03-22 10:36:05','1'),
(220,3,7,'C220','01','El azar y la necesidad','Jacques monod','R','C.R.E',NULL,NULL,'2023-03-22 10:36:05','1'),
(221,3,7,'C221','01','Espejos educadores','Saturnino gallego','R','C.R.E',NULL,NULL,'2023-03-22 10:36:05','1'),
(222,3,7,'C222','01','Todos los cuentos','Gabriel Garcia Marquez','R','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(223,3,7,'C223','01','Tradicones peruanas','Ricardo palma','B','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(224,3,7,'C224','01','Historia de cronopios y de famas','Julio Cortázar','B','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(225,3,7,'C225','01','Pedro páramo y el llano en llamas','Juan Rulfo','B','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(226,3,7,'C226','01','Medea, Electra','Eurípides','B','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(227,3,7,'C227','01','Prometeo encadenado/los persas','Esquilo','B','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(228,3,7,'C228','01','Eso no me lo quita nadie','Ana María Machado','B','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(229,3,7,'C229','01','Un marido para mamá','Christine Nostlinger','B','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(230,3,7,'C230','01','Un muchacho que inventaba historias','Margaret mahy','B','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(231,3,7,'C231','01','Experiencias sobre morir','John Hinton','R','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(232,3,7,'C232','01','El gran enigma de los platillos volantes','Antonio Ribera','M','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(233,3,7,'C233','01','La Ilíada','Homero','R','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(234,3,7,'C234','03','Raimondi y llona','Teresa María Llonba','R','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(235,3,7,'C235','01','Itinerarios de Lima','Héctor velarde','R','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(236,3,7,'C236','01','El mercader y marqués','Bernard Lavalle','R','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(237,3,7,'C237','01','Madre, e hijo cruzando el río','Erneto Zierer','R','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(238,3,7,'C238','01','Puñales escondidos','Pilar Dughi','B','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(239,3,7,'C239','01','Ultimo capitulo','Irma de águila','R','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(240,3,7,'C240','01','El zorro y la luna','José Antonio Mazzotti','R','C.R.E',NULL,NULL,'2023-03-22 10:36:06','1'),
(241,3,7,'C241','05','Relatos selectos','Antología Didáctica','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(242,3,7,'C242','01','Puruchuco','Arturo jiménez borja','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(243,3,7,'C243','01','La embestida del carnero y otro cuentos','Teodoro Garcés','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(244,3,7,'C244','01','Comas y su historia','Santiago Tucumán Bonifacio','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(245,3,7,'C245','03','El general en su laberinto','Gabriel García Márquez','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(246,3,7,'C246','01','Siempre hay camino','Ciro Alegría','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(247,3,7,'C247','01','Pasión por Vallejo','J, Castañon','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(248,3,7,'C248','01','Llanto sagrado de la América meridional','Fray Francisco Romero','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(249,3,7,'C249','01','Biografía de Martín Adán','José Antonio Bravo','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(250,3,7,'C250','01','Alicia en el País de las maravillas','Lewis Carroll','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(251,3,7,'C251','01','El faro del fin del mundo','Julio Verne','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(252,3,7,'C252','01','El fantasma de caterville y otro cuentos','Oscar Wide','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(253,3,7,'C253','01','El escarabajo, los crímenes de la calle morgue','Edgar Allan Poe','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(254,3,7,'C254','01','Poesía Indiana','José Luis Millones','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(255,3,7,'C255','01','Cesar Vallejo','Ricardo Gonzales Vigil','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(256,3,7,'C256','01','Mateo Puamaccahua, cacique de chinchero','Luz peralta, Miguel pinto','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(257,3,7,'C257','01','La poética de la poesía póstuma de Vallejo','Carlos Henderson','R','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(258,3,7,'C258','02','Ángeles apócrifos en la América virreinal','Ramón mujica padilla','B','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(259,3,7,'C259','02','Pensamiento y Acción','Ramón Remolina','B','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(260,3,7,'C260','01','Ayacucho, tradiciones peruanas de ricardo palma','Tomas Santillana Cantella','B','C.R.E',NULL,NULL,'2023-03-22 10:53:01','1'),
(313,1,1,'C261','02','Probabilidad y estadística como trabajar con niños y jóvenes','Ana P, de Bressan/Oscar Bogisic','Bddddd','Biblioteca escolar','','','2023-03-28 11:41:53','1'),
(314,1,3,'C262','1','1','1','1','1','8a56bc2b99453293291789be08553ceb6959039b.pdf','8a56bc2b99453293291789be08553ceb6959039b.jpg','2023-03-28 12:02:48','1'),
(315,2,3,'C263','1','PRUEBDA28','PRUEBDA28','M','PRUEBDA28','f7e63db60d9abcf9a2b180c3f69e9686108be951.pdf','f7e63db60d9abcf9a2b180c3f69e9686108be951.jpg','2023-03-29 11:18:52','1');

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `idcategorie` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) NOT NULL,
  `registrationdate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idcategorie`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `categories` */

insert  into `categories`(`idcategorie`,`categoryname`,`registrationdate`) values 
(1,'Bibliografia, Ciencias Puras','2023-03-21 09:02:08'),
(2,'Bibliografia, Filología Linguística','2023-03-21 09:03:06'),
(3,'Biibliografia, literatura Latina','2023-03-21 10:37:22');

/*Table structure for table `subcategories` */

DROP TABLE IF EXISTS `subcategories`;

CREATE TABLE `subcategories` (
  `idsubcategorie` int(11) NOT NULL AUTO_INCREMENT,
  `idcategorie` int(11) NOT NULL,
  `subcategoryname` varchar(100) DEFAULT NULL,
  `registrationdate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idsubcategorie`),
  KEY `fk_idcategorie_subcategories` (`idcategorie`),
  CONSTRAINT `fk_idcategorie_subcategories` FOREIGN KEY (`idcategorie`) REFERENCES `categories` (`idcategorie`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `subcategories` */

insert  into `subcategories`(`idsubcategorie`,`idcategorie`,`subcategoryname`,`registrationdate`) values 
(1,1,'Módulo Base Biblioteca para secundaria - Ciencias ','2023-03-21 11:40:36'),
(2,1,'Matemática/Secundaria','2023-03-21 11:40:36'),
(3,2,'Textos Ingles/Secundaria','2023-03-21 12:19:00'),
(4,2,'Enciclopedias Tematicas','2023-03-21 12:19:00'),
(5,2,'Módulo Base Biblioteca para secundaria - Filología','2023-03-21 12:19:00'),
(6,3,'Módulo Base Biblioteca para secundaria - Literatura latina','2023-03-22 08:16:46'),
(7,3,'Obras Literarias','2023-03-22 08:16:46'),
(8,3,'Lenguaje y Literatura','2023-03-22 08:16:46');

/* Procedure structure for procedure `spu_bookscategory_list` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_bookscategory_list` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_bookscategory_list`(
		IN _idsubcategorie INT
	)
BEGIN
		SELECT  b.descriptions, b.author,b.frontpage
			FROM books b
		INNER JOIN subcategories c ON c.idsubcategorie = b.idsubcategorie
		WHERE _idsubcategorie = b.idsubcategorie;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_books_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_books_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_books_delete`(IN _idbook INT)
BEGIN
		UPDATE books SET state2 = '0' WHERE idbook = _idbook;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_books_list` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_books_list` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_books_list`()
BEGIN
		SELECT  b.idbook,ca.categoryname, c.subcategoryname, b.codes, b.amount, b.descriptions,
			b.author, b.state, b.locationresponsible, b.url, b.frontpage
			FROM books b
		INNER JOIN subcategories c ON c.idsubcategorie = b.idsubcategorie
		INNER JOIN categories ca ON ca.idcategorie = b.idcategorie
		WHERE b.state2 = "1";
	END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_books_obtain` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_books_obtain` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_books_obtain`(IN _idbook INT)
BEGIN
	SELECT  idbook,idcategorie,idsubcategorie, codes, amount, descriptions,
			author, state, locationresponsible, url, frontpage
			FROM books 
		WHERE state2 = "1" AND idbook = _idbook;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_books_register` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_books_register` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_books_register`(
			IN _idcategorie		INT,
			IN _idsubcategorie	INT,
			IN _amount 		VARCHAR(30),
			IN _descriptions 	VARCHAR(150),
			IN _author		VARCHAR(150),
			IN _state 		VARCHAR(30),
			IN _locationresponsible VARCHAR(50),
			IN _url			VARCHAR(150),
			IN _frontpage		VARCHAR(150)
		)
BEGIN
			DECLARE maximo VARCHAR (30);	
			DECLARE num INT;
			DECLARE cod VARCHAR (30);	
			SET maximo = (SELECT MAX(codes) FROM books);
			SET num = (SELECT LTRIM(RIGHT(maximo,3)));
			
			IF num>=1 AND num<=8 THEN
			 SET num=num+1;
			 SET cod = (SELECT CONCAT('C00', CAST(num AS CHAR)));
			ELSEIF num>=9 AND num<=98 THEN
			 SET num=num+1;
			 SET cod = (SELECT CONCAT('C0', CAST(num AS CHAR)));
			ELSEIF num>=99 AND num<=998 THEN
			 SET num=num+1;
			 SET cod = (SELECT CONCAT('C', CAST(num AS CHAR)));
			ELSE 
			 SET cod = (SELECT 'C001');
			END IF;

			INSERT INTO books(idcategorie,idsubcategorie,codes,amount,descriptions,author,state,locationresponsible,url,frontpage)VALUES(_idcategorie,_idsubcategorie,cod,_amount,_descriptions,_author,_state,_locationresponsible,_url,_frontpage);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_books_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_books_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_books_update`(
		IN _idbook		INT,
		IN _idcategorie		INT,
		IN _idsubcategorie	INT,
		IN _amount		VARCHAR(30),
		IN _descriptions	VARCHAR(150),
		IN _author		VARCHAR (150),
		IN _state		VARCHAR(30),
		IN _locationresponsible VARCHAR(50),
		IN _url			VARCHAR(150) ,
		IN _frontpage		VARCHAR(150)
	)
BEGIN

		UPDATE books SET
			idcategorie 		= _idcategorie,
			idsubcategorie 		= _idsubcategorie,
			amount 			= _amount,
			descriptions 		= _descriptions,
			author 			= _author,
			state 			= _state,
			locationresponsible 	= _locationresponsible,
			url 			= _url,
			frontpage 		= _frontpage
		WHERE idbook = _idbook;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_categories_list` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_categories_list` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_categories_list`()
BEGIN
		SELECT idcategorie, categoryname
			FROM categories;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_productos_obtener` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_productos_obtener` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_productos_obtener`(IN _idproducto INT)
BEGIN
SELECT idproducto, idclasificacion, idmarca, descripcion, esnuevo, numeroserie, precio
	FROM productos
	WHERE estado = '1' AND idproducto = _idproducto;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spu_subcategories_list` */

/*!50003 DROP PROCEDURE IF EXISTS  `spu_subcategories_list` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spu_subcategories_list`()
BEGIN
		SELECT idsubcategorie, subcategoryname
			FROM subcategories;
	END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
