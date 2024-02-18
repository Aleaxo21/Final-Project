-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: e-commerce
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS category;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE category (
  id int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES category WRITE;
/*!40000 ALTER TABLE category DISABLE KEYS */;
INSERT INTO category VALUES (1,'Tops'),(2,'Footwear'),(3,'Accessories'),(4,'Bottoms');
/*!40000 ALTER TABLE category ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS product;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE product (
  id int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  price decimal(10,2) NOT NULL,
  category_id int NOT NULL,
  picture varchar(200) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY category_id_idx (category_id),
  CONSTRAINT product_category_id FOREIGN KEY (category_id) REFERENCES category (id)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES product WRITE;
/*!40000 ALTER TABLE product DISABLE KEYS */;
INSERT INTO product VALUES (1,'Red Puma T-Shirt','A dark red T-shirt with a black design of the brand Puma',25.00,1,'C:UsersjassaOneDriveDocumentsADEVFinal Projectpublicimages 2'),(2,'Black Sports Shoes','A pair of pure black sport shoes',40.00,2,'C:UsersjassaOneDriveDocumentsADEVFinal Projectpublicimages 2'),(3,'Grey Jogging Pants','A pair of breathable jogging pants',28.00,4,'C:UsersjassaOneDriveDocumentsADEVFinal Projectpublicimages 2'),(4,'Navy Collared T-Shirt','A navy colored breathable T-Shirt',30.00,1,'C:UsersjassaOneDriveDocumentsADEVFinal Projectpublicimages 2'),(5,'High Cut Grey Shoes','A stylish yet comfy pair of shoe',50.00,2,'C:UsersjassaOneDriveDocumentsADEVFinal Projectpublicimages 2'),(6,'Black Puma T-Shirt','A black T-Shirt with a design of a puma in the middle',40.00,1,'C:UsersjassaOneDriveDocumentsADEVFinal Projectpublicimages 2'),(7,'HRX Socks',' A set of three different pair of socks',20.00,2,'C:UsersjassaOneDriveDocumentsADEVFinal Projectpublicimages 2'),(8,'Black Fossil Watch','A pure black traditional watch',60.00,3,'C:UsersjassaOneDriveDocumentsADEVFinal Projectpublicimages 2'),(9,'Black Roadster Watch','A slick pure black watch',60.00,3,'C:UsersjassaOneDriveDocumentsADEVFinal Projectpublicimages 2'),(10,'Black Court Shoes','A pair of black shoes with red designs on the soles',50.00,2,'C:UsersjassaOneDriveDocumentsADEVFinal Projectpublicimages 2'),(11,'Grey Slip-on Shoes','A pair of comfy and convenient shoes',50.00,2,'C:UsersjassaOneDriveDocumentsADEVFinal Projectpublicimages 2'),(12,'Black Jogging Pants','A pair of breathable black pants',28.00,4,'C:UsersjassaOneDriveDocumentsADEVFinal Projectpublicimages 2');
/*!40000 ALTER TABLE product ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-18 12:05:21
