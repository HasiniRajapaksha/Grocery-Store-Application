-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: grocery_store
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS order_details;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE order_details (
  order_id int NOT NULL,
  product_id int NOT NULL,
  quantity double NOT NULL,
  total_price double NOT NULL,
  PRIMARY KEY (order_id,product_id),
  KEY fk_product_id_idx (product_id),
  CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES orders (order_id) ON UPDATE RESTRICT,
  CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES products (product_id) ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES order_details WRITE;
/*!40000 ALTER TABLE order_details DISABLE KEYS */;
INSERT INTO order_details VALUES (5,1,2,50),(5,3,1,30),(6,3,1,170),(6,4,1,150),(6,14,3,2100),(6,20,2,2000);
/*!40000 ALTER TABLE order_details ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS orders;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE orders (
  order_id int NOT NULL AUTO_INCREMENT,
  customer_name varchar(100) NOT NULL,
  total double NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (order_id)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES orders WRITE;
/*!40000 ALTER TABLE orders DISABLE KEYS */;
INSERT INTO orders VALUES (1,'nimal',500,'2024-11-19 05:16:59'),(2,'raja',1500,'2024-11-19 05:51:43'),(3,'lochi',1500,'2024-11-19 06:04:05'),(5,'preethi',1500,'2024-11-19 06:52:17'),(6,'hasini',4420,'2024-11-19 07:51:15');
/*!40000 ALTER TABLE orders ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS products;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE products (
  product_id int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  uom_id int NOT NULL,
  price_per_unit double NOT NULL,
  PRIMARY KEY (product_id),
  KEY fk_uom_id_idx (uom_id),
  CONSTRAINT fk_uom_id FOREIGN KEY (uom_id) REFERENCES uom (uom_id) ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES products WRITE;
/*!40000 ALTER TABLE products DISABLE KEYS */;
INSERT INTO products VALUES (1,'rice',1,350),(3,'face mask',2,170),(4,'tooth paste',2,150),(12,'battery',2,45),(14,'cocount oil',3,700),(15,'soap',2,45),(16,'mug',2,350),(17,'pen',2,30),(18,'sugar',1,170),(19,'pillow case',2,600),(20,'indoor plant',2,1000),(21,'curry powder',1,250),(22,'chili powder',1,430);
/*!40000 ALTER TABLE products ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom`
--

DROP TABLE IF EXISTS uom;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE uom (
  uom_id int NOT NULL AUTO_INCREMENT,
  uom_name varchar(100) NOT NULL,
  PRIMARY KEY (uom_id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom`
--

LOCK TABLES uom WRITE;
/*!40000 ALTER TABLE uom DISABLE KEYS */;
INSERT INTO uom VALUES (1,'kg'),(2,'each'),(3,'liters');
/*!40000 ALTER TABLE uom ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19  8:25:54
