-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: new_schema2
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `ms_article`
--

DROP TABLE IF EXISTS `ms_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ms_article` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment_counts` int DEFAULT NULL COMMENT '评论数量',
  `create_date` bigint DEFAULT NULL COMMENT '创建时间',
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '简介',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `view_counts` int DEFAULT NULL COMMENT '浏览数量',
  `weight` int NOT NULL COMMENT '是否置顶',
  `author_id` bigint DEFAULT NULL COMMENT '作者id',
  `body_id` bigint DEFAULT NULL COMMENT '内容id',
  `category_id` bigint DEFAULT NULL COMMENT '类别id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Category_id` (`category_id`) USING BTREE,
  KEY `Body_id` (`body_id`) USING BTREE,
  KEY `Authorid` (`author_id`) USING BTREE,
  CONSTRAINT `Authorid` FOREIGN KEY (`author_id`) REFERENCES `ms_sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Body_id` FOREIGN KEY (`body_id`) REFERENCES `ms_article_body` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Category_id` FOREIGN KEY (`category_id`) REFERENCES `ms_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1516084926579511298 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_article`
--

LOCK TABLES `ms_article` WRITE;
/*!40000 ALTER TABLE `ms_article` DISABLE KEYS */;
INSERT INTO `ms_article` VALUES (1001,2,1649751219622,'Stories about Jay Chou.','Jay Chou',9,0,1,1001,4),(1002,0,1649675043532,'Travel to Paris.','Eiffel Tower',17,0,3,1002,5),(1003,0,1649751024172,'Delicious Pizza!!!','Pizza',4,0,3,1003,1),(1004,0,1649751113782,'MOBA!','League Of Legends',5,0,3,1004,2),(1005,0,1649751124172,'Know more about Taylor Swift.','Taylar Swift',7,0,1,1005,4),(1516084926579511297,1,1650297788662,'Introduction about DC heroes','Hero',23,0,1515966632388263938,1516084926642425858,4);
/*!40000 ALTER TABLE `ms_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_article_body`
--

DROP TABLE IF EXISTS `ms_article_body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ms_article_body` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `content_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `article_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `article_id` (`article_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1516084926642425859 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_article_body`
--

LOCK TABLES `ms_article_body` WRITE;
/*!40000 ALTER TABLE `ms_article_body` DISABLE KEYS */;
INSERT INTO `ms_article_body` VALUES (1001,'Jay Chou was born in Xinbei City, Taiwan Province, and his ancestral home is Yongchun County, Quanzhou City, Fujian Province. When he was 4 years old, his mother, Ye Hui-mei, sent him to tamio Yamaha Kindergarten music class to learn piano. When he was in the second grade of junior high school, his parents divorced due to personality differences, and Jay returned to his mother, Ye Huimei, to raise him. Middle school, did not take an examination of ordinary high school, the same year, because good at piano and was admitted to the first music class danjiang middle school. After graduating from high school, I failed to get into the music department of Taipei University twice, so I started working in a restaurant.\nIn September 1997, encouraged by his mother, Jay signed up for the Taipei Starlight TV entertainment show \"Super Newcomer\" and invited people to sing his own song \"Dreams Have Wings\". When host Wu Zongxian saw the score of the song, he invited Chou to work as a music assistant at Alfa Music Company. In 1998, she composed the song \"Tears Know\", which the company gave to Andy Lau and was rejected. Her songs \"Nunchucks\" and \"Ninja\" (later included in Jay Chou\'s album \"Fantexi\") were also rejected.','<p></p>\n',1001),(1002,'The Eiffel Tower (French: La Tour Eiffel; The Eiffel Tower, which stands on the Champ-de-Mars in Paris, France, beside the Seine river, was commissioned by the French government for the construction of the 1889 World\'s Fair to celebrate the 100th anniversary of the Victory of the French Revolution. Construction began on January 26, 1887 and was completed on March 31, 1889, making it the tallest building in the world at that time.\n\nThe Eiffel Tower was originally 312 meters high and is now 330 meters high. The first floor is 57 meters high and covers an area of 4,415 square meters, the second floor is 115 meters high and covers an area of 1,430 square meters, and the third floor is 276 meters high and covers an area of 250 square meters. There are five lifts from the square to the second floor and two double lifts from the second floor to the top floor. The tower has five areas: square, first floor, second floor, top floor and garden. It receives 7 million visitors every year.\n\nThe structure of the Eiffel Tower is both intuitive and simple: at its base are four giant angular inclined columns (54°) on a long base of 128 meters on each side, supported by the first platform at 55 meters; There are four slightly curved angular columns connecting the first platform and the second platform with an elevation of 115 meters; Up into a slender, almost vertical, 189-meter-tall, rigid obelisk that leads to the top platform; The platform was topped by a small arching roof and a flagpole (now a television antenna). The slight curvature of the angular columns between the first and second platforms enhances the feeling of the tower soaring into the sky. All columns and obelisks are constructed with a network of X - shaped wind-bracing trusses. The whole tower has four solid caisson foundations that reach down into the recanting soil.','<p></p>\n',1002),(1003,'Pizza, also known as Italian pie, is a kind of food originated in Italy, in the world quite popular. Pizza is usually made of fermented pita covered with tomato sauce, cheese and other toppings and baked in an oven.\n\nCheese is usually made with mozzarella, but can also be mixed with several cheeses, including Parmesan, Romano, Ricotta or Monterey Jack, mozzarella, etc.\n\nPizza is derived from bread, which occupies an important position as a staple food in western history. It is not constant over time, but by adding different ingredients to better meet people\'s needs and hobbies. Historians have found a similar transition from bread to pizza 3,000 years ago in Sardinia, Italy. In ancient Greece, pancakes πλακοῦς (plakous, and πλακοῦντος - plakountos) were topped with spices like garlic and scallions. Then there were the Persians, a king named Dario Il Grande (521-486 a.C.) who used stones to bake a kind of \'flat bread\' with cheese added. The earliest transients also appear in the western poem Eneide. They are usually called \"focaccia\" (meaning roasted with fire), the Western \"coca\" (suitable for both salty and sweet), the Greek and Italian \"pita\" or the Turkish \"pide\", And the Piadina of Romagna. And then there are other countries that have similar foods. As time goes by, the language changes as pita/pitta becomes pizza, and the ingredients are no longer limited to the original. The innovation of pizza came from the addition of tomatoes (there was also a fish, which replaced the tomato). Naples was the first city to introduce this change, and it is arguably the birthplace of modern pizza. But it was a Neapolitan chef who finally introduced pizza to the world in 1889 with pizza Margherita, a tricolor pizza named after Queen Savoia. According to statistics, there are more than 20,000 pizza restaurants in Italy, including 1,200 in the Naples area. Most Neapolitans eat at least one pizza a week, and some eat it almost every day for lunch and dinner. Diners, rich and poor alike, are used to folding up their pizzas and eating them in their hands. This has become one of the basis for identifying the merits of pizza handwork. The pizza has to be just the right amount of stiffness, so that even when folded \"like a wallet,\" the outside won\'t crack.','<p>Delicious</p>\n',1003),(1004,'League of Legends (LOL) is an online MOBA game developed by Riot Games in the US and operated by Tencent\'s game agency in China. The game has hundreds of character heroes and features such as a ranking system and runes system.\n\n\"Hero alliance\" is committed to promoting the development of the global esports, in addition to the linkage of each division to develop professional league, build system of e-sports, every year will hold \"hero league season in the championship,\" \"hero alliance global finals\" \"hero league all-star game\" three world-class competition, formed its own unique electronic sports culture.\n\nSurrounded by treacherous seas, the allied provinces formed Ionia in a vast archipelago known as the \"Newborn Land\". The search for balance has long been a cultural staple here, so the boundary between the physical and the spiritual is also blurred here, especially in the wild forests and mountains.\n\nAlthough the magic of this land can be fickle and the creatures that inhabit it can be dangerous and magical, the people of Ionia have lived a prosperous life for the past hundreds of years. The monasteries, the militia regiments of the provinces, and even ionia itself were sufficient to protect the inhabitants.\n\nBut that all came to an end twelve years ago, for that was the year when Knoxus attacked the Birth Land. The empire raged in Ionia as far as the eye could see, and it took many years of hard fighting for ionians to defeat the enemy at great cost.\n\nIonia is now in a fragile peace. Different responses to the war divided the land -- some groups, like the Shoji monks and the Balaji sect, wanted to return to the peaceful and pastoral traditions of isolation. Other more radical factions, such as the Brotherhood of Navoli and The Shadow Stream, advocated the militarization of the magic of the land and the creation of a unified state strong enough to retaliate against Knoxus.\n\nIonia\'s fate hangs in a delicate balance. Few want to tip either way, but all can feel the ground shaking beneath their feet.','<p>123123</p>\n',1004),(1005,'As a child, Taylor Swift lived on an 11-acre Christmas tree farm in Wyoming, Pennsylvania. When she was 10, she wrote a three-page poem, \"The Monster in My Closet,\" that won an American Poetry contest. In the same year, he began to perform in Philadelphia and surrounding areas. At the age of 11, he took the stage to sing the National anthem before an NBA team\'s Philadelphia 76ers game. It was watching Faith Hill on TV in 2001 that inspired her to become a country singer and move to Nashville. After learning chords, she wrote her first song, Lucky You. In the same year, I drove to Nashville with my family and went to Music Street, where there were many record companies, and sent original music demos to the front desk of each record company.\nTaylor Swift\'s parents moved to Nashville to help their daughter pursue her music dreams. In 2003, after showcasing original songs for RCA Records in the US, Taylor Swift was offered a contract and began her music writing career. But Taylor Swift, 15, couldn\'t handle waiting three years to release her records and left the label. Taylor Swift later caught the eye of Scott Borchetta while performing at The Bluebird Cafe, a Nashville songwriters\' rendezvous, and became the first artist to sign to his Big Machine label.','<p><p>',1005),(1516084926642425858,'# Introduction\n## 1. The Flash\n***The Flash*** is an American science fiction television series co-produced by DC Entertainment and Warner Bros. Television. Greg Berlanti, Andrew Kreisberg and Goff Johns produced The series. David Nath directed The first episode. It stars Grant Gustin, Candace Parton, Jesse Martin, Tom Gavana, Carlos Valdes, Michelle Harrison, Danielle Panabek and more. Arrow is a spin-off from DC Comics of the same name.\nThe story tells the story of Barry Allen, who is struck by lightning during a particle accelerator explosion and gains the ability to move at extreme speed. With the help of the lab, the flash is a superhero fighting crime. [1]\nSeason 1 premiered on October 7, 2014 on the CW, Season 2 on October 6, 2015, Season 3 on October 4, 2016, Season 4 on October 10, 2017, Season 5 on October 9, 2018, Season 6 on October 8, 2019, Season 7 premiered on March 2, 2021, followed by Season 8 on November 16, 2021.\n![The Flash](https://pics0.baidu.com/feed/f3d3572c11dfa9ec0f100d98e2224107908fc17e.jpeg?token=963884f96ba7e9a37786487e6b7b1171&s=50c5b144feab92550050009d0300508b)\n## 2. Superman\n==++Superman++== is a superhero of DC Comics, the first superhero in the history of American comic books. He first appeared in the first issue of Action Comics (June 1938). Co-created by Jerry Siegel and Joe Shuste.\nSuperman was born kal-El in Krypton. When Krypton was about to be destroyed, his parents sent Carl to Earth in a spaceship as an infant. When the ship crashed in Smallville, Kansas, Carl was found by a farmer and his wife, Clark Kent, and raised as Clark Kent on Earth.\nAs an adult, Clark moved to Metropolis to work as a reporter for the Daily Planet. He has innate super ability and extremely strong sense of justice and compassion, every time in crisis, wearing blue tights, put on red cloak, incarnation of superman chivalrous, save the world.\n![Superman](https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.wohaoyun.com%2Fimg%2FM00%2F02%2FB7%2FwKjg2lvFm-OAWrV6AAEb4fR1Neg825.jpg&refer=http%3A%2F%2Fimg.wohaoyun.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1652888817&t=d4bdf642a092ca1217aff2d7459b51ac)','<h1><a id=\"Introduction_0\"></a>Introduction</h1>\n<h2><a id=\"1_The_Flash_1\"></a>1. The Flash</h2>\n<p><em><strong>The Flash</strong></em> is an American science fiction television series co-produced by DC Entertainment and Warner Bros. Television. Greg Berlanti, Andrew Kreisberg and Goff Johns produced The series. David Nath directed The first episode. It stars Grant Gustin, Candace Parton, Jesse Martin, Tom Gavana, Carlos Valdes, Michelle Harrison, Danielle Panabek and more. Arrow is a spin-off from DC Comics of the same name.<br />\nThe story tells the story of Barry Allen, who is struck by lightning during a particle accelerator explosion and gains the ability to move at extreme speed. With the help of the lab, the flash is a superhero fighting crime. [1]<br />\nSeason 1 premiered on October 7, 2014 on the CW, Season 2 on October 6, 2015, Season 3 on October 4, 2016, Season 4 on October 10, 2017, Season 5 on October 9, 2018, Season 6 on October 8, 2019, Season 7 premiered on March 2, 2021, followed by Season 8 on November 16, 2021.<br />\n<img src=\"https://pics0.baidu.com/feed/f3d3572c11dfa9ec0f100d98e2224107908fc17e.jpeg?token=963884f96ba7e9a37786487e6b7b1171&amp;s=50c5b144feab92550050009d0300508b\" alt=\"The Flash\" /></p>\n<h2><a id=\"2_Superman_6\"></a>2. Superman</h2>\n<p><mark><ins>Superman</ins></mark> is a superhero of DC Comics, the first superhero in the history of American comic books. He first appeared in the first issue of Action Comics (June 1938). Co-created by Jerry Siegel and Joe Shuste.<br />\nSuperman was born kal-El in Krypton. When Krypton was about to be destroyed, his parents sent Carl to Earth in a spaceship as an infant. When the ship crashed in Smallville, Kansas, Carl was found by a farmer and his wife, Clark Kent, and raised as Clark Kent on Earth.<br />\nAs an adult, Clark moved to Metropolis to work as a reporter for the Daily Planet. He has innate super ability and extremely strong sense of justice and compassion, every time in crisis, wearing blue tights, put on red cloak, incarnation of superman chivalrous, save the world.<br />\n<img src=\"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.wohaoyun.com%2Fimg%2FM00%2F02%2FB7%2FwKjg2lvFm-OAWrV6AAEb4fR1Neg825.jpg&amp;refer=http%3A%2F%2Fimg.wohaoyun.com&amp;app=2002&amp;size=f9999,10000&amp;q=a80&amp;n=0&amp;g=0n&amp;fmt=auto?sec=1652888817&amp;t=d4bdf642a092ca1217aff2d7459b51ac\" alt=\"Superman\" /></p>\n',1516084926579511297);
/*!40000 ALTER TABLE `ms_article_body` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_article_tag`
--

