-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: techjob
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `tech1`
--

DROP TABLE IF EXISTS `tech1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tech1` (
  `techId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `skills` varchar(5000) DEFAULT NULL,
  `tools` varchar(5000) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `dispatchPolicy` varchar(45) DEFAULT NULL,
  `selfAssigned` varchar(45) DEFAULT NULL,
  `active` varchar(45) DEFAULT NULL,
  `reqLunchBreak` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`techId`),
  UNIQUE KEY `techId_UNIQUE` (`techId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tech1`
--

LOCK TABLES `tech1` WRITE;
/*!40000 ALTER TABLE `tech1` DISABLE KEYS */;
INSERT INTO `tech1` (`techId`, `name`, `type`, `skills`, `tools`, `latitude`, `longitude`, `region`, `district`, `dispatchPolicy`, `selfAssigned`, `active`, `reqLunchBreak`) VALUES (2,'B52287','WORK CENTRE DISPATCH','ASSUR - CO - Voice/Internet/Wholesale - BTS # 4|ASSUR - FIELD - VRGN - RES INTERNET # 4|ASSUR - FIELD - BUS - VDSL2 # 4|ASSUR - FIELD - BUS - ADSL/ADSL2+ # 4|ASSUR - FIELD - CON - EAGLE # 4|ASSUR - FIELD - CON - FTTH # 4|ASSUR - FIELD - CON - IPTV - Copper - MDU # 4|ASSUR - FIELD - CON - IPTV - Copper - SFU # 4|ASSUR - FIELD - CON - IPTV - FTTH - MDU # 4|ASSUR - FIELD - CON - IPTV - FTTH - SFU # 4|ASSUR - FIELD - CON - VDSL2 # 4|ASSUR - FIELD - CON - ADSL/ADSL2+ # 4|PROV - CO - Frame - BTS # 4|PROV - FIELD - BUS - Access and Desktop - VDSL2 # 4|PROV - FIELD - BUS - Desktop - ADSL/ADSL2+ # 2|PROV - FIELD - BUS - DSL Dedicated # 4|PROV - FIELD - BUS - ADSL/ADSL2+ Access # 2|PROV - FIELD - CON - Access and Desktop - FTTH # 4|PROV - FIELD - CON - Access and Desktop - IPTV - Copper - MDU # 4|PROV - FIELD - CON - Access and Desktop - IPTV - Copper - SFU # 4|PROV - FIELD - CON - Access and Desktop - IPTV - FTTH - MDU # 4|PROV - FIELD - CON - Access and Desktop - VDSL2 # 4|PROV - FIELD - CON/BUS - Connections # 4|PROV - FIELD - WHSL - Internet # 4|ASSUR - FIELD - WHSL - Internet # 4|PROV - FIELD - CON - Access and Desktop - IPTV - PBOND - SFU # 4|PROV - FIELD - CON - Access and Desktop - IPTV - PBOND - MDU # 4|ASSUR - FIELD - CON - IPTV - PBOND - SFU # 4|ASSUR - FIELD - CON - IPTV - PBOND - MDU # 4|ASSUR - FIELD - CON - IPTV - EAGLE # 4|PROV - FIELD - CON - Voice # 4|ASSUR - FIELD - CON - Voice # 4|PROV - FIELD - BUS - Voice # 2|ASSUR - FIELD - BUS - Voice # 4|PROV - FIELD - WHSL - BUS - xDSL # 2|PROV - FIELD - WHSL - RES - xDSL # 4|ASSUR - FIELD - WHSL - RES - xDSL # 4|ASSUR - FIELD - WHSL - BUS - xDSL # 4|ASSUR - FIELD - CON/BUS - BSW # 4|ASSUR - FIELD - BUS - IPTV - EAGLE # 4|ASSUR - FIELD - BUS - EAGLE # 4|ASSUR - FIELD - CON - PBOND # 4|PROV - FIELD - CON - Access and Desktop - PBOND # 4|PROV - FIELD - WHSL - RES - PBOND # 4|PROV - FIELD - VRGN - RES INTERNET - FTTH # 4|PROV - FIELD - VRGN - RES INTERNET - PBOND # 4|ASSUR - FIELD - VRGN - RES INTERNET - FTTH # 4|ASSUR - FIELD - VRGN - RES INTERNET - PBOND # 4|ASSUR - FIELD - CON - Modem Drop # 4|PROV - FIELD - CON - Access and Desktop - ADSL/ADSL2+ # 4|PROV - FIELD - CON - Access and Desktop - IPTV - FTTH - SFU # 4|PROV - FIELD - VRGN - RES INTERNET # 4|ASSUR - FIELD - BUS - DSL Dedicated # 4','Technician - Non-Climber|Technician - Climber|Training - FTTx - Huawei ONT|Technician - FTTx - High Count Terminal|Site - Non-Dedicated|Technician - FTTx - Brownfield GLB|Project - IPTV - Special|Training - Migration - FTTH - PBOND|Training - Migration - FTTH - IPTV|Technician - BPI - Level 1 (Standard)|Training - IPTV - 4K|Training - Complex Homes|Technician - Mentor|Training - WiFi Pod','44388755','-79692063','705','BARRIE','Drip','','-1','-1');
INSERT INTO `tech1` (`techId`, `name`, `type`, `skills`, `tools`, `latitude`, `longitude`, `region`, `district`, `dispatchPolicy`, `selfAssigned`, `active`, `reqLunchBreak`) VALUES (4,'B62454','WORK CENTRE DISPATCH','ASSUR - FIELD - CON - VDSL2 # 5|ASSUR - FIELD - CON - IPTV - Copper - SFU # 5|PROV - CO - Frame - BTS # 5|PROV - FIELD - CON - Access and Desktop - IPTV - Copper - MDU # 5|PROV - FIELD - CON - Access and Desktop - IPTV - Copper - SFU # 5|PROV - FIELD - CON - Access and Desktop - VDSL2 # 5|PROV - FIELD - CON - Access and Desktop - ADSL/ADSL2+ # 5|PROV - FIELD - CON/BUS - Connections # 5|PROV - FIELD - WHSL - Internet # 5|ASSUR - FIELD - WHSL - Internet # 5|ASSUR - FIELD - CON - IPTV - EAGLE # 5|PROV - FIELD - CON - Voice # 5|ASSUR - FIELD - CON - Voice # 5|PROV - FIELD - WHSL - RES - xDSL # 5|ASSUR - FIELD - WHSL - RES - xDSL # 5|PROV - CO - Clec # 5|ASSUR - FIELD - CON - EAGLE # 5|ASSUR - CO - Voice/Internet/Wholesale - BTS # 5|ASSUR - FIELD - CON - Modem Drop # 5|ASSUR - FIELD - CON - IPTV - Copper - MDU # 5|ASSUR - FIELD - CON - ADSL/ADSL2+ # 5','Technician - Non-Climber|Technician - Climber|Site - Non-Dedicated|Project - IPTV - Special|Training - BlueCare|Training - IPTV - 4K|Training - PF - Mobility Bullet','43685160','-79760374','905 CENTRAL','BRAMPTON','Drip','','0','-1');
INSERT INTO `tech1` (`techId`, `name`, `type`, `skills`, `tools`, `latitude`, `longitude`, `region`, `district`, `dispatchPolicy`, `selfAssigned`, `active`, `reqLunchBreak`) VALUES (5,'6031958','WORK CENTRE DISPATCH','ASSUR - FIELD - BUS - EAGLE # 4|ASSUR - ORS - LAN - JUNIPER # 3|ASSUR - FIELD - CON - FTTH # 3|ASSUR - FIELD - CON - VDSL2 # 2|ASSUR - FIELD - CON - ADSL/ADSL2+ # 2|PROV - FIELD - BUS - Access and Desktop - FTTB # 5|PROV - FIELD - BUS - Access and Desktop - VDSL2 # 5|PROV - FIELD - BUS - Special Services # 5|PROV - FIELD - BUS - Desktop - ADSL/ADSL2+ # 5|PROV - FIELD - BUS - DSL Dedicated # 5|PROV - FIELD - BUS - ISDN/MegaLink/MicroLink # 5|PROV - FIELD - BUS - Centrex # 5|PROV - ORS - PBX # 2|PROV - FIELD - CON - Fixed Wireless (LTE) # 5|PROV - FIELD - BUS - ADSL/ADSL2+ Access # 5|PROV - FIELD - CON - Access and Desktop - VDSL2 # 3|PROV - FIELD - CON/BUS - Connections # 2|PROV - FIELD - WHSL - Internet # 3|ASSUR - FIELD - WHSL - Internet # 2|ASSUR - FIELD - WHSL - Voice/CLEC/Reseller # 2|PROV - FIELD - CON - Voice # 3|ASSUR - FIELD - CON - Voice # 2|PROV - FIELD - BUS - Voice # 5|ASSUR - FIELD - BUS - Voice # 5|PROV - FIELD - WHSL - BUS - xDSL # 5|ASSUR - FIELD - BUS - Special Services # 3|ASSUR - FIELD - BUS - DSL Dedicated # 3|ASSUR - FIELD - BUS - FTTB # 3|ASSUR - FIELD - BUS - ISDN/MegaLink/MicroLink # 4|ASSUR - FIELD - BUS - Centrex # 4|ASSUR - ORS - PBX # 2|ASSUR - FIELD - BUS - VDSL2 # 5|ASSUR - FIELD - BUS - ADSL/ADSL2+ # 4|ASSUR - FIELD - CON - EAGLE # 2|PROV - FIELD - WHSL - RES - xDSL # 3|ASSUR - FIELD - WHSL - RES - xDSL # 2|ASSUR - FIELD - WHSL - BUS - xDSL # 5|ASSUR - ORS - BCM # 3|ASSUR - ORS - Key # 3|ASSUR - ORS - ML Misc # 3|ASSUR - ORS - Norstar # 3|PROV - DATA - BTCV # 3|PROV - ORS - Avaya # 2|PROV - ORS - BCM # 3|PROV - ORS - Centrex # 5|PROV - ORS - CODD # 2|PROV - ORS - CODD NV # 2|PROV - ORS - Key # 3|PROV - ORS - LAN - Cabling # 2|PROV - ORS - Norstar # 4|PROV - ORS - PBX - Misc # 2|PROV - FIELD - BUS - BTC - FTTN # 5|PROV - FIELD - BUS - BTC - FTTB # 5|ASSUR - FIELD - BUS - BTC - FTTB # 3|ASSUR - FIELD - BUS - BTC - FTTN # 3|PROV - FIELD - BUS - BTC - IPTV - FTTN # 5|PROV - FIELD - BUS - BTC - IPTV - FTTB # 5|ASSUR - FIELD - BUS - BTC - IPTV - FTTB # 3|ASSUR - FIELD - BUS - BTC - IPTV - FTTN # 3|PROV - FIELD - CON - Access and Desktop - ADSL/ADSL2+ # 3','Technician - Non-Climber|Technician - Climber|Site - Non-Dedicated','44596936','-75691902','613','BROCKVILLE','Drip','','0','-1');
INSERT INTO `tech1` (`techId`, `name`, `type`, `skills`, `tools`, `latitude`, `longitude`, `region`, `district`, `dispatchPolicy`, `selfAssigned`, `active`, `reqLunchBreak`) VALUES (6,'22346','HOME DISPATCH','ASSUR - FIELD - BUS - DSL Dedicated # 3|ASSUR - FIELD - CON - FTTH # 3|ASSUR - FIELD - CON - ADSL/ADSL2+ # 3|PROV - FIELD - BUS - DSL Dedicated # 3|PROV - FIELD - BUS - ADSL/ADSL2+ Access # 3|PROV - FIELD - CON - Access and Desktop - FTTH # 3|PROV - FIELD - CON - Voice # 3|ASSUR - FIELD - CON - Voice # 3|PROV - FIELD - BUS - Voice # 3|ASSUR - FIELD - BUS - Voice # 3|PROV - FIELD - CON - Access and Desktop - ADSL/ADSL2+ # 3','Site - Non-Dedicated|Special - Safety - Remote Area','46250870','-63145103','PE','CHARLOTTETOWN PE','Drip','','-1','0');
INSERT INTO `tech1` (`techId`, `name`, `type`, `skills`, `tools`, `latitude`, `longitude`, `region`, `district`, `dispatchPolicy`, `selfAssigned`, `active`, `reqLunchBreak`) VALUES (7,'6026952','WORK CENTRE DISPATCH','ASSUR - FIELD - CON - EAGLE # 2|ASSUR - FIELD - CON - ADSL/ADSL2+ # 2|ASSUR - CABLE - Demand - Single/269H/Pattern # 4|ASSUR - FIELD - CON - Voice # 2|ASSUR - CABLE - Demand - HDSL # 4|ASSUR - CABLE - PM - LITS/269C/PWI # 3|ASSUR - CABLE - PM - M7 # 2|ASSUR - CABLE - PM - NPP Paper # 3|PROV - CABLE - HDSL # 4|ASSUR - CABLE - PM - BSW - PITS # 2|ASSUR - CABLE - PM - BSW - BACKLOG # 2','Technician - Non-Climber|Test Set - 3M DynaTel 2273 BSW Locator|Test Set - 3M DynaTel 965 DSP|Tool - MS Square (3M)|Ladder - 28|Vehicle - Truck with Generator|Technician - Climber|Training - SHELL - Safety|Tool - Voltage Detector and Ground Cord|Site - Non-Dedicated|Training - Confined Spaces','42427124','-82185795','519','CHATHAM','Drip','','0','-1');
INSERT INTO `tech1` (`techId`, `name`, `type`, `skills`, `tools`, `latitude`, `longitude`, `region`, `district`, `dispatchPolicy`, `selfAssigned`, `active`, `reqLunchBreak`) VALUES (8,'B52669','WORK CENTRE DISPATCH','ASSUR - CO - Voice/Internet/Wholesale - BTS # 4|ASSUR - FIELD - BUS - ADSL/ADSL2+ # 4|ASSUR - FIELD - CON - EAGLE # 4|ASSUR - FIELD - CON - FTTH # 4|ASSUR - FIELD - CON - IPTV - Copper - MDU # 4|ASSUR - FIELD - CON - IPTV - Copper - SFU # 4|ASSUR - FIELD - CON - IPTV - FTTH - MDU # 4|ASSUR - FIELD - CON - IPTV - FTTH - SFU # 4|ASSUR - FIELD - CON - VDSL2 # 4|ASSUR - FIELD - CON - ADSL/ADSL2+ # 4|PROV - CO - Frame - BTS # 4|PROV - FIELD - BUS - Desktop - ADSL/ADSL2+ # 2|PROV - FIELD - BUS - ADSL/ADSL2+ Access # 2|PROV - FIELD - CON - Access and Desktop - FTTH # 4|PROV - FIELD - CON - Access and Desktop - IPTV - Copper - MDU # 4|PROV - FIELD - CON - Access and Desktop - IPTV - Copper - SFU # 4|PROV - FIELD - CON - Access and Desktop - IPTV - FTTH - MDU # 4|PROV - FIELD - CON - Access and Desktop - IPTV - FTTH - SFU # 4|PROV - FIELD - CON - Access and Desktop - VDSL2 # 4|PROV - FIELD - CON/BUS - Connections # 4|PROV - FIELD - CON - Access and Desktop - IPTV - PBOND - SFU # 4|PROV - FIELD - CON - Access and Desktop - IPTV - PBOND - MDU # 4|ASSUR - FIELD - CON - IPTV - PBOND - SFU # 4|ASSUR - FIELD - CON - IPTV - PBOND - MDU # 4|ASSUR - FIELD - CON - IPTV - EAGLE # 4|PROV - FIELD - CON - Voice # 4|ASSUR - FIELD - CON - Voice # 4|PROV - FIELD - BUS - Voice # 2|ASSUR - FIELD - BUS - Voice # 4|ASSUR - FIELD - CON/BUS - BSW # 4|ASSUR - FIELD - CON - Modem Drop # 4|PROV - FIELD - VRGN - RES INTERNET # 4|ASSUR - FIELD - VRGN - RES INTERNET # 4|ASSUR - FIELD - BUS - IPTV - EAGLE # 4|ASSUR - FIELD - BUS - EAGLE # 4|ASSUR - FIELD - CON - PBOND # 4|PROV - FIELD - CON - Access and Desktop - PBOND # 4|PROV - FIELD - VRGN - RES INTERNET - FTTH # 4|PROV - FIELD - VRGN - RES INTERNET - PBOND # 4|ASSUR - FIELD - VRGN - RES INTERNET - FTTH # 4|ASSUR - FIELD - VRGN - RES INTERNET - PBOND # 4|PROV - FIELD - CON - Access and Desktop - ADSL/ADSL2+ # 4|PROV - FIELD - WHSL - Internet # 4|PROV - FIELD - WHSL - BUS - xDSL # 2|PROV - FIELD - WHSL - RES - xDSL # 4|PROV - FIELD - WHSL - RES - PBOND # 4|ASSUR - FIELD - WHSL - Internet # 4|ASSUR - FIELD - WHSL - BUS - xDSL # 4|ASSUR - FIELD - WHSL - RES - xDSL # 4','Technician - Non-Climber|Technician - Climber|Technician - FTTx - High Count Terminal|Site - Non-Dedicated|Technician - FTTx - Brownfield GLB|Technician - BPI - Level 1 (Standard)|Training - IPTV - 4K|Training - WiFi Pod','44517021','-79812404','705','COLLINGWOOD','Drip','','-1','-1');
INSERT INTO `tech1` (`techId`, `name`, `type`, `skills`, `tools`, `latitude`, `longitude`, `region`, `district`, `dispatchPolicy`, `selfAssigned`, `active`, `reqLunchBreak`) VALUES (9,'B52250','WORK CENTRE DISPATCH','ASSUR - FIELD - BUS - DSL Dedicated # 5|ASSUR - FIELD - BUS - VDSL2 # 5|ASSUR - FIELD - BUS - ADSL/ADSL2+ # 5|ASSUR - FIELD - CON - EAGLE # 4|ASSUR - FIELD - CON - IPTV - Copper - MDU # 4|ASSUR - FIELD - CON - IPTV - Copper - SFU # 4|ASSUR - FIELD - CON - VDSL2 # 4|ASSUR - FIELD - CON - ADSL/ADSL2+ # 4|PROV - FIELD - BUS - Access and Desktop - VDSL2 # 5|PROV - FIELD - BUS - Desktop - ADSL/ADSL2+ # 5|PROV - FIELD - BUS - DSL Dedicated # 5|PROV - FIELD - BUS - ADSL/ADSL2+ Access # 5|PROV - FIELD - CON - Access and Desktop - IPTV - Copper - MDU # 4|PROV - FIELD - CON - Access and Desktop - IPTV - Copper - SFU # 4|PROV - FIELD - CON - Access and Desktop - VDSL2 # 4|PROV - FIELD - CON/BUS - Connections # 4|ASSUR - FIELD - WHSL - Voice/CLEC/Reseller # 4|PROV - FIELD - CON - Access and Desktop - IPTV - PBOND - SFU # 4|PROV - FIELD - CON - Access and Desktop - IPTV - PBOND - MDU # 4|ASSUR - FIELD - CON - IPTV - PBOND - SFU # 4|ASSUR - FIELD - CON - IPTV - PBOND - MDU # 4|ASSUR - FIELD - CON - IPTV - EAGLE # 4|PROV - FIELD - CON - Voice # 4|ASSUR - FIELD - CON - Voice # 4|PROV - FIELD - BUS - Voice # 5|ASSUR - FIELD - BUS - Voice # 5|ASSUR - FIELD - CON - Modem Drop # 4|PROV - FIELD - VRGN - RES INTERNET # 4|ASSUR - FIELD - VRGN - RES INTERNET # 4|ASSUR - FIELD - BUS - IPTV - EAGLE # 5|ASSUR - FIELD - BUS - EAGLE # 5|ASSUR - FIELD - CON - PBOND # 4|PROV - FIELD - CON - Access and Desktop - PBOND # 4|PROV - FIELD - VRGN - RES INTERNET - PBOND # 4|ASSUR - FIELD - VRGN - RES INTERNET - PBOND # 4|PROV - FIELD - CON - Access and Desktop - ADSL/ADSL2+ # 4|PROV - FIELD - WHSL - Internet # 4|PROV - FIELD - WHSL - BUS - xDSL # 5|PROV - FIELD - WHSL - RES - xDSL # 4|PROV - FIELD - WHSL - RES - PBOND # 4|ASSUR - FIELD - WHSL - Internet # 4|ASSUR - FIELD - WHSL - BUS - xDSL # 5|ASSUR - FIELD - WHSL - RES - xDSL # 4','Technician - Non-Climber|Site - Non-Dedicated|Project - IPTV - Special|Technician - BPI - Level 1 (Standard)|Training - IPTV - 4K|Technician - Dedicated Load - Business|Training - WiFi Pod','43661034','-79368437','416 EAST','DOWNTOWN','Drip','','0','-1');
INSERT INTO `tech1` (`techId`, `name`, `type`, `skills`, `tools`, `latitude`, `longitude`, `region`, `district`, `dispatchPolicy`, `selfAssigned`, `active`, `reqLunchBreak`) VALUES (10,'C50747','WORK CENTRE DISPATCH','ASSUR - FIELD - BUS - ADSL/ADSL2+ # 1|ASSUR - FIELD - CON - VDSL2 # 1','Site - Non-Dedicated','45905843','-72536338','ERR QUEBEC','DRUMMOND','Drip','','0','0');
INSERT INTO `tech1` (`techId`, `name`, `type`, `skills`, `tools`, `latitude`, `longitude`, `region`, `district`, `dispatchPolicy`, `selfAssigned`, `active`, `reqLunchBreak`) VALUES (12,'7052','WORK CENTRE DISPATCH','ASSUR - FIELD - BUS - FTTB # 3|ASSUR - DATA - Fiber # 3|ASSUR - DATA - IPVPN - Fiber # 3|PROV - DATA - Fiber # 3','Site - Non-Dedicated','45959079','-66679169','NB WESTERN','FREDERICTON','Drip','','0','0');
INSERT INTO `tech1` (`techId`, `name`, `type`, `skills`, `tools`, `latitude`, `longitude`, `region`, `district`, `dispatchPolicy`, `selfAssigned`, `active`, `reqLunchBreak`) VALUES (13,'B51769','WORK CENTRE DISPATCH','ASSUR - FIELD - RISER - FTTx # 4|ASSUR - FIELD - RISER - KG10 # 4|ASSUR - FIELD - RISER - Copper # 4|PROV - ORS - Toshiba # 3|PROV - ORS - Norstar # 3','Technician - Non-Climber|Technician - Climber|Site - Non-Dedicated|Technician - BPI - Level 1 (Standard)|Ladder - 28|Special - Safety - Remote Area','43316901','-80265720','519','KITCHENER','Drip','','0','0');
/*!40000 ALTER TABLE `tech1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02 14:28:12