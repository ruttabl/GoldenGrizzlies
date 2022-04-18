-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: finalproject
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `Car_ID` int NOT NULL,
  `Car_Color` varchar(45) DEFAULT NULL,
  `Car_Starting_Price` decimal(45,0) DEFAULT NULL,
  `Car_On_Lot` tinyint DEFAULT NULL,
  `Car_Being_Serviced` tinyint DEFAULT NULL,
  `Car_Year` varchar(45) DEFAULT NULL,
  `Car_Horsepower` varchar(45) DEFAULT NULL,
  `Car_MPG` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Car_ID`),
  UNIQUE KEY `Car_ID_UNIQUE` (`Car_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'Blue',25000,1,0,'2021','255','13'),(2,'Green',24934,1,0,'2022','275','15'),(3,'Red',18203,1,1,'2020','150','19'),(4,'Yellow',78324,0,0,'2021','222','11'),(5,'Black',80345,0,0,'2022','200','18'),(6,'Blue',24567,1,0,'2021','180','14'),(7,'Purple',35034,0,0,'2020','203','19'),(8,'White',36024,1,0,'2019','205','24'),(9,'Grey',34765,1,0,'2019','277','15'),(10,'GREEN',26000,1,0,'2021','200','16');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_ID` int NOT NULL,
  `Customer_FName` varchar(45) DEFAULT NULL,
  `Customer_LName` varchar(45) DEFAULT NULL,
  `Customer_Phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Maryl','Newman','567-246-9083'),(2,'Steve','Smith','224-228-39730'),(3,'Bob','Coleman','616-552-8059'),(4,'Earl','Kohl','570-604-1928'),(5,'Candice','Friar','515-875-4625'),(6,'Wendy','Morel','973-496-9565'),(7,'Isabel','Vaayl','402-360-5889'),(8,'Dory','Moran','207-895-8658'),(9,'Sully','Martin','254-693-3354'),(10,'Newt','Hawkins','806-535-5991');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_ID` int NOT NULL,
  `Employee_FName` varchar(45) DEFAULT NULL,
  `Employee_LName` varchar(45) DEFAULT NULL,
  `Employee_Phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Brian','Smith','576-034-4390'),(2,'Mary','Jenkins','718-533-1262'),(3,'Carl','Wheezer','361-232-0196'),(4,'Moe','Newman','561-469-6195'),(5,'Sally','Iolan','786-443-2594'),(6,'Scarlett','Nolan','419-561-4306'),(7,'Robert','Maeryl','989-395-5803'),(8,'Nancy','Reagan','989-395-5803'),(9,'Boris','Vladisk','339-613-6807'),(10,'Anna','Minnuno','570-604-1928');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `Man_Make_ID` int NOT NULL,
  `Man_Make_Name` varchar(45) DEFAULT NULL,
  `Man_Model_ID` int NOT NULL,
  `Man_Car_ID` int NOT NULL,
  PRIMARY KEY (`Man_Make_ID`),
  KEY `fk_Manufacturer_Model1_idx` (`Man_Model_ID`),
  KEY `fk_Manufacturer_Car1_idx` (`Man_Car_ID`),
  CONSTRAINT `fk_Manufacturer_Car1` FOREIGN KEY (`Man_Car_ID`) REFERENCES `car` (`Car_ID`),
  CONSTRAINT `fk_Manufacturer_Model1` FOREIGN KEY (`Man_Model_ID`) REFERENCES `model` (`Model_Model_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'FORD',6,1),(2,'Ford',1,2),(3,'Audi',9,3),(4,'Subaru',8,7),(5,'Audi',3,4),(7,'Dodge',10,8),(9,'Chevrolet',2,5),(10,'BMW',4,6);
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `Model_Model_ID` int NOT NULL,
  `Model_Name` varchar(45) DEFAULT NULL,
  `Model_Trim_ID` int NOT NULL,
  `Model_Car_ID` int NOT NULL,
  PRIMARY KEY (`Model_Model_ID`,`Model_Trim_ID`),
  KEY `fk_Model_Trim1_idx` (`Model_Trim_ID`),
  KEY `fk_Model_Car1_idx` (`Model_Car_ID`),
  CONSTRAINT `fk_Model_Car1` FOREIGN KEY (`Model_Car_ID`) REFERENCES `car` (`Car_ID`),
  CONSTRAINT `fk_Model_Trim1` FOREIGN KEY (`Model_Trim_ID`) REFERENCES `trim` (`Trim_Trim_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'Mustang',2,1),(2,'Malibu',1,6),(3,'A4',3,4),(4,'X5',5,2),(5,'Guilia',9,7),(6,'Camero',3,5),(8,'RS7',3,9),(9,'RS7',3,9),(10,'2500',7,4),(11,'ESCAPE',10,10);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `Sale_ID` int NOT NULL,
  `Sale_Date` date DEFAULT NULL,
  `Sale_Employee_ID` int DEFAULT NULL,
  `Sale_Customer_ID` int DEFAULT NULL,
  `Sale_Sale_Amount` decimal(45,0) DEFAULT NULL,
  `Sale_Closed` tinyint DEFAULT NULL,
  `Sale_Car_ID` int NOT NULL,
  PRIMARY KEY (`Sale_ID`),
  KEY `fk_Sale_Employee_idx` (`Sale_Employee_ID`),
  KEY `fk_Sale_Customer1_idx` (`Sale_Customer_ID`),
  KEY `fk_Sale_Car1_idx` (`Sale_Car_ID`),
  CONSTRAINT `fk_Sale_Car1` FOREIGN KEY (`Sale_Car_ID`) REFERENCES `car` (`Car_ID`),
  CONSTRAINT `fk_Sale_Customer1` FOREIGN KEY (`Sale_Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  CONSTRAINT `fk_Sale_Employee` FOREIGN KEY (`Sale_Employee_ID`) REFERENCES `employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,'2021-03-12',1,6,14032,1,1),(2,'2021-07-03',3,8,22354,1,5),(3,'2022-01-06',6,5,24034,0,2),(4,'2020-04-15',2,4,24000,1,3),(5,'2020-03-06',3,8,13445,1,3),(6,'2015-01-11',4,2,13412,1,8),(7,'2022-06-11',6,3,25342,1,8),(9,'2021-03-14',1,8,21354,1,3),(10,'2021-02-01',3,7,22345,1,3),(11,'2020-04-15',2,4,2413,1,6),(12,'2019-03-15',6,2,24000,1,3),(13,'2022-01-07',2,9,14532,0,1);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trim`
--

DROP TABLE IF EXISTS `trim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trim` (
  `Trim_Trim_ID` int NOT NULL,
  `Trim_Name` varchar(45) DEFAULT NULL,
  `Car_Car_ID` int NOT NULL,
  PRIMARY KEY (`Trim_Trim_ID`),
  KEY `fk_Trim_Car1_idx` (`Car_Car_ID`),
  CONSTRAINT `fk_Trim_Car1` FOREIGN KEY (`Car_Car_ID`) REFERENCES `car` (`Car_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trim`
--

LOCK TABLES `trim` WRITE;
/*!40000 ALTER TABLE `trim` DISABLE KEYS */;
INSERT INTO `trim` VALUES (1,'Xs',1),(2,'Xl',2),(3,'M',3),(4,'E',4),(5,'T',5),(6,'R',6),(7,'B',7),(8,'C',8),(9,'X',9),(10,'XXL',10);
/*!40000 ALTER TABLE `trim` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-12 15:55:46
