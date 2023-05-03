-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: miranda
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `idamenities` int NOT NULL,
  `amenity` varchar(245) NOT NULL,
  PRIMARY KEY (`idamenities`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,'AC'),(2,'TV'),(3,'WiFi'),(4,'Beach Towels'),(5,'Kitchen'),(6,'Coffe Maker'),(7,'Soap'),(8,'Shampoo'),(9,'Fridge');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03  9:41:11

-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: miranda
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `booking_status`
--

DROP TABLE IF EXISTS `booking_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_status` (
  `id_booking_status` int NOT NULL,
  `status` varchar(245) NOT NULL,
  PRIMARY KEY (`id_booking_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_status`
--

LOCK TABLES `booking_status` WRITE;
/*!40000 ALTER TABLE `booking_status` DISABLE KEYS */;
INSERT INTO `booking_status` VALUES (1,'In-Progress'),(2,'Check-In'),(3,'Check-Out');
/*!40000 ALTER TABLE `booking_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03  9:41:12

-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: miranda
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `id_customer` int NOT NULL,
  `order` date NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `request` varchar(245) NOT NULL,
  `id_room_type` int NOT NULL,
  `number` int NOT NULL,
  `photo` varchar(245) DEFAULT NULL,
  `id_status` int NOT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `idRoomType_idx` (`id_room_type`),
  KEY `idStatus_idx` (`id_status`),
  KEY `idCustomer_idx` (`id_customer`),
  CONSTRAINT `id_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_room_type` FOREIGN KEY (`id_room_type`) REFERENCES `room_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_status` FOREIGN KEY (`id_status`) REFERENCES `booking_status` (`id_booking_status`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,714,'2023-03-20','2023-03-24','2023-03-30','None',2,100,'photo',2),(2,714,'2023-03-20','2023-03-24','2023-03-30','Late checkout',2,100,'photo',2),(3,3325,'2022-06-21','2023-09-05','2023-06-11','Early Checkin',4,670,'https://travl.dexignlab.com/xhtml/images/room/room1.jpg',2),(4,776,'2022-02-23','2023-11-28','2023-03-17','Late Checkout',1,1703,'https://travl.dexignlab.com/xhtml/images/room/room6.jpg',3),(5,9615,'2022-01-09','2023-11-23','2023-05-15','Late Checkout',1,1761,'https://travl.dexignlab.com/xhtml/images/room/room6.jpg',3),(6,7366,'2022-08-31','2023-04-20','2023-11-15','Late Checkout',4,252,'https://travl.dexignlab.com/xhtml/images/room/room1.jpg',2),(8,8000,'2022-01-08','2023-08-18','2023-11-12','Late Checkout',4,988,'https://travl.dexignlab.com/xhtml/images/room/room6.jpg',3),(9,3325,'2022-01-23','2023-09-09','2023-12-07','None',3,294,'https://travl.dexignlab.com/xhtml/images/room/room6.jpg',2),(10,8724,'2022-09-04','2023-11-10','2023-04-06','None',1,247,'https://travl.dexignlab.com/xhtml/images/room/room6.jpg',3),(11,776,'2022-01-22','2023-04-13','2023-02-11','Late Checkout',1,1262,'https://travl.dexignlab.com/xhtml/images/room/room1.jpg',2),(12,714,'2022-07-01','2022-12-30','2023-11-13','Late Checkout',2,653,'https://travl.dexignlab.com/xhtml/images/room/room1.jpg',1);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03  9:41:14

-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: miranda
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id_contacts` varchar(36) NOT NULL,
  `idCustomer` int NOT NULL,
  `comment` longtext NOT NULL,
  `archived` tinyint NOT NULL,
  PRIMARY KEY (`id_contacts`),
  KEY `idCustomer_idx` (`idCustomer`),
  CONSTRAINT `idCustomer` FOREIGN KEY (`idCustomer`) REFERENCES `customers` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES ('040df97c-d6c4-408a-a46e-74c9b062ccc2',776,'Enim distinctio temporibus praesentium. Eos minima ea est dolore. Quidem nobis vero atque facilis voluptatem ex ipsa. Blanditiis omnis iure repellat. Dolorem ipsa illum vero nihil corrupti delectus illum.\nExercitationem aut quos quia quis autem nemo a laboriosam voluptates. Ullam natus nesciunt dolor nobis reiciendis accusamus hic esse. Accusantium porro quis dolorum. Excepturi aspernatur veniam natus recusandae sequi. Esse aliquid placeat nulla amet velit quod quo laboriosam quasi.\nLaboriosam adipisci aspernatur quae. Minima quibusdam vero debitis assumenda assumenda iste facilis modi. Aspernatur distinctio exercitationem eveniet id itaque. Eos commodi nihil sint sit dolorem molestiae corporis suscipit. Vero cupiditate dignissimos minus distinctio nam doloribus.',0),('10ab4ab5-93d7-4811-afd1-0b98c1ad120c',9615,'Fuga ducimus architecto amet harum quibusdam. Velit exercitationem et quos quo quaerat natus provident. Exercitationem temporibus soluta quibusdam. Ea porro unde maiores harum dolor amet veritatis necessitatibus.\nAtque error quas eos laudantium nesciunt est. Eveniet recusandae molestias. Autem at incidunt maiores omnis aliquid aliquid dolorum. Repellendus quasi corrupti neque cum accusantium. Culpa laboriosam in. Facere cum quam libero magni magni.\nDolores illo iure fugiat earum nostrum possimus. Unde voluptatibus accusamus laboriosam voluptas esse. At ipsa assumenda dicta blanditiis amet expedita aspernatur. Nihil nihil accusantium laborum accusantium cum deleniti cumque.',1),('179d1847-4cbd-47da-916f-6273eec787ac',8724,'Ab eum quisquam quam. Optio velit fugit hic consequuntur vitae id. Asperiores vitae est voluptatibus illum quo repudiandae nihil.\nQuo tempore tempore saepe temporibus ipsum minima ducimus similique. Incidunt reprehenderit sapiente corporis vero dolores voluptatem velit ab. Assumenda deserunt fugiat reiciendis necessitatibus. Expedita at beatae esse ratione.\nUnde esse itaque quae eos ullam. Beatae facilis voluptatem quasi tempore commodi placeat fuga eveniet. Culpa ratione doloremque voluptates dignissimos ipsum illum in. In dolorem aut illo inventore. A ut ducimus minima odit.',0),('24e47849-51fd-4449-a436-2827629613f4',776,'Itaque vel iusto incidunt. Accusamus reprehenderit molestias modi hic quis harum. Voluptas officiis facere repellat. Soluta voluptatibus pariatur soluta laborum illum laudantium. Totam fugiat consequatur deserunt quas reprehenderit mollitia omnis mollitia debitis. Sed rerum optio consectetur blanditiis.\nCommodi minima eum itaque sed qui quibusdam eaque voluptas. Ipsam facilis ipsam perspiciatis saepe. Hic illo exercitationem odit. Aut architecto suscipit dolorem quas provident dignissimos dicta similique.\nNatus atque libero in minima recusandae aspernatur. Ad provident rem delectus suscipit. Pariatur aut reprehenderit fugit a quos exercitationem. Quod saepe et quia amet maxime error voluptate fugiat.',0),('2de8f9d2-a2e1-4874-8ec5-721307d49790',9615,'Facere voluptatibus excepturi itaque reprehenderit. Consectetur commodi consequatur adipisci ipsum tenetur veniam a nemo ex. Voluptates doloremque repellendus non repellendus. Dolor est voluptatibus sit possimus saepe illo inventore. Dolorem est maiores saepe maiores similique.\nQuibusdam quod consectetur eius fugit repellendus aliquid earum esse. Blanditiis nemo libero assumenda culpa distinctio. Repudiandae dolores nemo ut laborum inventore harum fugiat explicabo. Nam eius sit dignissimos vitae reprehenderit molestiae voluptatem aspernatur non. Similique libero rerum illum delectus ullam rem voluptatem. Molestias fugit maxime adipisci.\nOmnis illo occaecati ratione. Assumenda occaecati suscipit eveniet excepturi eligendi ab quaerat harum. Ratione ut vitae porro saepe quia eveniet consequatur. Maxime accusamus magni itaque quia corporis repellendus.',0),('33dbd0df-dd95-41a7-ae0e-6bf2ed1af02a',7366,'Qui minima atque minus voluptates. Perspiciatis animi saepe neque. In delectus quis repellendus velit. Ratione error quidem doloremque ducimus doloremque tempora eaque laboriosam. Distinctio corrupti ipsam quod labore minima nam.\nIncidunt fugiat iure nam rerum natus esse. Cum iure earum fugit animi consequatur pariatur. Velit assumenda maxime eaque. Dicta dignissimos optio rem vero nesciunt necessitatibus.\nEarum vel id ipsa itaque placeat. Laboriosam aperiam vero aut. Soluta illum magnam ad reiciendis similique incidunt consequuntur distinctio. Quaerat quos a cum repudiandae veritatis corrupti maiores. Doloremque ea excepturi eaque.',0),('3488ae01-cb9d-40eb-af4c-0d786ff2e04e',8000,'Ab est hic molestiae. Numquam soluta velit provident itaque repellendus impedit incidunt. Omnis id veniam rerum. Rerum tempora dolor deserunt quibusdam aut dicta accusamus quo. Neque animi nostrum sequi. Facilis tenetur enim exercitationem.\nPerferendis saepe expedita unde maiores debitis aut commodi. Ea id animi nobis optio soluta culpa. Facilis fugiat facilis voluptatibus quaerat beatae cumque. Enim sit quas exercitationem dolorum suscipit. Aut totam neque et et quia laudantium. Quos nesciunt itaque.\nTenetur in non reprehenderit. Dolore pariatur similique nam itaque. Magni aliquid perferendis suscipit dicta. Ducimus dolorem repudiandae. Molestiae saepe odit voluptas doloremque repellendus aperiam vero.',1),('3a36e213-0c80-49ee-953e-19655ec070ce',2985,'Eligendi alias cumque rerum inventore qui dolorem. Quo impedit neque perspiciatis rerum nobis ipsam quasi sequi. Tempore perferendis omnis culpa voluptas commodi blanditiis consequatur harum odit. Praesentium asperiores similique ratione accusamus. Omnis sunt vitae corporis eum vitae sequi et at facilis.\nLibero suscipit perferendis. Corrupti nisi temporibus omnis in. Numquam inventore commodi doloremque repellendus perferendis dolorem nam ratione. Aliquam necessitatibus cupiditate.\nQuis laboriosam impedit deleniti repudiandae officiis maiores. Ipsum quia repudiandae dolores nemo quibusdam. Deserunt reiciendis fugiat repellendus cum vitae. Pariatur praesentium nisi blanditiis voluptas nam ipsum omnis soluta voluptatum. Nobis maiores molestias quos magni consectetur non.',0),('64353195-c471-471e-a588-98a458c4b7d9',8724,'Quae est temporibus optio. Suscipit porro delectus iste mollitia maxime temporibus est doloremque repudiandae. Sit aliquam commodi voluptatibus laboriosam consectetur. Sit omnis praesentium autem et ipsum.\nIste corrupti velit. Doloremque aut perferendis dolor dolores laboriosam distinctio. Quod corrupti ullam cumque minima nobis quasi sequi. Blanditiis similique omnis sit sapiente vel placeat laudantium eaque molestiae. Eius amet autem saepe nam eveniet expedita. Voluptatibus incidunt animi tempora occaecati temporibus nesciunt similique cupiditate.\nNecessitatibus sed ex est. Sapiente odit eum illo incidunt. Quod expedita libero amet rem itaque iste vitae autem. Dolor ex accusamus aut.',1),('65505de5-8854-42ff-b301-8ad5d01bc00f',8210,'Sequi rerum labore atque optio. Dignissimos modi atque a sed accusamus. Non impedit illo ducimus itaque ex perferendis.\nEnim eaque at quidem quibusdam. Pariatur molestiae vitae facere provident. Veritatis architecto eum necessitatibus sunt.\nDolorum fugiat totam quas libero earum officiis quas a incidunt. Quidem cupiditate itaque ut consequuntur vel necessitatibus. Ipsam illum quod consequuntur. Aut ullam error.',0),('6dbc11a1-7d3e-449f-9634-909496bccae1',2985,'Sapiente excepturi reprehenderit numquam possimus quibusdam unde ipsum porro. Suscipit nisi a vel non non at. Eum minus sint fugiat earum minus incidunt ad vero porro. Alias adipisci assumenda fugiat dolores amet voluptatum labore itaque nobis. Modi iusto culpa optio asperiores at amet incidunt temporibus.\nIllum sunt excepturi reprehenderit rerum. Fuga doloremque harum ducimus illum id sunt aspernatur eum. Cum officiis cumque recusandae et inventore repellendus. Voluptate magni modi necessitatibus unde illum. Iste aliquam alias.\nEligendi enim debitis sed. Illo dicta laboriosam mollitia asperiores impedit et. Deleniti reiciendis soluta aperiam vero praesentium. Sunt repellendus occaecati. Exercitationem in voluptatem veritatis ratione iure veritatis ipsam alias.',0),('6edc4edd-9eeb-4a02-b040-ce3d8cc08475',6838,'Ex labore dolore unde dolorem cumque itaque dignissimos debitis ea. Earum excepturi nulla illum earum accusantium animi expedita numquam. Molestiae quaerat nulla molestiae.\nLaboriosam nemo facilis. Hic quisquam vel ex. A provident saepe quod praesentium consequatur.\nDolore facere excepturi dicta pariatur vitae qui veniam at repudiandae. Accusamus accusantium nemo nemo labore modi soluta perspiciatis corporis hic. Nisi totam ut architecto cum.',0),('7355',7366,'comentario del usuario 7366',1),('8397fe8f-d1e2-407e-a2a6-7c4c64999b1c',8000,'Deleniti consequuntur illum. Id impedit nihil alias. Delectus eius nisi necessitatibus earum at voluptas sed ut. Consectetur veniam voluptate consequuntur corporis eaque.\nDebitis voluptas aliquid quis quia explicabo velit. Sequi doloribus consequatur officiis debitis eligendi aperiam. Dolorum minus nemo pariatur tempora. Enim soluta sapiente adipisci similique voluptate quis.\nHarum tempora veniam. Excepturi laudantium corrupti tempora quibusdam. In quam nostrum assumenda. Quos odio dolore consequatur tempora eaque vel delectus ullam. In quidem dolorum voluptates. Sunt ipsam facere eligendi minima totam dicta magnam quia dignissimos.',0),('84f705bb-376e-42a1-956a-988e449e36e7',3325,'Veritatis amet soluta sapiente laboriosam deleniti tenetur veniam. Nihil magni officiis fuga perferendis atque vero eaque. Esse praesentium architecto nisi totam consequatur aliquam. Itaque eos ex mollitia doloremque dolores. Voluptatem fugit recusandae odit deleniti.\nPossimus corrupti nisi optio tempore aspernatur. Explicabo earum ducimus perspiciatis omnis error nemo libero. Nesciunt nostrum rerum magnam suscipit ipsa molestias voluptatibus a provident.\nQui eum nam velit distinctio tempora sed voluptate esse. Reprehenderit ipsam dolores illum nam sint nostrum in esse. Non sunt illum natus dolorem exercitationem. Quia aliquid fuga fuga dolorem voluptate eaque ipsum quo repudiandae. Maxime sequi repudiandae occaecati deleniti.',1),('889c4d7d-81f2-4394-ad88-c15b910a597b',3325,'Placeat vitae sequi. Exercitationem iste optio perspiciatis molestias unde dicta possimus. Assumenda officia accusantium at. Similique voluptas ut.\nRepudiandae cupiditate quaerat veritatis corrupti aperiam nisi doloremque. Consequuntur laboriosam maxime magnam facilis temporibus modi quia placeat vitae. Nisi eum soluta. Consequuntur ea eligendi ipsam dicta.\nMagni accusamus nobis nesciunt quidem impedit repudiandae dolores. Consectetur molestias quos saepe laborum illo. Sequi asperiores sequi at. Soluta similique nihil. Officia reiciendis facilis enim.',1),('bb6390a8-720f-4677-8bfd-d4de17e6af81',2985,'Eos doloribus sequi similique ipsum laborum itaque ea illo. Nisi blanditiis doloribus. Fuga nam sunt repudiandae voluptatum minus inventore itaque sequi nihil. Laboriosam voluptas sint debitis. Cum voluptas in pariatur vitae aperiam dolorum necessitatibus molestias corrupti. Labore nesciunt accusamus minima laboriosam commodi.\nEt quas assumenda officia recusandae nostrum earum provident architecto. Officia magnam repellat nesciunt nesciunt unde. Voluptas unde exercitationem delectus. Commodi corrupti quod at ea rem minus fugiat doloribus. Veritatis officiis eveniet officia quas molestias.\nNumquam pariatur excepturi repudiandae omnis. Dolorum beatae aliquid. Iste dolores eos quibusdam fugit necessitatibus culpa. In animi dignissimos. Dicta cumque maiores at dolores in. Quo a quo minus labore.',0),('bfc466c3-ca2c-48a2-a1ef-0b4726b8dcfc',8724,'Nemo repellat delectus unde sint nostrum corrupti quibusdam vel soluta. Voluptatum autem corrupti eos. Laborum maxime fugiat molestiae laudantium. Omnis laboriosam sapiente et sit necessitatibus accusantium ullam dolorum. Ducimus fugit placeat mollitia tempora minima neque ut ab.\nRepellendus incidunt ipsa dolorum debitis natus. Nisi veniam non optio quo quos a. Aliquid modi libero. Accusantium excepturi voluptates voluptatem fugiat exercitationem nam. Provident optio dicta.\nQui fuga earum praesentium. Totam blanditiis tenetur adipisci rem et laboriosam. Similique perferendis laudantium animi.',0),('cd69ad0c-a843-4330-8c2a-7f0ef4ef089d',8724,'Praesentium officiis aliquam eligendi reiciendis vel quae. Deleniti esse molestiae eaque facilis repellendus dolorem. Temporibus pariatur est iste. Illum commodi maxime eos atque aut voluptatum. Necessitatibus excepturi necessitatibus dignissimos ea veritatis facilis. Natus inventore itaque facilis fugiat minus.\nNulla quaerat non beatae earum consequatur esse autem saepe. Tempora nulla dolorem ipsa architecto libero fuga soluta. Magni incidunt illum molestiae.\nUt ut doloremque eius ipsa repellendus eos mollitia officiis. Et et quo necessitatibus autem ex quas voluptate blanditiis. Quisquam aliquid suscipit error excepturi repudiandae quasi. Cupiditate doloribus pariatur sed perferendis eligendi iure at.',0),('dasdsad',7366,'comentario del usuario 7366hgdhgf',0);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03  9:41:14

-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: miranda
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id_customer` int NOT NULL,
  `name` varchar(245) NOT NULL,
  `email` varchar(245) NOT NULL,
  `telephone` varchar(245) NOT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (714,'Ms. Clark Gusikowski III','Kirsten.Walker40@yahoo.com','+40 75 929 09 17'),(776,'Clint Kautzer','Hailey.Hodkiewicz9@hotmail.com','+96 71 299 17 30'),(2985,'Sherman Cronin','Isaac_Emmerich84@yahoo.com','+27 49 649 71 76'),(3325,'Wilfred Mayert','Larissa.Murazik2@yahoo.com','+39 74 344 08 90'),(6838,'Dana Zieme','Xzavier85@gmail.com','+38 65 820 99 54'),(7366,'Deborah Simonis','General99@hotmail.com','+88 29 000 79 64'),(8000,'Constance O\'Keefe','Casimir.Prosacco@gmail.com','+86 24 771 71 85'),(8210,'Eric Christiansen','Nya79@yahoo.com','+00 37 144 06 63'),(8724,'Jodi Yundt','Gussie.Larson@gmail.com','+66 80 803 48 96'),(9615,'Nina McGlynn','Lottie.Kling3@hotmail.com','+80 97 082 81 93');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03  9:41:13

-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: miranda
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `room_status`
--

DROP TABLE IF EXISTS `room_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_status` (
  `id_room_status` int NOT NULL,
  `status` varchar(245) NOT NULL DEFAULT 'Available',
  PRIMARY KEY (`id_room_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_status`
--

LOCK TABLES `room_status` WRITE;
/*!40000 ALTER TABLE `room_status` DISABLE KEYS */;
INSERT INTO `room_status` VALUES (1,'Booked'),(2,'Available');
/*!40000 ALTER TABLE `room_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03  9:41:13

-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: miranda
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_type` (
  `id` int NOT NULL,
  `type` varchar(245) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,'Single Bed'),(2,'Double Bed'),(3,'Double Bed Superior'),(4,'Suite');
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03  9:41:12

-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: miranda
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `rooms_amenities`
--

DROP TABLE IF EXISTS `rooms_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms_amenities` (
  `id_room` int NOT NULL,
  `id_amenity` int NOT NULL,
  KEY `id_amenity_idx` (`id_amenity`),
  KEY `id_room` (`id_room`),
  CONSTRAINT `id_amenity` FOREIGN KEY (`id_amenity`) REFERENCES `amenities` (`idamenities`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_room` FOREIGN KEY (`id_room`) REFERENCES `rooms` (`id_rooms`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms_amenities`
--

LOCK TABLES `rooms_amenities` WRITE;
/*!40000 ALTER TABLE `rooms_amenities` DISABLE KEYS */;
INSERT INTO `rooms_amenities` VALUES (71952,6),(1382659,5),(150512,4),(71952,9),(150512,9);
/*!40000 ALTER TABLE `rooms_amenities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03  9:41:11

-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: miranda
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id_rooms` int NOT NULL,
  `number` int NOT NULL,
  `photos` varchar(245) DEFAULT NULL,
  `price` int NOT NULL,
  `offer` int NOT NULL,
  `idType` int DEFAULT NULL,
  `id_status` int DEFAULT NULL,
  PRIMARY KEY (`id_rooms`),
  KEY `idType_idx` (`idType`),
  KEY `idStatus_idx` (`id_status`),
  CONSTRAINT `id_room_status` FOREIGN KEY (`id_status`) REFERENCES `room_status` (`id_room_status`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idType` FOREIGN KEY (`idType`) REFERENCES `room_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,1001,'link a la photo que se edito',150,0,2,2),(71952,986,'https://images.unsplash.com/photo-1591088398332-8a7791972843?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aG90ZWwlMjByb29tfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=800&q=60',835,8,3,1),(150512,300,'https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWwlMjByb29tfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=800&q=60',361,25,4,2),(418522,387,'https://images.unsplash.com/photo-1591088398332-8a7791972843?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aG90ZWwlMjByb29tfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=800&q=60',764,33,4,2),(819625,1881,'https://images.unsplash.com/photo-1591088398332-8a7791972843?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aG90ZWwlMjByb29tfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=800&q=60',100,27,3,1),(899989,864,'https://images.unsplash.com/photo-1591088398332-8a7791972843?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aG90ZWwlMjByb29tfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=800&q=60',533,37,2,2),(1032556,1245,'https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWwlMjByb29tfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=800&q=60',987,31,2,1),(1382659,480,'https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWwlMjByb29tfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=800&q=60',898,24,1,2),(1893176,966,'https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWwlMjByb29tfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=800&q=60',666,23,1,1);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03  9:41:11

-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: miranda
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `user_status`
--

DROP TABLE IF EXISTS `user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_status` (
  `id_status` int NOT NULL,
  `status` varchar(245) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_status`
--

LOCK TABLES `user_status` WRITE;
/*!40000 ALTER TABLE `user_status` DISABLE KEYS */;
INSERT INTO `user_status` VALUES (1,'Active'),(2,'Inactive');
/*!40000 ALTER TABLE `user_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03  9:41:14

-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: miranda
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL,
  `photo` varchar(245) NOT NULL,
  `email` varchar(245) NOT NULL,
  `start` date NOT NULL,
  `description` varchar(245) NOT NULL,
  `contact` varchar(245) NOT NULL,
  `idStatus` int DEFAULT NULL,
  `password` varchar(245) NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `idStatus_idx` (`idStatus`),
  CONSTRAINT `idStatus` FOREIGN KEY (`idStatus`) REFERENCES `user_status` (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=9361 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (9351,'Teri Kertzmann','https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60','Forest.Pfeffer@hotmail.com','2022-02-20','Cleaning','+73 35 301 29 76',2,'$2b$10$2LJj9OYc2U9FqgwLatQwJuMDm1oSAg9DG/orh/wMdtRkbIPmLawsS'),(9352,'Bruce Corwin Jr.','https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60','Salvatore66@gmail.com','2022-11-02','Receptionist','+56 87 380 11 40',1,'$2b$10$pjTcFwk4NZke9C5.UGDDv..caUYchYQuy1YuCRi2FoppEVyjwt83u'),(9353,'Alvin Bernhard','https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60','Gina.Stanton35@gmail.com','2022-09-24','Security','+66 56 024 54 46',2,'$2b$10$OcB4iAtWV67Cr1xXmkFkJuASjyFAvMVMVG2hcyhc2qJN1FxPYMz2q'),(9354,'Sherry Wunsch II','https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60','Kyla72@yahoo.com','2022-02-16','Tourist Information','+31 78 063 54 74',1,'$2b$10$P6EsN14IVlfk6qvPgPNIRezX/KVQxt.IqEbR17ZNPnf/ZappcOc42'),(9355,'Chelsea Parisian','https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60','Marcelo.Skiles92@hotmail.com','2022-06-22','Security','+71 25 435 02 91',2,'$2b$10$il3rgc5u8bLQFsxO4XzQZezSwqbyPIN3vVi4JhgB0iQuwqbzNueVW'),(9356,'Edith Luettgen','https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60','Wilma_Grimes@gmail.com','2022-04-27','Security','+22 12 277 27 89',1,'$2b$10$4PJL9nhXSTlhR2hsUU6Bge.0.lQN9WKgftQieaHs7Uyb5ItNmSp5S'),(9357,'Todd Parker','https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60','Garret87@yahoo.com','2022-07-27','Security','+33 65 019 79 76',1,'$2b$10$MxbmrZTYGoqFp97Mru97leWfPHVILgl.0Me.651/JOokp5.FjkI/.'),(9358,'Miss Kerry Roob','https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60','Chanel1@yahoo.com','2022-09-19','Cleaning','+19 66 463 68 67',2,'$2b$10$UnpvGeqiU65X8tqeT95/EO/1p44iYSJUoTszy6ErZfjk9bwGlBXSK'),(9359,'Kayla Christiansen DDS','https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60','Hattie79@hotmail.com','2022-09-13','Kitchen','+98 68 317 37 27',2,'$2b$10$DdarLeyi0n0dDNg0TIXdUuNmmSFCNZnp6ua5JUcr0m6/Co1HggrCO'),(9360,'Casey Powlowski','https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60','Odie_Graham0@yahoo.com','2022-02-01','Receptionist','+33 24 546 73 28',1,'$2b$10$LFcoICp5a1yHOsjb/9qP/Oyjw.j7naxO5w5HriVJ1Wzb3LN5jjfa2');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03  9:41:13