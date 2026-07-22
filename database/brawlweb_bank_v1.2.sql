-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: brawlweb
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `brawler`
--

DROP TABLE IF EXISTS `brawler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brawler` (
  `id_brawler` int NOT NULL AUTO_INCREMENT,
  `nome_brawler` varchar(30) NOT NULL,
  `classe` varchar(20) NOT NULL,
  `vida` varchar(50) NOT NULL,
  `dano` varchar(50) NOT NULL,
  `descricao` text,
  `id_trio` int NOT NULL,
  `id_raridade` int NOT NULL,
  `ordem_raridade` int NOT NULL,
  `dt_lancamento` date NOT NULL,
  PRIMARY KEY (`id_brawler`),
  UNIQUE KEY `nome_brawler` (`nome_brawler`),
  KEY `id_trio` (`id_trio`),
  KEY `id_raridade` (`id_raridade`),
  CONSTRAINT `brawler_ibfk_1` FOREIGN KEY (`id_trio`) REFERENCES `trio` (`id_trio`),
  CONSTRAINT `brawler_ibfk_2` FOREIGN KEY (`id_raridade`) REFERENCES `raridade` (`id_raridade`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brawler`
--

LOCK TABLES `brawler` WRITE;
/*!40000 ALTER TABLE `brawler` DISABLE KEYS */;
INSERT INTO `brawler` VALUES (1,'El Primo','Tanque','13000','3040(4x760)','El Primo gosta de se exibir no ringue e nasceu para isso. Todo mundo delira quando ele entra em cena. Alguns de alegria, outros de dor mesmo...',2,2,5,'2017-06-15'),(2,'Sandy','Controle','8200','1800','Nas raríssimas ocasiões em que não está dormindo, Sandy tenta ajudar Tara na loja. No entanto, o papo dos clientes dá um sono, e todo o trabalho fica para sua irmã...',1,6,4,'2019-09-18'),(3,'Gale','Controle','8000','3600(6x600)','O trabalho do Gale é usar seu soprador de folhas para limpar os arredores do Hotel Nevado do Mister P. Não se assuste caso veja gente voando, pois ninguém disse que ele deveria parar quando os hóspedes chegassem...',3,4,14,'2019-09-18'),(4,'Alli','Algoz','7800','2600','Alli é a acanhada mecânica do pântano dos Pombinhos. Ela adora colocar a mão na massa, seja consertando máquinas quebradas ou perseguindo obstinadamente outros Brawlers. Se estiver voltando para casa tarde da noite e ouvir um barulho estranho, é bem provável que seja a Alli tentando dar um oizinho.',4,5,4,'2025-07-03'),(5,'Mandy','Atirador','6000','2800','Mandy usa um traje digno de rainha para trabalhar em sua loja de doces. Para a surpresa de muitos, ela não tem nada de doce e governa seu reino com mão de ferro',5,4,34,'2023-01-02'),(6,'Gigi','Algoz','8200','1200','Gigi, uma marionete enfeitiçada que causa arrepios por onde passa, e nunca se separa da sua luva mágica. Você pode encontrá-la no Bazar das Bizarrices, dançando entre as estantes',6,5,37,'2026-12-04'),(7,'Amber','Controle','6800','16800(420x40, 4200 por segundo)','Amber é do tipo que bota lenha na fogueira(ou seria fogo na tocha?). Ela é superconfiante em suas habilidades, apesar de ser meio desastrada. Seu lema é:\'\'CIPA para quê? O show não pode parar!\'\'.',2,6,5,'2020-10-23'),(8,'Poco','Suporte','8000','1520','Poco acredita no poder curativo da música e, por isso, está sempre tocando (mesmo quando pedem para ele parar)',2,2,7,'2017-06-15'),(9,'8-BIT','Destruidor','10400','4080(6x680)','Um jogo de fliperama famoso por sua dificuldade, 8-BIT sempre odiou a mão ensebada dos jogadores em seus controles. Agora que uma de suas pistolas sumiu, ele jurou vingança e não vai parar por nada',12,3,4,'2019-08-29'),(10,'Rico','Destruidor','6000','3000(600x5)','O quê?, Máquina de chiclete? Claro que não... O Rico é um caçador espacial de recompensas que persegue os criminosos mais procurados da galáxia!',12,3,5,'2017-06-15'),(11,'Brock','Tiro Preciso','6000','2320','Quem vê o Brock todo estilosão gritando ao jogar videogame (seu hobby favorito) não acredita que o cara é introvertido. É melhor não dar mole, pois ele vai fazer tudo para ganhar!',12,2,4,'2017-06-15'),(12,'Tara','Destruidor','6600','2880(3x960)','Tara viu nas cartas que o futuro é nebuloso, mas não se preocupe! Além de prever o futuro, ela vende amuletos protetores por uma bagatela! Vai querer um?',1,5,2,'2017-09-04'),(13,'Eugênio','Controle','7600','2000','As pessoas acham que o Eugênio não passa de um gênio engraçadinho, mas elas não sabem que ele tem personalidade dupla (a outra fica na lâmpada). Nem os remédios do Byron curam isso!',1,5,3,'2019-02-15'),(14,'Jessie','Controle','6600','2120','Apesar de ser um verdadeiro prodígio e construir armas com sucata, Jessie não passa de uma garotinha aos olhos de sua mãe, Pam',8,3,1,'2017-06-15'),(15,'Corvo','Algoz','5600','2280','Corvo é caladão e não confia em ninguém, mas dizem por aí que ele sempre aparece na lanchonente do Starr Park para encontrar o Bull e a Bibi',7,6,2,'2017-06-15'),(16,'Bibi','Tanque','10000','2800','Bibi é uma punk durona com um taco de beisebol e muita atitude. Ela também é meio nerd, mas faz de tudo para esconder, afinal tem uma imagem a zelar!',7,4,7,'2019-05-22'),(17,'Bull','Tanque','10000','4400(5x880)','Como todo millenial, Bull já não é o touro selvagem de antes, é meio careta e tem até horário para dormir. Mas cuidado! Ele ainda faz picadinho de quem pisa na bola.',7,2,3,'2017-06-15'),(18,'Stu','Algoz','7000','2160(2x1080)','Apesar do pneu estar um pouco bambo e de alguns amassados na lataria por conta de sua longa carreira, Stu ainda é o dublê mais requisitado de todos graças a suas derrapadas de tirar o fôlego!',9,4,3,'2021-03-15'),(19,'Sirius','Controle','6800','2400(2x1200)','Sua identidade é tão misteriosa quanto os seus poderes. Dizem á boca pequena que ele foi uma das grandes atrações do Starr Park, mas acabou sendo banido injustamente. Agora, ele está de volta em busca de vingança!',14,7,2,'2026-05-03');
/*!40000 ALTER TABLE `brawler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id_perfil` int NOT NULL AUTO_INCREMENT,
  `id_brawler` int NOT NULL,
  `perfil_dir` varchar(255) NOT NULL,
  `ordem_perfil` int NOT NULL,
  PRIMARY KEY (`id_perfil`),
  KEY `id_brawler` (`id_brawler`),
  CONSTRAINT `perfil_ibfk_1` FOREIGN KEY (`id_brawler`) REFERENCES `brawler` (`id_brawler`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,1,'perfil/elprimo_perfil.png',1),(2,2,'perfil/sandy_perfil.png',1),(3,3,'perfil/gale_perfil.png',1),(4,4,'perfil/alli_perfil.png',1),(5,5,'perfil/mandy_perfil.png',1),(6,6,'perfil/gigi_perfil.png',1),(7,7,'perfil/amber_perfil.png',1),(8,8,'perfil/poco_perfil.png',1),(9,9,'perfil/8bit_perfil.png',1),(10,10,'perfil/rico_perfil.png',1),(11,11,'perfil/brock_perfil.png',1),(12,12,'perfil/tara_perfil.png',1),(13,13,'perfil/eugenio_perfil.png',1),(14,14,'perfil/jessie_perfil.png',1),(15,15,'perfil/corvo_perfil.png',1),(16,16,'perfil/bibi_perfil.png',1),(17,17,'perfil/bull_perfil.png',1),(18,18,'perfil/stu_perfil.png',1),(19,19,'perfil/sirius_perfil.png',1),(20,15,'perfil/corvo2_perfil.png',2),(21,19,'perfil/sirius2_perfil.png',2);
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raridade`
--

DROP TABLE IF EXISTS `raridade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raridade` (
  `id_raridade` int NOT NULL AUTO_INCREMENT,
  `nome_raridade` varchar(50) NOT NULL,
  PRIMARY KEY (`id_raridade`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raridade`
--

LOCK TABLES `raridade` WRITE;
/*!40000 ALTER TABLE `raridade` DISABLE KEYS */;
INSERT INTO `raridade` VALUES (1,'Inicial'),(2,'Raro'),(3,'Super-raro'),(4,'Épico'),(5,'Mítico'),(6,'Lendário'),(7,'Ultralendário');
/*!40000 ALTER TABLE `raridade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trio`
--

DROP TABLE IF EXISTS `trio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trio` (
  `id_trio` int NOT NULL AUTO_INCREMENT,
  `nome_trio` varchar(100) NOT NULL,
  PRIMARY KEY (`id_trio`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trio`
--

LOCK TABLES `trio` WRITE;
/*!40000 ALTER TABLE `trio` DISABLE KEYS */;
INSERT INTO `trio` VALUES (1,'Andarilhos Místico'),(2,'Artistas Mexicanos'),(3,'Hotel Nevado'),(4,'Pântano dos Pombinhos'),(5,'Terra dos Doces'),(6,'Bazar das Bizarrices'),(7,'Gangue de Retrópole'),(8,'Ferro-velho'),(9,'Show de Acrobacias'),(10,'Força Starr'),(11,'Super Heróis'),(12,'Fliperama'),(13,'Profundezas'),(14,'Circo Bizarro');
/*!40000 ALTER TABLE `trio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-21 23:22:46
