-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: mysql
-- ------------------------------------------------------
-- Server version	8.0.31-google

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `BD`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `BD` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `BD`;

--
-- Table structure for table `n_cliente`
--

DROP TABLE IF EXISTS `n_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `n_cliente` (
  `id` varchar(3) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `distrito` varchar(20) DEFAULT NULL,
  `region` varchar(15) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `codigo_postal` varchar(15) DEFAULT NULL,
  `historial_crediticio` varchar(9) DEFAULT NULL,
  `ventas_rep_id` varchar(3) DEFAULT NULL,
  `region_id` varchar(3) DEFAULT NULL,
  `comentarios` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `n_cliente_historial_crediticio_ck` CHECK ((`historial_crediticio` in (_latin1'EXCELENTE',_latin1'BUENO',_latin1'POOR')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `n_cliente`
--

LOCK TABLES `n_cliente` WRITE;
/*!40000 ALTER TABLE `n_cliente` DISABLE KEYS */;
INSERT INTO `n_cliente` VALUES ('201','One Sport','55-112066222','82 Via Bahia','Sao Paolo',NULL,'Brazil',NULL,'EXCELENTE','12','2',NULL),('202','Deportivo Caracas','58-28066222','31 Sabana Grande','Caracas',NULL,'Venezuela',NULL,'EXCELENTE','12','2',NULL),('203','New Delhi Sports','91-11903338','11368 Chanakya','New Delhi',NULL,'India',NULL,'BUENO','11','4',NULL),('204','Ladysport','1-206-104-0111','281 Queen Street','Seattle','Washington','US',NULL,'EXCELENTE','11','1',NULL),('205','Kims Sporting BUENOs','852-3693888','15 Henessey Road','Hong Kong',NULL,NULL,NULL,'EXCELENTE','11','4',NULL),('206','Sportique','33-93425722253','172 Rue de Place','Cannes',NULL,'France',NULL,'EXCELENTE','13','5',NULL),('207','Tall Rock Sports','234-16036222','10 Saint Antoine','Lagos',NULL,'Nigeria',NULL,'BUENO',NULL,'3',NULL),('208','Muench Sports','49-895274449','435 Gruenestrasse','Munich',NULL,'Germany',NULL,'BUENO','13','5',NULL),('209','Beisbol Si!','809-352666','415 Playa Del Mar','San Pedro de Macoris',NULL,'Dominican Republic',NULL,'EXCELENTE','11','6',NULL),('210','Futbol Sonora','52-404555','5 Via Saguaro','Nogales',NULL,'Mexico',NULL,'EXCELENTE','12','2',NULL),('211','Helmut\'s Sports','42-2111222','45 Modrany','Prague',NULL,'Czechoslovakia',NULL,'EXCELENTE','11','5',NULL),('212','Hamada Sport','20-31209222','47A Corniche','Alexandria',NULL,'Egypt',NULL,'EXCELENTE','13','3',NULL),('213','Sports Emporium','1-415-555-6281','4783 168th Street','San Francisco','CA','US',NULL,'EXCELENTE','11','1',NULL),('214','Sports Retail','1-716-555-7777','115 Main Street','Buffalo','NY','US',NULL,'POOR','11','1',NULL),('215','Sports Russia','7-0953892444','7070 Yekatamina','Saint Petersburg',NULL,'Russia',NULL,'POOR','11','5',NULL),('301','Sports,Inc','540-123-4567','72 High St','Harrisonburg','VA','US','22809','EXCELENTE','12','1',NULL),('302','Toms Sporting','540-987-6543','6741 Main St','Harrisonburg','VA','US','22809','POOR','14','1',NULL),('303','Athletic Attire','540-123-6789','54 Market St','Harrisonburg','VA','US','22808','BUENO','14','1',NULL),('304','Athletics For All','540-987-1234','286 Main St','Harrisonburg','VA','US','22808','EXCELENTE','12','1',NULL),('305','Shoes for Sports','540-123-9876','538 High St','Harrisonburg','VA','US','22809','EXCELENTE','14','1',NULL),('306','BJ Athletics','540-987-9999','632 Water St','Harrisonburg','VA','US','22810','POOR','12','1',NULL),('403','Athletics One','717-234-6786','912 Columbia Rd','Lancaster','PA','US','17601','BUENO','14','1',NULL),('404','Great Athletes','717-987-2341','121 Litiz Pike','Lancaster','PA','US','17602','EXCELENTE','12','1',NULL),('405','Athletics Two','717-987-9875','435 High Rd','Lancaster','PA','US','17602','EXCELENTE','14','1',NULL),('406','Athletes Attic','717-234-9888','101 Greenfield Rd','Lancaster','PA','US','17601','POOR','12','1',NULL);
/*!40000 ALTER TABLE `n_cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-01 23:00:41
