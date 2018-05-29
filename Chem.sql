-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: Chem
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

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
-- Table structure for table `ABC`
--

DROP TABLE IF EXISTS `ABC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ABC` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ABC`
--

LOCK TABLES `ABC` WRITE;
/*!40000 ALTER TABLE `ABC` DISABLE KEYS */;
INSERT INTO `ABC` VALUES (1,'C'),(2,'C');
/*!40000 ALTER TABLE `ABC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Answer`
--

DROP TABLE IF EXISTS `Answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Answer` (
  `ansNo` int(15) NOT NULL,
  `qNo` int(15) NOT NULL,
  `answer` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`qNo`,`ansNo`),
  CONSTRAINT `Answer_ibfk_1` FOREIGN KEY (`qNo`) REFERENCES `Question` (`qNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Answer`
--

LOCK TABLES `Answer` WRITE;
/*!40000 ALTER TABLE `Answer` DISABLE KEYS */;
INSERT INTO `Answer` VALUES (1,1,'<p>Ca</p>'),(2,1,'<p>Sr</p>'),(3,1,'<p>Pb</p>'),(4,1,'<p>Mg</p>'),(5,1,'<p>Cd</p>'),(1,2,'<p>Cu</p>'),(2,2,'<p>Mn</p>'),(3,2,'<p>Fe</p>'),(4,2,'<p>Se</p>'),(5,2,'<p>Zn</p>'),(1,3,'<p>O<sub>2</sub></p>'),(2,3,'<p>NO</p>'),(3,3,'<p>CO<sub>2</sub></p>'),(4,3,'<p>CH<sub>3</sub>F</p>'),(5,3,'<p>C<sub>2</sub>H<sub>4</sub></p>'),(1,4,'<p>පොලිස්ටයිර්&zwj;රන්</p>'),(2,4,'<p>පොලිවයිනයිල් ක්ලෝරයිඩ්</p>'),(3,4,'<p>පොලිඑතිලීන්</p>'),(4,4,'<p>යුරියා ෆෝමැල්ඩ්හයිඩ්</p>'),(5,4,'<p>ස්වාභාවික රබර්</p>'),(1,5,'<p>Ne</p>'),(2,5,'<p>Zn</p>'),(3,5,'<p>Na</p>'),(4,5,'<p>Ca</p>'),(5,5,'<p>Ar</p>'),(1,6,'<p>2 හා 4</p>'),(2,6,'<p>2 හා 5</p>'),(3,6,'<p>1 හා 5</p>'),(4,6,'<p>3 හා 5</p>'),(5,6,'<p>4 හා 5</p>'),(1,7,'<p>1</p>'),(2,7,'<p>2</p>'),(3,7,'<p>3</p>'),(4,7,'<p>4</p>'),(5,7,'<p>5</p>'),(1,8,'<p>0.012 mol dm<sup>-3</sup></p>'),(2,8,'<p>0.016 mol dm<sup>-3</sup></p>'),(3,8,'<p>0.020 mol dm<sup>-3</sup></p>'),(4,8,'<p>0.120 mol dm<sup>-3</sup></p>'),(5,8,'<p>0.012 mol cm<sup>-3</sup></p>'),(1,9,'<p>1.3</p>'),(2,9,'<p>10.0</p>'),(3,9,'<p>11.3</p>'),(4,9,'<p>5.2</p>'),(5,9,'<p>5.7</p>'),(1,10,'<p>22g</p>'),(2,10,'<p>44g</p>'),(3,10,'<p>75g</p>'),(4,10,'<p>132g</p>'),(5,10,'<p>226g</p>'),(1,11,'<p>0.869</p>'),(2,11,'<p>1.15</p>'),(3,11,'<p>11.5</p>'),(4,11,'<p>115</p>'),(5,11,'<p><span id='),(1,12,'<p>0.10 mol dm<sup>-3 </sup>NH<sub>4</sub>Cl</p>'),(2,12,'<p>0.001 mol dm<sup>-3 </sup>CH<sub>3</sub>COOH</p>'),(3,12,'<p>0.010 mol dm<sup>-3 </sup>NaOH</p>'),(4,12,'<p>0.010 mol dm<sup>-3 </sup>NH<sub>4</sub>OH</p>'),(5,12,'<p>0.006 mol dm<sup>-3 </sup>Ca(OH)<sub>2</sub></p>'),(1,13,'<p>2R</p>'),(2,13,'<p>4R</p>'),(3,13,'<p>8R</p>'),(4,13,'<p>4R<sup>2</sup></p>'),(5,13,'<p>R<sup>2</sup></p>'),(1,14,'<p>ද්&zwj;රාවණයේ pH අගය සෑහෙන ප්&zwj;රමාණයකින් අඩුවීම යි.</p>'),(2,14,'<p>ද්&zwj;රාවණයේ pH අගය සෑහෙන ප්&zwj;රමාණයකින් වැඩි වීමයි.</p>'),(3,14,'<p>ද්&zwj;රාවණයේ pH අගය 7 හි නො වනස් ව පැවතීම යි.</p>'),(4,14,'<p>ද්&zwj;රාවණයේ pH අගය ආසන්න වශයෙන් නියතව පවත්වා ගනිමින් ද්&zwj;රාවණයේ සාන්ද්&zwj;රනය අඩු වීමයි.</p>'),(5,14,'<p>ද්&zwj;රාවණයේ pH අගය හෝ සාන්ද්&zwj;රණය කෙරෙහි හෝ බලපෑමක් නොකිරිමයි.</p>'),(1,15,'<p>0.1 mol dm<sup>-3 </sup>HCl, 24cm<sup>3</sup></p>'),(2,15,'<p>0.1 mol dm<sup>-3 </sup>NaOH, 24cm<sup>3</sup></p>'),(3,15,'<p>සංශුද්ධ ජලය, 24cm<sup>3</sup></p>'),(4,15,'<p>0.05 mol dm<sup>-3 </sup>CH<sub>3</sub>COONa හා 0.05 mol dm<sup>-3 </sup>CH<sub>3</sub>COOH මිශ්&zwj;රණය අඩංගු ද්&zwj;රාවණය, 24cm<sup>3</sup></p>'),(5,15,'<p>0.1 mol dm<sup>-3 </sup>CH<sub>3</sub>COONa, 24cm<sup>3</sup></p>'),(1,16,'<p>NaOH</p>'),(2,16,'<p>NH<sub>4</sub>OH</p>'),(3,16,'<p>H<sub>2</sub>SO<sub>4</sub></p>'),(4,16,'<p>Ca(OH)<sub>2</sub></p>'),(5,16,'<p>NaCl</p>'),(1,17,'<p>කැල්සියම්</p>'),(2,17,'<p>සොඩියම්</p>'),(3,17,'<p>තෝරියම්</p>'),(4,17,'<p>ටයිටේනියම්</p>'),(5,17,'<p>සකොනියම්</p>'),(1,18,'<p>Na</p>'),(2,18,'<p>Mg</p>'),(3,18,'<p>Al</p>'),(4,18,'<p>Si</p>'),(5,18,'<p>Ar</p>'),(1,19,'<p>AgNO<sub>3 </sub>ද්&zwj;රාවණය එකතු කිරීමයි.</p>'),(2,19,'<p>තනුක HNO<sub>3</sub> සහ AgNO<sub>3 </sub> ද්&zwj;රාවණ එකතු කිරීමයි</p>'),(3,19,'<p>NH<sub>4</sub>OH සහ AgNO<sub>3 </sub> ද්&zwj;රාවණ එකතු කිරීමයි</p>'),(4,19,'<p>තනුක HCl හා AgNO<sub>3 </sub>ද්&zwj;රාවණ එකතු කිරීමයි</p>'),(5,19,'<p>තනුක H<sub>2</sub>SO<sub>4 </sub>හා AgNO<sub>3 </sub>ද්&zwj;රාවණ එකතු කිරීමයි</p>'),(1,20,'<p>NiCl<sub>2 </sub>වල ද්&zwj;රාවණයකට, වැඩිපුර තනුක HCl එකතු කිරීම</p>'),(2,20,'<p>FeCl<sub>3 </sub>ද්&zwj;රාවණයකට NH<sub>4</sub>CNS එකතු කිරීම</p>'),(3,20,'<p>සාන්ද්&zwj;ර CuSO<sub>4 </sub>ද්&zwj;රාවණයකට සාන්ද්&zwj;ර HCl එකතු කිරීම</p>'),(4,20,'<p>K<sub>2</sub>Cr<sub>2</sub>O<sub>7 </sub>සඳ + ද්&zwj;රාවණයකට වැඩිපුර NaOH එකතු කිරීම</p>'),(5,20,'<p>සාන්ද්&zwj;ර COCl<sub>2</sub> ද්&zwj;රාවණයකට වැඩිපුර සාන්ද්&zwj;ර HCl එකතු කිරීම</p>'),(1,21,'<p>HCl ද්‍රවනයෙන් පිපෙට්ටුව සේදීම</p>'),(2,21,'<p>NaOH ද්‍රාවණයෙන් අනුමාපන ප්ලාස්කුව සේදීම</p>'),(3,21,'<p>අනුමාපනය ට භාජනය වන ද්‍රාවණවල උෂ්ණත්වයන් මැනීම</p>'),(4,21,'<p>ශුන්‍ය ලක්ෂ දක්වා HCl ද්‍රවනයෙන් බියුරෙට්ටුව පිරවීම</p>'),(5,21,'<p>බියුරෙට්ටුව ඇතුළත HCl ද්‍රවනයෙන් සේදීම</p>'),(1,22,'<p>නයිට්&zwj;රජන් ඔක්සිකරණයට පමණක් භාජනය වේ</p>'),(2,22,'<p>නයිට්&zwj;රජන් ඔක්සිහරණය ට පමණක් භාජනය වේ</p>'),(3,22,'<p>නයිට්&zwj;රජන් ඔක්සිකරණයට මෙන්ම ඔක්සිහරණය ට ද භාජනය වේ</p>'),(4,22,'<p>ශුන්&zwj;ය ලක්ෂ දක්වා HCl ද්&zwj;රවනයෙන් බියුරෙට්ටුව පිරවීම</p>'),(5,22,'<p>ජලය, ඔක්සිකාරකයක් වශයෙන් ද ඔක්සිහාරකයක් වශයෙන් ද ක්&zwj;රියා කරයි</p>'),(1,23,'<p>HF&lt;HCl&lt;HBr&lt;HI</p>'),(2,23,'<p>HF&lt;HCl&lt;HBr=HI</p>'),(3,23,'<p>HF&lt;HCl=HBr=HI</p>'),(4,23,'<p>HF=HCl=HBr=HI</p>'),(5,23,'<p>HF=HCl&lt;HBr&lt;HI</p>');
/*!40000 ALTER TABLE `Answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Author`
--

DROP TABLE IF EXISTS `Author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Author` (
  `authorId` int(3) NOT NULL AUTO_INCREMENT,
  `destination` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`authorId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Author`
--

LOCK TABLES `Author` WRITE;
/*!40000 ALTER TABLE `Author` DISABLE KEYS */;
INSERT INTO `Author` VALUES (20,'Mr','tharindu.jayathilake1@gmail.com','Tharindu','*23AE809DDACAF96AF0FD78ED04B6A265E05AA257');
/*!40000 ALTER TABLE `Author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoneQuestion`
--

DROP TABLE IF EXISTS `DoneQuestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DoneQuestion` (
  `doneId` int(16) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `qNo` int(15) NOT NULL,
  PRIMARY KEY (`doneId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoneQuestion`
--

LOCK TABLES `DoneQuestion` WRITE;
/*!40000 ALTER TABLE `DoneQuestion` DISABLE KEYS */;
INSERT INTO `DoneQuestion` VALUES (1,'kasun',1),(2,'kasun',2),(3,'kasun',1),(4,'kasun',2),(5,'kasun',1),(6,'kasun',2),(7,'kasun',1),(8,'kasun',1);
/*!40000 ALTER TABLE `DoneQuestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Question`
--

DROP TABLE IF EXISTS `Question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Question` (
  `qNo` int(15) NOT NULL AUTO_INCREMENT,
  `topicId` int(2) DEFAULT NULL,
  `authorId` int(15) DEFAULT NULL,
  `question` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corAnwrId` int(15) DEFAULT NULL,
  `difficulty` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ex` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exImage` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exVed` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`qNo`),
  KEY `authorId` (`authorId`),
  KEY `topicId` (`topicId`),
  CONSTRAINT `Question_ibfk_1` FOREIGN KEY (`authorId`) REFERENCES `Author` (`authorId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Question_ibfk_2` FOREIGN KEY (`topicId`) REFERENCES `Topic` (`topicId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Question`
--

LOCK TABLES `Question` WRITE;
/*!40000 ALTER TABLE `Question` DISABLE KEYS */;
INSERT INTO `Question` VALUES (1,3,20,'<p>Zn වලට වඩාත්ම සමාන රසායනික ගුණ ඇති මූලද්&zwj;රව්&zwj;යය වන්නේ</p>',5,'Easy','','','','',''),(2,3,20,'<p>ආවර්තිතා වගුවේ d ගොනුවට අයත් නොවන මුලද්&zwj;රව්&zwj;යය වන්නේ</p>',4,'Easy','','','','',''),(3,3,20,'<p>300 K උෂ්ණත්වයක දී හා වායුගෝල 1 ක පීඩනයක් යටතෙහි, N<sub>2</sub>, ඝනත්වයට ආසන්න ම ඝනත්වයක් ඇතැයි බලාපොරොත්තු විය හැකි වායුව කුමක්ද?</p>\r\n<p>(සාපේක්ෂ පරමාණුක ස්කන්ධ H = 1; C = 12; N = 14;0 = 16; F = 19)</p>',5,'Easy','','','','',''),(4,3,20,'<p>පහත සඳහන් ඒවායින් තාපස්ථාපන බහු අවයවයක් වන්නේ කුමක් ද?</p>',4,'Easy','','','','',''),(5,3,20,'<p>වායුමය අවස්ථාවේ දී ද්විපරමාණුක අණුවක් සෑදීමට වඩාත්ම ඉඩ ඇති මුලද්&zwj;රව්&zwj;ය වනුයේ</p>',3,'Easy','','','','',''),(6,3,20,'<p>බාහිර ඉලෙක්ට්&zwj;රෝන වින්&zwj;යාසය ns<sup>2</sup> np<sup>3</sup> ආකාරයේ වන මුලද්&zwj;රව්&zwj;යයකට තිබීමට වඩාත් ම ඉඩ ඇති සංයුජතා වන්නේ</p>',4,'Easy','','','','',''),(7,3,20,'<p>සාපේක්ෂ අණුක ස්කන්ධය 270 ක් වන, C, H සහ 0 පමණක් අඩංගු කාබනික සංයෝගයක ස්කන්ධය අනුව 29.6% ඔක්සිජන් අඩංගු ය. මෙම කාබනික සංයෝගයේ අණුවක ඔක්සිජන් පරමාණු කොපමණ ඇත් ද?</p>\r\n<p>( සාපේක්ෂ පරමාණුක ස්කන්ධය: H= 1; C:12; O= 16)</p>',5,'Easy','','','','',''),(8,3,20,'<p>0.050mol dm<sup>-3</sup> NaOH ද්&zwj;රාවණ 100.0cm<sup>3</sup> ක් හා 0.020 mol dm<sup>-3</sup> H<sub>2</sub>SO<sub>4 </sub>ද්&zwj;රාවණ 50.0cm<sup>3</sup> මිශ්&zwj;රකර මිශ්&zwj;රනය මුළු පරිමාව<sub> </sub>250.0 cm<sup>3</sup> වන තෙක් ආස්&zwj;රත ජලය එකතු කරන ලදී. අවසාන ද්&zwj;රාවණයේ OH<sup>- </sup>අයන සාන්ද්&zwj;රණය වනුයේ</p>',1,'Easy','','','','',''),(9,3,20,'<p>ස්කන්ධය අනුව එතනෝල් C<sub>2</sub>H<sub>5</sub>OH 10% ක් අඩංගු ජලීය එතනෝල් ද්&zwj;රාවණ 0.10 kg හි හයිඩ්&zwj;රජන් පරමාණු මවුල කොපමණ අන්තර්ගත වේද?</p>\r\n<p>(සාපේක්ෂ පරමාණුක ස්කන්ධ H = 1;C = 12: 0 = 16)</p>',3,'Easy','','','','',''),(10,3,20,'<p>Ca<sub>3</sub>(PO<sub>4</sub>)<sub>2</sub>+ 4H<sub>3</sub>PO<sub>4&nbsp;</sub> --&gt;&nbsp;&nbsp;3Ca(H<sub>2</sub>PO<sub>4</sub>)<sub>2</sub>&nbsp;</p>\r\n<p>යන සමීකරණය අනුව, Ca(H<sub>2</sub>PO<sub>4</sub>)<sub>2</sub> 100g ලබාගැනීමට අවශ්&zwj;ය Ca<sub>3</sub>(PO<sub>4</sub>)<sub>2 </sub>ස්කන්ධය ගණනය කරන්න.</p>\r\n<p>(සාපේක්ෂ පරමාණුක ස්කන්ධ H = 1: 0 = 16: P = 31: Ca = 40)</p>',2,'Easy','','','','',''),(11,3,20,'<p>HCl ද්&zwj;රාවණයක කන්ධය අනුව HCl 36.5% ක් අඩංගු වේ. ද්&zwj;රාවණයේ ඝනත්වය 1.15 g cm<sup>-3</sup> වේ. ද්&zwj;රාවණයේ HCl සාන්ද්&zwj;රනය, mol dm<sup>-3</sup> ඒකක වලින් කොපමණද ?</p>\r\n<p>(සාපේක්ෂ පරමාණුක ස්කන්ධය H = 1; Cll = 35.5)</p>',3,'Easy','','','','',''),(12,3,20,'<p>පහත සඳහන් ජලීය ද්&zwj;රාවණ අතරෙන් ඉහළම pH අගය දක්වන්නේ කුමක් ද</p>',5,'Easy','','','','',''),(13,3,20,'<p>2A + B --&gt; 2D යනු තනි පියවර ප්&zwj;රතික්&zwj;රියාවකි. A හා B වල දෙන ලද සාන්ද්&zwj;රණ සඳහා ප්&zwj;රතික්&zwj;රියාවේ ශීඝ්&zwj;රතාවය R වලට සමාන වේ. A හා B වල සාන්ද්&zwj;රණ දෙගුණ කළ විට ප්&zwj;රතික්&zwj;රියාවේ සීග්&zwj;රතාවය විය හැක්කේ.&nbsp;</p>',3,'Easy','','','','',''),(14,3,20,'<p>0.1 mol dm<sup>-3 </sup>NH<sub>4</sub>OH ද්&zwj;රාවණය 100 cm<sup>3 , </sup>0.1 mol dm<sup>-3 </sup>NH<sub>4</sub>Cl ද්&zwj;රාවණය 100 cm<sup>3</sup> සමඟ මිශ්&zwj;රකර ද්&zwj;රාවණයක් පිළියෙල කරන ලදී. මෙම ද්&zwj;රාවණයට තව ජලය 10 cm<sup>3</sup>එකතු කළ විට ප්&zwj;රතිඵලය වනුයේ.</p>',4,'Easy','','','','',''),(15,3,20,'<p>0.1 mol dm<sup>-3 </sup> HCl ,1cm<sup>3 </sup> ක් එක්කල විට, pH අගයෙහි විශාලතම වෙනස දක්වන්නේ පහත සඳහන් කුමන ද්&zwj;රාවණයෙන් ද?</p>',3,'Easy','','','','',''),(16,3,20,'<p>ඇපටයිට්, පොස්පේට් පොහොර බවට කාර්මිකව පරිවර්තනය කිරීම සඳහා පහත සඳහන් ද්&zwj;රව්&zwj;යයන් අතරින් කුමක් භාවිතා වේ ද?</p>',3,'Easy','','','','',''),(17,3,20,'<p>ශ්&zwj;රී ලංකාවේ නැගෙනහිර වෙරළෙහි පුල්මුඩය නම් ස්ථානයේ ඇති ඛනිජ වැලි වර්ගයක් ඉල්මනයිට් වශයෙන් හැඳින්වෙයි. ඉල්මනයිට් වල වැඩිම වශයෙන් අඩංගු වන්නේ පහත සඳහන් මූල ද්&zwj;රව්&zwj;යයන් අතරින් කුමක් ද?</p>',4,'Easy','','','','',''),(18,3,20,'<p>විශාලතම දෙවැනි අයණීකරණ ශක්තිය ඇත්තේ පහත සඳහන් මූල ද්&zwj;රව්&zwj;යයන් අතරින් කුමකටද?</p>',1,'Easy','','','','',''),(19,3,20,'<p>ජලයෙහි අඩංගු ක්ලෝරයිඩ් අයන අනාවරණය කිරීමට හොඳම ක්&zwj;රමය වනුයේ?</p>',2,'Easy','','','','',''),(20,3,20,'<p>CuSO<sub>4 </sub>වල ජලය ද්&zwj;රාවණයකට වැඩිපුර NH<sub>4</sub>OH<sub> </sub>එකතු කළ විට ලැබෙන වර්ණයට වඩාත්ම සමීප වර්ණයක් ඇති ද්&zwj;රාවණයක් ලැබෙනුයේ පහත සඳහන් කුමන ක්&zwj;රියාව මඟින් ද?</p>',5,'Easy','','','','',''),(21,3,20,'<p>NaOH ද්&zwj;රාවණයක 25.0 cm<sup>3 </sup> කොටස්, HCl ද්&zwj;රාවණයක් සමග අනුමාපනය කිරීමේදී අත්&zwj;යාවශ්&zwj;යයෙන්ම සිදු කළ යුත්තේ පහත සඳහන් කුමන ක්&zwj;රියාව ද?</p>',5,'Easy','','','','',''),(22,3,20,'<p>2NO<sub>2 </sub> (g) + H<sub>2</sub>O(l) HNO<sub>3</sub>(aq)+HNO<sub>2</sub>(aq) යන ප්&zwj;රතික්&zwj;රියාවේදී,</p>',3,'Easy','','','','',''),(23,3,20,'<p>හැලජන් අම්ල යන්හි 0.1 mol dm<sup>-3 </sup>ජලීය ද්&zwj;රාවණ වල H<sup>+</sup>(aq) සාන්ද්&zwj;රණයන්ගේ නිවැරදි අනුපිලිවෙල වන්නේ පහත සඳහන් ඒවායින් කුමන එකද?</p>',3,'Easy','','','','','');
/*!40000 ALTER TABLE `Question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Student` (
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(500) NOT NULL,
  `contactNo` varchar(11) NOT NULL,
  `score` int(10) NOT NULL,
  `login` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES ('chuka','chuka@gmail.com','*B81FFF3D843F219AE3F5E2E3043CEDB45B3E4453','0718546688',0,'2018/04/26 22:47:03'),('ff','abc@dwd.com','*23AE809DDACAF96AF0FD78ED04B6A265E05AA257','0712312146',0,'abc'),('k3','k3@gmail.com','*CB5F51E2674C2FE846CC12C17996C889A05E2DA3','0718875155',0,'2018/05/10 00:15:24'),('k5','k5@gmail.com','*64C4113589A7F735F066A50CD8DA5A3AD4D9FEA6','0718724531',0,'2018/05/10 00:39:22'),('kasun','abc@dwd.com','*23AE809DDACAF96AF0FD78ED04B6A265E05AA257','0712312126',70,'\"dssds\"'),('KAsun1','abc@dwd.com','*23AE809DDACAF96AF0FD78ED04B6A265E05AA257','0712312146',0,''),('Kasun2','abc@dwd.com','*23AE809DDACAF96AF0FD78ED04B6A265E05AA257','0712312146',0,''),('kasun3','abc@dwd.com','*23AE809DDACAF96AF0FD78ED04B6A265E05AA257','0712312146',0,'abc'),('kaz','kaz@gmail.com','*55C314568D9F0B4FDD3FB70BB2F2D6BE9F2B3C29','0718724671',0,'2018/05/05 22:31:55'),('nilantha','nilantha@gmail.com','*7A3008E171AA84E75F6B504AEC7760661EB71DAB','0718724512',0,'2018/04/27 00:21:47'),('nuwan','nuwan@gmail.com','*A3A55A5365C0C7C569BC2BFD41E49042658F5823','0784313646',0,'2018/04/30 08:30:17'),('t10','t10@gmail.com','*EDFA28B6BBC41D911A7B84A6EA4E1C9E6D33A681','0717726265',0,''),('t12','t12@gmail.com','*9FE3EA261CAB9275969095390F05383C035137A6','0718724671',0,''),('t13','t13@gmail.com','*D85B1B43A469E2F28EF1CFFBD8DCB4AC3829EE75','0828827727',0,''),('t14','t14@gmail.com','*9267F7E32F874061ACC2033FC67A5754538426E0','0715255255',0,''),('t3','t3@gmail.com','*3E2EDAAC6C52E6E69DBABF61368A4E95BF21A730','0727626276',0,''),('t4','t4@gmail.com','*3E2EDAAC6C52E6E69DBABF61368A4E95BF21A730','0727626276',0,''),('t5','t5@gmail.com','*33AEF040FF4DF78608D1EA5F8F1F48578CD2C8F4','0825555554',0,''),('t6','t6@gmail.com','*A826949B64286567C7A2BD70496F27EA1073D0E7','0817716264',0,''),('t7','t7@gmail.con','*7E4DB9373BAFBD0ADE61AABABA4A6C48CE86BC44','0727727266',0,''),('t8','t8@gmail.com','*59BBF60C6B448F5DA0070C7B0001DA3A5536FB97','0515515665',0,''),('test1','test1@gmail.com','*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29','0717273666',0,''),('tt','tt@gmail.com','*8A4C0190D23732FF96AA783D5D7B1AD95A0FA6DE','0771655252',0,''),('wer','wer@gmail.com','*1732A8B8F1D664B76111DE273E86D80F4892EA5A','0718723456',0,'');
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Topic`
--

DROP TABLE IF EXISTS `Topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Topic` (
  `topicId` int(2) NOT NULL AUTO_INCREMENT,
  `topic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`topicId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Topic`
--

LOCK TABLES `Topic` WRITE;
/*!40000 ALTER TABLE `Topic` DISABLE KEYS */;
INSERT INTO `Topic` VALUES (1,NULL),(2,NULL),(3,'General knowledge '),(4,'Organic'),(5,'Inorganic'),(6,'Structure and bonding'),(7,'Electro chemistry'),(8,'');
/*!40000 ALTER TABLE `Topic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-29 14:11:31
