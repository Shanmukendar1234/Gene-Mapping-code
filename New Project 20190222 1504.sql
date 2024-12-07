-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.67-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `gene-mapping`
--

CREATE DATABASE IF NOT EXISTS `gene-mapping`;
USE `gene-mapping`;

--
-- Definition of table `amino_acid_seq`
--

DROP TABLE IF EXISTS `amino_acid_seq`;
CREATE TABLE `amino_acid_seq` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `gene_seq` varchar(45) NOT NULL,
  `amino_acid` varchar(45) NOT NULL,
  `short_term` varchar(45) NOT NULL,
  `disease` varchar(45) NOT NULL,
  `drugs` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amino_acid_seq`
--

/*!40000 ALTER TABLE `amino_acid_seq` DISABLE KEYS */;
INSERT INTO `amino_acid_seq` (`id`,`gene_seq`,`amino_acid`,`short_term`,`disease`,`drugs`) VALUES 
 (1,'UUU','PHE','F','Sugar','Acetohexancide,Alogliptin'),
 (2,'UUC','PHE','F','Skin disease','Mupirocin,Antharalin'),
 (3,'UUA','LEU','L','tuberculosis','Isoniazid,rifanipin'),
 (4,'UUG','LEU','L','heartdisease','penthalyn'),
 (5,'UCU','SER','S','',''),
 (6,'UCC','SER','S','',''),
 (7,'UCA','SER','S','',''),
 (8,'UCG','SER','S','',''),
 (9,'UAU','TYR','Y','',''),
 (10,'UAC','TYR','Y','',''),
 (11,'UGC','CYS','C','',''),
 (12,'UGG','TRP','W','',''),
 (13,'UGU','CYS','C','',''),
 (14,'CUU','LEU','L','',''),
 (15,'CUC','LEU','L','',''),
 (16,'CUA','LEU','L','',''),
 (17,'CUG','LEU','L','',''),
 (18,'CCU','PRO','P','',''),
 (19,'CCC','PRO','P','',''),
 (20,'CCA','PRO','P','',''),
 (21,'CCG','PRO','P','',''),
 (22,'CAU','HIS','H','',''),
 (23,'CAC','HIS','H','',''),
 (24,'CAA','GLN','Q','',''),
 (25,'CAG','GLN','Q','',''),
 (26,'CGU','ARG','R','',''),
 (27,'CGC','ARG','R','',''),
 (28,'CGA','ARG','R','',''),
 (29,'CGG','ARG','R','',''),
 (30,'AUU','ILE','I','',''),
 (31,'AUC','ILE','I','',''),
 (32,'AUA','ILE','I','',''),
 (33,'AUG','MET','M','',''),
 (34,'ACU','THR','T','',''),
 (35,'ACC','THR','T','',''),
 (36,'ACA','THR','T','',''),
 (37,'ACG','THR','T','',''),
 (38,'AAU','ASN','N','',''),
 (39,'AAC','ASN','N','',''),
 (40,'AAA','LYS','K','',''),
 (41,'AAG','LYS','K','',''),
 (42,'AGU','SER','S','',''),
 (43,'AGC','SER','S','',''),
 (44,'AGA','ARG','R','',''),
 (45,'AGG','ARG','R','',''),
 (46,'GUU','VAL','V','',''),
 (47,'GUC','VAL','V','',''),
 (48,'GUA','VAL','V','',''),
 (49,'GUG','VAL','V','',''),
 (50,'GCU','ALA','A','',''),
 (51,'GCC','ALA','A','',''),
 (52,'GCA','ALA','A','',''),
 (53,'GCG','ALA','A','',''),
 (54,'GAU','ASP','D','',''),
 (55,'GAC','ASP','D','',''),
 (56,'GAA','GLU','E','',''),
 (57,'GAG','GLU','E','',''),
 (58,'GGU','GLY','G','',''),
 (59,'GGC','GLY','G','',''),
 (60,'GGA','GLY','G','',''),
 (61,'GGG','GLY','G','','');
/*!40000 ALTER TABLE `amino_acid_seq` ENABLE KEYS */;


--
-- Definition of table `gene_results`
--

DROP TABLE IF EXISTS `gene_results`;
CREATE TABLE `gene_results` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` varchar(45) NOT NULL,
  `gene_transform` varchar(450) NOT NULL,
  `disease` varchar(45) NOT NULL,
  `drugs` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gene_results`
--

/*!40000 ALTER TABLE `gene_results` DISABLE KEYS */;
INSERT INTO `gene_results` (`id`,`user_id`,`gene_transform`,`disease`,`drugs`) VALUES 
 (1,'1','MSHQPLSCLTEKEDSPSESTGNGPPHLAHPNLDTFTPEELLQQMKELLTENHQLKEAMKLNNQAMKGRFEELSAWTEKQKEERQFFEIQSKEAKERLMALSHENEKLKEELGKLKGKSERSSEDPTDDSRLPRAEAEQEKDQLRTQVVRLQAEKADLLGIVSELQLKLNSSGSSEDSFVEIRMAEGEAEGSVK','',''),
 (2,'1','MSHQPLSCLTEKEDSPSESTGNGPPHLAHPNLDTFTPEELLQQMKELLTENHQLKEAMKLNNQAMKGRFEELSAWTEKQKEERQFFEIQSKEAKERLMALSHENEKLKEELGKLKGKSERSSEDPTDDSRLPRAEAEQEKDQLRTQVVRLQAEKADLLGIVSELQLKLNSSGSSEDSFVEIRMAEGEAEGSVK','','');
/*!40000 ALTER TABLE `gene_results` ENABLE KEYS */;


--
-- Definition of table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE `user_details` (
  `user_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contactno` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` (`user_id`,`name`,`username`,`password`,`email`,`contactno`,`location`) VALUES 
 (1,'a','a','a','a','a','a'),
 (2,'q','q','q','q','q','q'),
 (3,'s','s','s','s','s','s');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
