CREATE DATABASE  IF NOT EXISTS `projeto_fullstack` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `projeto_fullstack`;
-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: projeto_fullstack
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `pedidos_id` int(11) NOT NULL AUTO_INCREMENT,
  `nomecliente` varchar(50) NOT NULL,
  `endereço` varchar(100) DEFAULT NULL,
  `telefone` int(11) NOT NULL,
  `nomedoproduto` varchar(40) NOT NULL,
  `valorunitário` decimal(6,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valortotal` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`pedidos_id`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`pedidos_id`) REFERENCES `produtos` (`produtos_id`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`pedidos_id`) REFERENCES `produtos` (`produtos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'João Pedro','Rua Almirante Alexandrino, 1616, casa 22, Santa Teresa, Rio de Janeiro-RJ',22226666,'Geladeira',2019.00,1,2019.00),(2,'Anna Luiza','Rua do Oriente, 386, Santa Teresa, Rio de janeiro-RJ',966445533,'Fogão',2130.00,1,2130.00);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `produtos_id` int(11) NOT NULL AUTO_INCREMENT,
  `nomeproduto` varchar(40) NOT NULL,
  `descrição` varchar(100) NOT NULL,
  `preço` float NOT NULL,
  `nomeimagem` varchar(100) NOT NULL,
  PRIMARY KEY (`produtos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Geladeira','Geladeira Frost Free Brastemp 375 litros',2019,'\"./Imagens/img-protutos/geladeira-brastemp- frostfree-375litros.jpeg\"'),(2,'maquina de lavar roupa','Máquina de lavar Brastemp Branco 11kg',1655,'Imagens/img-protutos/maquina-de-lavar-brastemp-11kg.jpg'),(3,'lava-louça','Lava-louça Panasonic Preto 6 programas 220vlt',3860,'Imagens/img-protutos/lava-louça-panasonic-220.jpg'),(6,'Fogão','Fogão Brastemp Inox 4 bocas',2130,'Imagens/img-protutos/fogão-4-bocas-brastemp.jpeg');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-26 19:42:31