DROP TABLE IF EXISTS `ms_article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ms_article_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `article_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `article_id` (`article_id`) USING BTREE,
  KEY `tag_id` (`tag_id`) USING BTREE,
  CONSTRAINT `Articless` FOREIGN KEY (`article_id`) REFERENCES `ms_article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Tag` FOREIGN KEY (`tag_id`) REFERENCES `ms_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1516084926642425858 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_article_tag`
--

LOCK TABLES `ms_article_tag` WRITE;
/*!40000 ALTER TABLE `ms_article_tag` DISABLE KEYS */;
INSERT INTO `ms_article_tag` VALUES (1,1001,9),(2,1001,11),(3,1002,12),(4,1002,13),(5,1002,14),(6,1003,1),(7,1003,2),(8,1004,3),(9,1005,9),(10,1005,11),(1516084926642425857,1516084926579511297,15);
/*!40000 ALTER TABLE `ms_article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_category`
--

DROP TABLE IF EXISTS `ms_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ms_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_category`
--

LOCK TABLES `ms_category` WRITE;
/*!40000 ALTER TABLE `ms_category` DISABLE KEYS */;
INSERT INTO `ms_category` VALUES (1,'/static/category/cooking.jpg','Cooking','Share knowledge about food.'),(2,'/static/category/sport.jpg','Sport','All kinds of sports.'),(3,'/static/category/life.jpg','Life','Share the good things in your life.'),(4,'/static/category/art.jpg','Art','Art comes from life.'),(5,'/static/category/travel.jpg','Travel','Find a good place to travel.');
/*!40000 ALTER TABLE `ms_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_comment`
--

DROP TABLE IF EXISTS `ms_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ms_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` bigint NOT NULL,
  `article_id` bigint NOT NULL,
  `author_id` bigint NOT NULL,
  `parent_id` bigint NOT NULL,
  `to_uid` bigint NOT NULL,
  `level` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `article_id` (`article_id`) USING BTREE,
  KEY `Author` (`author_id`) USING BTREE,
  CONSTRAINT `Article` FOREIGN KEY (`article_id`) REFERENCES `ms_article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Author` FOREIGN KEY (`author_id`) REFERENCES `ms_sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1523272106238361603 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_comment`
--

LOCK TABLES `ms_comment` WRITE;
/*!40000 ALTER TABLE `ms_comment` DISABLE KEYS */;
INSERT INTO `ms_comment` VALUES (1523270840108007425,'cool?!',1652011043953,1516084926579511297,1523271107079651329,0,0,'1'),(1523271334280904706,'This is really well done!?',1652011161764,1001,1515966632388263938,0,0,'1'),(1523272106238361602,'Perfect!',1652011345810,1001,1523271107079651329,0,0,'1');
/*!40000 ALTER TABLE `ms_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_permission`
--

DROP TABLE IF EXISTS `ms_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ms_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_permission`
--

LOCK TABLES `ms_permission` WRITE;
/*!40000 ALTER TABLE `ms_permission` DISABLE KEYS */;
INSERT INTO `ms_permission` VALUES (1,'查询权限列表','/admin/permission/permissionList','查询权限列表'),(2,'11','11','111'),(7,'1213','123','123'),(8,'删除权限','/admin/permission/add','删除权限');
/*!40000 ALTER TABLE `ms_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_sys_log`
--

DROP TABLE IF EXISTS `ms_sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ms_sys_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` bigint DEFAULT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `module` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `time` bigint DEFAULT NULL,
  `userid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_sys_log`
--

LOCK TABLES `ms_sys_log` WRITE;
/*!40000 ALTER TABLE `ms_sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_sys_user`
--

DROP TABLE IF EXISTS `ms_sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ms_sys_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `admin` bit(1) DEFAULT NULL COMMENT '是否管理员',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `create_date` bigint DEFAULT NULL COMMENT '注册时间',
  `deleted` bit(1) DEFAULT NULL COMMENT '是否删除',
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `last_login` bigint DEFAULT NULL COMMENT '最后登录时间',
  `mobile_phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '加密盐',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1523271107079651330 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_sys_user`
--

LOCK TABLES `ms_sys_user` WRITE;
/*!40000 ALTER TABLE `ms_sys_user` DISABLE KEYS */;
INSERT INTO `ms_sys_user` VALUES (1,'admin',_binary '','http://localhost:8080/static/img/logo.b3a48c0.png',20210622223122,_binary '\0','11',20210630223130,'12','李四','15f08f86435b060236fa9ccea751e9e5','12','1'),(2,'lisi',_binary '','/static/img/logo.b3a48c0.png',1623681025218,_binary '\0','',1623681025218,NULL,'李四','1d01d52c40f4ff57ad3f93a06daf21d5','',''),(3,'xjtlu',_binary '','',1649675028262,_binary '\0','',1649675028262,NULL,'xjtlu','10855daa04ccff48f1dc9d53d07eebe6','',''),(1404448463944462338,'12213',_binary '','/static/img/logo.b3a48c0.png',1623681581855,_binary '\0','',1623681581855,NULL,'123','8628d1f407f72e10ac947a032fe5ad29','',''),(1404448588146192386,'123',_binary '','/static/img/logo.b3a48c0.png',1623681611474,_binary '\0','',1623681611474,NULL,'123','5e112646dbf3570f8e23d0cf1027ede1','',''),(1515966632388263938,'user',_binary '','',1650269585126,_binary '\0','',1650269585126,NULL,'user','d41433c60fbdd593ce7d2878e179e2d9','',''),(1523271107079651329,'xjtluer',_binary '','',1652011107601,_binary '\0','',1652011107601,NULL,'xjtluer','d41433c60fbdd593ce7d2878e179e2d9','','');
/*!40000 ALTER TABLE `ms_sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_tag`
--

DROP TABLE IF EXISTS `ms_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ms_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_tag`
--

LOCK TABLES `ms_tag` WRITE;
/*!40000 ALTER TABLE `ms_tag` DISABLE KEYS */;
INSERT INTO `ms_tag` VALUES (1,'/static/tag/food.jpg','Food'),(2,'/static/tag/recipe.jpg','Recipe'),(3,'/static/tag/e-sports.jpg','E-sports'),(4,'/static/tag/ball game.jpg','Ball game'),(5,'/static/tag/athletics.jpg','Athletics'),(6,'/static/tag/other sports.jpg','Other sports'),(7,'/static/tag/daily life.jpg','Daily life'),(8,'/static/tag/ootd.jpg','OOTD'),(9,'/static/tag/music.jpg','Music'),(10,'/static/tag/fine arts.jpg','Fine arts'),(11,'/static/tag/artist.jpg','Artist'),(12,'/static/tag/tourist attraction.jpg','Tourist attraction'),(13,'/static/tag/travel strategy.jpg','Travel strategy'),(14,'/static/tag/scenic spot introduction.jpg','Scenic spot introduction'),(15,'/static/tag/movie.jpg','Movie');
/*!40000 ALTER TABLE `ms_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'new_schema2'
--

--
-- Dumping routines for database 'new_schema2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-08 20:03:07
