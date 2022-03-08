-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_netflix_muni
-- ------------------------------------------------------
-- Server version	5.7.35-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `list_idioma`
--

DROP TABLE IF EXISTS `list_idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_idioma` (
  `IdIdioma` int(20) NOT NULL AUTO_INCREMENT,
  `NameLang` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  PRIMARY KEY (`IdIdioma`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_idioma`
--

LOCK TABLES `list_idioma` WRITE;
/*!40000 ALTER TABLE `list_idioma` DISABLE KEYS */;
INSERT INTO `list_idioma` VALUES (1,'Español','Idioma español',1,'2022-03-08 00:46:37'),(2,'Ingles','Idioma ingles',1,'2022-03-08 00:47:02');
/*!40000 ALTER TABLE `list_idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_paquetes`
--

DROP TABLE IF EXISTS `list_paquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_paquetes` (
  `IdPack` int(20) NOT NULL AUTO_INCREMENT,
  `NamePack` varchar(50) NOT NULL,
  `PackPrice` int(11) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  PRIMARY KEY (`IdPack`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_paquetes`
--

LOCK TABLES `list_paquetes` WRITE;
/*!40000 ALTER TABLE `list_paquetes` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_paquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_permisos`
--

DROP TABLE IF EXISTS `list_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_permisos` (
  `IdPermiso` int(20) NOT NULL AUTO_INCREMENT,
  `Permiso` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  PRIMARY KEY (`IdPermiso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_permisos`
--

LOCK TABLES `list_permisos` WRITE;
/*!40000 ALTER TABLE `list_permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_roles`
--

DROP TABLE IF EXISTS `list_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_roles` (
  `IdRol` int(20) NOT NULL AUTO_INCREMENT,
  `NameRol` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  PRIMARY KEY (`IdRol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_roles`
--

LOCK TABLES `list_roles` WRITE;
/*!40000 ALTER TABLE `list_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_admin` (
  `IdAdmin` int(20) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `ApellidoP` varchar(100) NOT NULL,
  `ApellidoM` varchar(100) NOT NULL,
  `DPI` varchar(100) NOT NULL,
  `Nit` varchar(100) NOT NULL,
  `BirthDate` datetime NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  `fk_user` int(20) NOT NULL,
  PRIMARY KEY (`IdAdmin`),
  KEY `fk_user` (`fk_user`),
  CONSTRAINT `tb_admin_ibfk_1` FOREIGN KEY (`fk_user`) REFERENCES `tb_user` (`IdUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_admin`
--

LOCK TABLES `tb_admin` WRITE;
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_adminfile`
--

DROP TABLE IF EXISTS `tb_adminfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_adminfile` (
  `IdAdminF` int(20) NOT NULL AUTO_INCREMENT,
  `NameFile` varchar(100) NOT NULL,
  `Size` float NOT NULL,
  `FileType` float NOT NULL,
  `URLFile` varchar(200) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  `fk_admin` int(20) NOT NULL,
  PRIMARY KEY (`IdAdminF`),
  KEY `fk_admin` (`fk_admin`),
  CONSTRAINT `tb_adminfile_ibfk_1` FOREIGN KEY (`fk_admin`) REFERENCES `tb_adminfile` (`IdAdminF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_adminfile`
--

LOCK TABLES `tb_adminfile` WRITE;
/*!40000 ALTER TABLE `tb_adminfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_adminfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categories`
--

DROP TABLE IF EXISTS `tb_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_categories` (
  `IdCategory` int(20) NOT NULL AUTO_INCREMENT,
  `Category` varchar(100) NOT NULL,
  `Description` varchar(150) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  PRIMARY KEY (`IdCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categories`
--

LOCK TABLES `tb_categories` WRITE;
/*!40000 ALTER TABLE `tb_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_customer`
--

DROP TABLE IF EXISTS `tb_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_customer` (
  `IdCust` int(20) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `ApellidoP` varchar(100) NOT NULL,
  `ApellidoM` varchar(100) NOT NULL,
  `BirthDate` date NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  `fk_user` int(20) NOT NULL,
  `fk_pack` int(20) NOT NULL,
  PRIMARY KEY (`IdCust`),
  KEY `fk_user` (`fk_user`),
  KEY `fk_pack` (`fk_pack`),
  CONSTRAINT `tb_customer_ibfk_1` FOREIGN KEY (`fk_user`) REFERENCES `tb_user` (`IdUser`),
  CONSTRAINT `tb_customer_ibfk_2` FOREIGN KEY (`fk_pack`) REFERENCES `list_paquetes` (`IdPack`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_customer`
--

LOCK TABLES `tb_customer` WRITE;
/*!40000 ALTER TABLE `tb_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_favmovie`
--

DROP TABLE IF EXISTS `tb_favmovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_favmovie` (
  `IdFavMovie` int(20) NOT NULL AUTO_INCREMENT,
  `fk_user` int(20) NOT NULL,
  `fk_movie` int(20) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  PRIMARY KEY (`IdFavMovie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_favmovie`
--

LOCK TABLES `tb_favmovie` WRITE;
/*!40000 ALTER TABLE `tb_favmovie` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_favmovie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_moviefile`
--

DROP TABLE IF EXISTS `tb_moviefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_moviefile` (
  `IdMovieF` int(20) NOT NULL AUTO_INCREMENT,
  `NameFile` varchar(100) NOT NULL,
  `Size` float NOT NULL,
  `FileType` float NOT NULL,
  `URLFile` varchar(200) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  `fk_IdMovie` int(20) NOT NULL,
  PRIMARY KEY (`IdMovieF`),
  KEY `fk_IdMovie` (`fk_IdMovie`),
  CONSTRAINT `tb_moviefile_ibfk_1` FOREIGN KEY (`fk_IdMovie`) REFERENCES `tb_movies` (`IdMovie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_moviefile`
--

LOCK TABLES `tb_moviefile` WRITE;
/*!40000 ALTER TABLE `tb_moviefile` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_moviefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_movies`
--

DROP TABLE IF EXISTS `tb_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_movies` (
  `IdMovie` int(20) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(100) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Duration` varchar(100) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  `fk_category` int(20) NOT NULL,
  `ranking` tinyint(5) NOT NULL,
  `comentario` varchar(500) NOT NULL,
  PRIMARY KEY (`IdMovie`),
  KEY `fk_category` (`fk_category`),
  CONSTRAINT `tb_movies_ibfk_1` FOREIGN KEY (`fk_category`) REFERENCES `tb_categories` (`IdCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movies`
--

LOCK TABLES `tb_movies` WRITE;
/*!40000 ALTER TABLE `tb_movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_payment`
--

DROP TABLE IF EXISTS `tb_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_payment` (
  `IdPay` int(20) NOT NULL AUTO_INCREMENT,
  `AmountMoney` varchar(100) NOT NULL,
  `TotalIva` varchar(100) NOT NULL,
  `TokenCard` varchar(300) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  `fk_pay` int(20) NOT NULL,
  PRIMARY KEY (`IdPay`),
  KEY `fk_pay` (`fk_pay`),
  CONSTRAINT `tb_payment_ibfk_1` FOREIGN KEY (`fk_pay`) REFERENCES `tb_customer` (`IdCust`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_payment`
--

LOCK TABLES `tb_payment` WRITE;
/*!40000 ALTER TABLE `tb_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_perfilfile`
--

DROP TABLE IF EXISTS `tb_perfilfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_perfilfile` (
  `IdPerfilF` int(20) NOT NULL AUTO_INCREMENT,
  `NameFile` varchar(100) NOT NULL,
  `Size` float NOT NULL,
  `FileType` float NOT NULL,
  `URLFile` varchar(200) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  `fk_IdProfile` int(20) NOT NULL,
  PRIMARY KEY (`IdPerfilF`),
  KEY `fk_IdProfile` (`fk_IdProfile`),
  CONSTRAINT `tb_perfilfile_ibfk_1` FOREIGN KEY (`fk_IdProfile`) REFERENCES `tb_profile` (`IdProfile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_perfilfile`
--

LOCK TABLES `tb_perfilfile` WRITE;
/*!40000 ALTER TABLE `tb_perfilfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_perfilfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_profile`
--

DROP TABLE IF EXISTS `tb_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_profile` (
  `IdProfile` int(20) NOT NULL AUTO_INCREMENT,
  `Nickname` varchar(100) NOT NULL,
  `AutoRep` tinyint(2) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  `fk_cliente` int(20) NOT NULL,
  PRIMARY KEY (`IdProfile`),
  KEY `fk_cliente` (`fk_cliente`),
  CONSTRAINT `tb_profile_ibfk_1` FOREIGN KEY (`fk_cliente`) REFERENCES `tb_customer` (`IdCust`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_profile`
--

LOCK TABLES `tb_profile` WRITE;
/*!40000 ALTER TABLE `tb_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_rolpermiso`
--

DROP TABLE IF EXISTS `tb_rolpermiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_rolpermiso` (
  `IdRolPermiso` int(20) NOT NULL AUTO_INCREMENT,
  `fk_rol` int(20) NOT NULL,
  `fk_permiso` int(20) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  PRIMARY KEY (`IdRolPermiso`),
  KEY `fk_rol` (`fk_rol`),
  KEY `fk_permiso` (`fk_permiso`),
  CONSTRAINT `tb_rolpermiso_ibfk_1` FOREIGN KEY (`fk_rol`) REFERENCES `list_roles` (`IdRol`),
  CONSTRAINT `tb_rolpermiso_ibfk_2` FOREIGN KEY (`fk_permiso`) REFERENCES `list_permisos` (`IdPermiso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_rolpermiso`
--

LOCK TABLES `tb_rolpermiso` WRITE;
/*!40000 ALTER TABLE `tb_rolpermiso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_rolpermiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_subcategory`
--

DROP TABLE IF EXISTS `tb_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_subcategory` (
  `IdSubCat` int(20) NOT NULL AUTO_INCREMENT,
  `SubCategory` varchar(100) NOT NULL,
  `Description` varchar(150) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  `fk_category` int(20) NOT NULL,
  PRIMARY KEY (`IdSubCat`),
  KEY `fk_category` (`fk_category`),
  CONSTRAINT `tb_subcategory_ibfk_1` FOREIGN KEY (`fk_category`) REFERENCES `tb_categories` (`IdCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_subcategory`
--

LOCK TABLES `tb_subcategory` WRITE;
/*!40000 ALTER TABLE `tb_subcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_token_card`
--

DROP TABLE IF EXISTS `tb_token_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_token_card` (
  `IdTokenCard` int(20) NOT NULL AUTO_INCREMENT,
  `Token` varchar(50) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  PRIMARY KEY (`IdTokenCard`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_token_card`
--

LOCK TABLES `tb_token_card` WRITE;
/*!40000 ALTER TABLE `tb_token_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_token_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user` (
  `IdUser` int(20) NOT NULL AUTO_INCREMENT,
  `Email` varchar(75) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  `fk_lang` int(20) NOT NULL,
  `fk_rol` int(20) NOT NULL,
  `fk_card` int(20) NOT NULL,
  `fk_pack` int(20) NOT NULL,
  PRIMARY KEY (`IdUser`),
  KEY `fk_lang` (`fk_lang`),
  KEY `fk_rol` (`fk_rol`),
  KEY `fk_card` (`fk_card`),
  KEY `fk_pack` (`fk_pack`),
  CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`fk_lang`) REFERENCES `list_idioma` (`IdIdioma`),
  CONSTRAINT `tb_user_ibfk_3` FOREIGN KEY (`fk_card`) REFERENCES `tb_token_card` (`IdTokenCard`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usermovie`
--

DROP TABLE IF EXISTS `tb_usermovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usermovie` (
  `IdUserMovie` int(20) NOT NULL AUTO_INCREMENT,
  `fk_user` int(20) NOT NULL,
  `fk_movie` int(20) NOT NULL,
  `Estado` tinyint(2) NOT NULL,
  `DateRegister` datetime NOT NULL,
  PRIMARY KEY (`IdUserMovie`),
  KEY `fk_user` (`fk_user`),
  KEY `fk_movie` (`fk_movie`),
  CONSTRAINT `tb_usermovie_ibfk_1` FOREIGN KEY (`fk_user`) REFERENCES `tb_user` (`IdUser`),
  CONSTRAINT `tb_usermovie_ibfk_2` FOREIGN KEY (`fk_user`) REFERENCES `tb_movies` (`IdMovie`),
  CONSTRAINT `tb_usermovie_ibfk_3` FOREIGN KEY (`fk_user`) REFERENCES `tb_user` (`IdUser`),
  CONSTRAINT `tb_usermovie_ibfk_4` FOREIGN KEY (`fk_movie`) REFERENCES `tb_movies` (`IdMovie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usermovie`
--

LOCK TABLES `tb_usermovie` WRITE;
/*!40000 ALTER TABLE `tb_usermovie` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_usermovie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-08 13:53:44
